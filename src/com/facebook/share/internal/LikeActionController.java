package com.facebook.share.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.AccessToken;
import com.facebook.AccessTokenTracker;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphRequest.Callback;
import com.facebook.GraphRequestBatch;
import com.facebook.GraphRequestBatch.Callback;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.LoggingBehavior;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AppCall;
import com.facebook.internal.BundleJSONConverter;
import com.facebook.internal.CallbackManagerImpl.Callback;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.PlatformServiceClient.CompletedListener;
import com.facebook.internal.Utility;
import com.facebook.internal.WorkQueue;
import com.facebook.share.widget.LikeView.ObjectType;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class LikeActionController
{
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR = "com.facebook.sdk.LikeActionController.DID_ERROR";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_DID_RESET = "com.facebook.sdk.LikeActionController.DID_RESET";
  public static final String ACTION_LIKE_ACTION_CONTROLLER_UPDATED = "com.facebook.sdk.LikeActionController.UPDATED";
  public static final String ACTION_OBJECT_ID_KEY = "com.facebook.sdk.LikeActionController.OBJECT_ID";
  private static final int ERROR_CODE_OBJECT_ALREADY_LIKED = 3501;
  public static final String ERROR_INVALID_OBJECT_ID = "Invalid Object Id";
  public static final String ERROR_PUBLISH_ERROR = "Unable to publish the like/unlike action";
  private static final String JSON_BOOL_IS_OBJECT_LIKED_KEY = "is_object_liked";
  private static final String JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE = "facebook_dialog_analytics_bundle";
  private static final String JSON_INT_OBJECT_TYPE_KEY = "object_type";
  private static final String JSON_INT_VERSION_KEY = "com.facebook.share.internal.LikeActionController.version";
  private static final String JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY = "like_count_string_without_like";
  private static final String JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY = "like_count_string_with_like";
  private static final String JSON_STRING_OBJECT_ID_KEY = "object_id";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY = "social_sentence_without_like";
  private static final String JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY = "social_sentence_with_like";
  private static final String JSON_STRING_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final String LIKE_ACTION_CONTROLLER_STORE = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY";
  private static final String LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY = "OBJECT_SUFFIX";
  private static final String LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY = "PENDING_CONTROLLER_KEY";
  private static final int LIKE_ACTION_CONTROLLER_VERSION = 3;
  private static final String LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY = "like_count_string";
  private static final String LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY = "object_is_liked";
  private static final String LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY = "social_sentence";
  private static final String LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY = "unlike_token";
  private static final int MAX_CACHE_SIZE = 128;
  private static final int MAX_OBJECT_SUFFIX = 1000;
  private static final String TAG = LikeActionController.class.getSimpleName();
  private static AccessTokenTracker accessTokenTracker;
  private static final ConcurrentHashMap<String, LikeActionController> cache = new ConcurrentHashMap();
  private static FileLruCache controllerDiskCache;
  private static WorkQueue diskIOWorkQueue = new WorkQueue(1);
  private static Handler handler;
  private static boolean isInitialized;
  private static WorkQueue mruCacheWorkQueue = new WorkQueue(1);
  private static String objectIdForPendingController;
  private static volatile int objectSuffix;
  private AppEventsLogger appEventsLogger;
  private Bundle facebookDialogAnalyticsBundle;
  private boolean isObjectLiked;
  private boolean isObjectLikedOnServer;
  private boolean isPendingLikeOrUnlike;
  private String likeCountStringWithLike;
  private String likeCountStringWithoutLike;
  private String objectId;
  private boolean objectIsPage;
  private LikeView.ObjectType objectType;
  private String socialSentenceWithLike;
  private String socialSentenceWithoutLike;
  private String unlikeToken;
  private String verifiedObjectId;
  
  private LikeActionController(String paramString, LikeView.ObjectType paramObjectType)
  {
    objectId = paramString;
    objectType = paramObjectType;
  }
  
  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString)
  {
    broadcastAction(paramLikeActionController, paramString, null);
  }
  
  private static void broadcastAction(LikeActionController paramLikeActionController, String paramString, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramString);
    paramString = paramBundle;
    if (paramLikeActionController != null)
    {
      paramString = paramBundle;
      if (paramBundle == null) {
        paramString = new Bundle();
      }
      paramString.putString("com.facebook.sdk.LikeActionController.OBJECT_ID", paramLikeActionController.getObjectId());
    }
    if (paramString != null) {
      localIntent.putExtras(paramString);
    }
    LocalBroadcastManager.getInstance(FacebookSdk.getApplicationContext()).sendBroadcast(localIntent);
  }
  
  private boolean canUseOGPublish()
  {
    AccessToken localAccessToken = AccessToken.getCurrentAccessToken();
    return (!objectIsPage) && (verifiedObjectId != null) && (localAccessToken != null) && (localAccessToken.getPermissions() != null) && (localAccessToken.getPermissions().contains("publish_actions"));
  }
  
  private void clearState()
  {
    facebookDialogAnalyticsBundle = null;
    storeObjectIdForPendingController(null);
  }
  
  private static void createControllerForObjectIdAndType(String paramString, LikeView.ObjectType paramObjectType, CreationCallback paramCreationCallback)
  {
    Object localObject = getControllerFromInMemoryCache(paramString);
    if (localObject != null)
    {
      verifyControllerAndInvokeCallback((LikeActionController)localObject, paramObjectType, paramCreationCallback);
      return;
    }
    LikeActionController localLikeActionController = deserializeFromDiskSynchronously(paramString);
    localObject = localLikeActionController;
    if (localLikeActionController == null)
    {
      localObject = new LikeActionController(paramString, paramObjectType);
      serializeToDiskAsync((LikeActionController)localObject);
    }
    putControllerInMemoryCache(paramString, (LikeActionController)localObject);
    handler.post(new Runnable()
    {
      public final void run()
      {
        val$controllerToRefresh.refreshStatusAsync();
      }
    });
    invokeCallbackWithController(paramCreationCallback, (LikeActionController)localObject, null);
  }
  
  /* Error */
  private static LikeActionController deserializeFromDiskSynchronously(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 4
    //   5: aload_0
    //   6: invokestatic 428	com/facebook/share/internal/LikeActionController:getCacheKeyForObjectId	(Ljava/lang/String;)Ljava/lang/String;
    //   9: astore_0
    //   10: getstatic 315	com/facebook/share/internal/LikeActionController:controllerDiskCache	Lcom/facebook/internal/FileLruCache;
    //   13: aload_0
    //   14: invokevirtual 434	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_0
    //   18: aload 4
    //   20: astore_2
    //   21: aload_0
    //   22: ifnull +32 -> 54
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: invokestatic 440	com/facebook/internal/Utility:readStreamToString	(Ljava/io/InputStream;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: astore_2
    //   36: aload_0
    //   37: astore_1
    //   38: aload 5
    //   40: invokestatic 444	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   43: ifne +11 -> 54
    //   46: aload_0
    //   47: astore_1
    //   48: aload 5
    //   50: invokestatic 447	com/facebook/share/internal/LikeActionController:deserializeFromJson	(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    //   53: astore_2
    //   54: aload_2
    //   55: astore_1
    //   56: aload_0
    //   57: ifnull +9 -> 66
    //   60: aload_0
    //   61: invokestatic 451	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   64: aload_2
    //   65: astore_1
    //   66: aload_1
    //   67: areturn
    //   68: astore_2
    //   69: aconst_null
    //   70: astore_0
    //   71: aload_0
    //   72: astore_1
    //   73: getstatic 189	com/facebook/share/internal/LikeActionController:TAG	Ljava/lang/String;
    //   76: ldc_w 453
    //   79: aload_2
    //   80: invokestatic 459	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   83: pop
    //   84: aload_3
    //   85: astore_1
    //   86: aload_0
    //   87: ifnull -21 -> 66
    //   90: aload_0
    //   91: invokestatic 451	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   94: aconst_null
    //   95: areturn
    //   96: astore_0
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: ifnull +7 -> 107
    //   103: aload_1
    //   104: invokestatic 451	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   107: aload_0
    //   108: athrow
    //   109: astore_0
    //   110: goto -11 -> 99
    //   113: astore_2
    //   114: goto -43 -> 71
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramString	String
    //   26	78	1	localObject1	Object
    //   20	45	2	localObject2	Object
    //   68	12	2	localIOException1	IOException
    //   113	1	2	localIOException2	IOException
    //   1	84	3	localObject3	Object
    //   3	31	4	localObject4	Object
    //   31	18	5	str	String
    // Exception table:
    //   from	to	target	type
    //   5	18	68	java/io/IOException
    //   5	18	96	finally
    //   27	33	109	finally
    //   38	46	109	finally
    //   48	54	109	finally
    //   73	84	109	finally
    //   27	33	113	java/io/IOException
    //   38	46	113	java/io/IOException
    //   48	54	113	java/io/IOException
  }
  
  private static LikeActionController deserializeFromJson(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.optInt("com.facebook.share.internal.LikeActionController.version", -1) != 3) {
        return null;
      }
      LikeActionController localLikeActionController = new LikeActionController(paramString.getString("object_id"), LikeView.ObjectType.fromInt(paramString.optInt("object_type", LikeView.ObjectType.UNKNOWN.getValue())));
      likeCountStringWithLike = paramString.optString("like_count_string_with_like", null);
      likeCountStringWithoutLike = paramString.optString("like_count_string_without_like", null);
      socialSentenceWithLike = paramString.optString("social_sentence_with_like", null);
      socialSentenceWithoutLike = paramString.optString("social_sentence_without_like", null);
      isObjectLiked = paramString.optBoolean("is_object_liked");
      unlikeToken = paramString.optString("unlike_token", null);
      JSONObject localJSONObject = paramString.optJSONObject("facebook_dialog_analytics_bundle");
      paramString = localLikeActionController;
      if (localJSONObject != null)
      {
        facebookDialogAnalyticsBundle = BundleJSONConverter.convertToBundle(localJSONObject);
        paramString = localLikeActionController;
      }
    }
    catch (JSONException paramString)
    {
      for (;;)
      {
        Log.e(TAG, "Unable to deserialize controller from JSON", paramString);
        paramString = null;
      }
    }
    return paramString;
  }
  
  private void fetchVerifiedObjectId(final RequestCompletionCallback paramRequestCompletionCallback)
  {
    if (!Utility.isNullOrEmpty(verifiedObjectId))
    {
      if (paramRequestCompletionCallback != null) {
        paramRequestCompletionCallback.onComplete();
      }
      return;
    }
    final GetOGObjectIdRequestWrapper localGetOGObjectIdRequestWrapper = new GetOGObjectIdRequestWrapper(objectId, objectType);
    final GetPageIdRequestWrapper localGetPageIdRequestWrapper = new GetPageIdRequestWrapper(objectId, objectType);
    GraphRequestBatch localGraphRequestBatch = new GraphRequestBatch();
    localGetOGObjectIdRequestWrapper.addToBatch(localGraphRequestBatch);
    localGetPageIdRequestWrapper.addToBatch(localGraphRequestBatch);
    localGraphRequestBatch.addCallback(new GraphRequestBatch.Callback()
    {
      public void onBatchCompleted(GraphRequestBatch paramAnonymousGraphRequestBatch)
      {
        LikeActionController.access$1602(LikeActionController.this, localGetOGObjectIdRequestWrapperverifiedObjectId);
        if (Utility.isNullOrEmpty(verifiedObjectId))
        {
          LikeActionController.access$1602(LikeActionController.this, localGetPageIdRequestWrapperverifiedObjectId);
          LikeActionController.access$2302(LikeActionController.this, localGetPageIdRequestWrapperobjectIsPage);
        }
        LikeActionController localLikeActionController;
        if (Utility.isNullOrEmpty(verifiedObjectId))
        {
          Logger.log(LoggingBehavior.DEVELOPER_ERRORS, LikeActionController.TAG, "Unable to verify the FB id for '%s'. Verify that it is a valid FB object or page", new Object[] { objectId });
          localLikeActionController = LikeActionController.this;
          if (localGetPageIdRequestWrappererror == null) {
            break label143;
          }
        }
        label143:
        for (paramAnonymousGraphRequestBatch = localGetPageIdRequestWrappererror;; paramAnonymousGraphRequestBatch = localGetOGObjectIdRequestWrappererror)
        {
          localLikeActionController.logAppEventForError("get_verified_id", paramAnonymousGraphRequestBatch);
          if (paramRequestCompletionCallback != null) {
            paramRequestCompletionCallback.onComplete();
          }
          return;
        }
      }
    });
    localGraphRequestBatch.executeAsync();
  }
  
  private AppEventsLogger getAppEventsLogger()
  {
    if (appEventsLogger == null) {
      appEventsLogger = AppEventsLogger.newLogger(FacebookSdk.getApplicationContext());
    }
    return appEventsLogger;
  }
  
  private static String getCacheKeyForObjectId(String paramString)
  {
    String str = null;
    Object localObject = AccessToken.getCurrentAccessToken();
    if (localObject != null) {
      str = ((AccessToken)localObject).getToken();
    }
    localObject = str;
    if (str != null) {
      localObject = Utility.md5hash(str);
    }
    return String.format(Locale.ROOT, "%s|%s|com.fb.sdk.like|%d", new Object[] { paramString, Utility.coerceValueIfNullOrEmpty((String)localObject, ""), Integer.valueOf(objectSuffix) });
  }
  
  public static void getControllerForObjectId(String paramString, LikeView.ObjectType paramObjectType, CreationCallback paramCreationCallback)
  {
    if (!isInitialized) {
      performFirstInitialize();
    }
    LikeActionController localLikeActionController = getControllerFromInMemoryCache(paramString);
    if (localLikeActionController != null)
    {
      verifyControllerAndInvokeCallback(localLikeActionController, paramObjectType, paramCreationCallback);
      return;
    }
    diskIOWorkQueue.addActiveWorkItem(new CreateLikeActionControllerWorkItem(paramString, paramObjectType, paramCreationCallback));
  }
  
  private static LikeActionController getControllerFromInMemoryCache(String paramString)
  {
    paramString = getCacheKeyForObjectId(paramString);
    LikeActionController localLikeActionController = (LikeActionController)cache.get(paramString);
    if (localLikeActionController != null) {
      mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(paramString, false));
    }
    return localLikeActionController;
  }
  
  private ResultProcessor getResultProcessor(final Bundle paramBundle)
  {
    new ResultProcessor(null)
    {
      public void onCancel(AppCall paramAnonymousAppCall)
      {
        onError(paramAnonymousAppCall, new FacebookOperationCanceledException());
      }
      
      public void onError(AppCall paramAnonymousAppCall, FacebookException paramAnonymousFacebookException)
      {
        Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Like Dialog failed with error : %s", new Object[] { paramAnonymousFacebookException });
        if (paramBundle == null) {}
        for (Bundle localBundle = new Bundle();; localBundle = paramBundle)
        {
          localBundle.putString("call_id", paramAnonymousAppCall.getCallId().toString());
          LikeActionController.this.logAppEventForError("present_dialog", localBundle);
          LikeActionController.broadcastAction(LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", NativeProtocol.createBundleForException(paramAnonymousFacebookException));
          return;
        }
      }
      
      public void onSuccess(AppCall paramAnonymousAppCall, Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("object_is_liked"))) {
          return;
        }
        boolean bool = paramAnonymousBundle.getBoolean("object_is_liked");
        Object localObject1 = likeCountStringWithLike;
        String str1 = likeCountStringWithoutLike;
        if (paramAnonymousBundle.containsKey("like_count_string"))
        {
          str1 = paramAnonymousBundle.getString("like_count_string");
          localObject1 = str1;
        }
        Object localObject2 = socialSentenceWithLike;
        String str2 = socialSentenceWithoutLike;
        if (paramAnonymousBundle.containsKey("social_sentence"))
        {
          str2 = paramAnonymousBundle.getString("social_sentence");
          localObject2 = str2;
        }
        if (paramAnonymousBundle.containsKey("object_is_liked"))
        {
          paramAnonymousBundle = paramAnonymousBundle.getString("unlike_token");
          if (paramBundle != null) {
            break label189;
          }
        }
        label189:
        for (Bundle localBundle = new Bundle();; localBundle = paramBundle)
        {
          localBundle.putString("call_id", paramAnonymousAppCall.getCallId().toString());
          LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_dialog_did_succeed", null, localBundle);
          LikeActionController.this.updateState(bool, (String)localObject1, str1, (String)localObject2, str2, paramAnonymousBundle);
          return;
          paramAnonymousBundle = unlikeToken;
          break;
        }
      }
    };
  }
  
  public static boolean handleOnActivityResult(int paramInt1, final int paramInt2, final Intent paramIntent)
  {
    if (Utility.isNullOrEmpty(objectIdForPendingController)) {
      objectIdForPendingController = FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).getString("PENDING_CONTROLLER_KEY", null);
    }
    if (Utility.isNullOrEmpty(objectIdForPendingController)) {
      return false;
    }
    getControllerForObjectId(objectIdForPendingController, LikeView.ObjectType.UNKNOWN, new CreationCallback()
    {
      public final void onComplete(LikeActionController paramAnonymousLikeActionController, FacebookException paramAnonymousFacebookException)
      {
        if (paramAnonymousFacebookException == null)
        {
          paramAnonymousLikeActionController.onActivityResult(val$requestCode, paramInt2, paramIntent);
          return;
        }
        Utility.logd(LikeActionController.TAG, paramAnonymousFacebookException);
      }
    });
    return true;
  }
  
  private static void invokeCallbackWithController(CreationCallback paramCreationCallback, final LikeActionController paramLikeActionController, final FacebookException paramFacebookException)
  {
    if (paramCreationCallback == null) {
      return;
    }
    handler.post(new Runnable()
    {
      public final void run()
      {
        val$callback.onComplete(paramLikeActionController, paramFacebookException);
      }
    });
  }
  
  private void logAppEventForError(String paramString, Bundle paramBundle)
  {
    paramBundle = new Bundle(paramBundle);
    paramBundle.putString("object_id", objectId);
    paramBundle.putString("object_type", objectType.toString());
    paramBundle.putString("current_action", paramString);
    getAppEventsLogger().logSdkEvent("fb_like_control_error", null, paramBundle);
  }
  
  private void logAppEventForError(String paramString, FacebookRequestError paramFacebookRequestError)
  {
    Bundle localBundle = new Bundle();
    if (paramFacebookRequestError != null)
    {
      paramFacebookRequestError = paramFacebookRequestError.getRequestResult();
      if (paramFacebookRequestError != null) {
        localBundle.putString("error", paramFacebookRequestError.toString());
      }
    }
    logAppEventForError(paramString, localBundle);
  }
  
  private void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    ShareInternalUtility.handleActivityResult(paramInt1, paramInt2, paramIntent, getResultProcessor(facebookDialogAnalyticsBundle));
    clearState();
  }
  
  /* Error */
  private static void performFirstInitialize()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 572	com/facebook/share/internal/LikeActionController:isInitialized	Z
    //   6: istore_0
    //   7: iload_0
    //   8: ifeq +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: new 414	android/os/Handler
    //   18: dup
    //   19: invokestatic 650	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   22: invokespecial 653	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   25: putstatic 410	com/facebook/share/internal/LikeActionController:handler	Landroid/os/Handler;
    //   28: invokestatic 352	com/facebook/FacebookSdk:getApplicationContext	()Landroid/content/Context;
    //   31: ldc 123
    //   33: iconst_0
    //   34: invokevirtual 602	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   37: ldc 126
    //   39: iconst_1
    //   40: invokeinterface 656 3 0
    //   45: putstatic 307	com/facebook/share/internal/LikeActionController:objectSuffix	I
    //   48: new 430	com/facebook/internal/FileLruCache
    //   51: dup
    //   52: getstatic 189	com/facebook/share/internal/LikeActionController:TAG	Ljava/lang/String;
    //   55: new 658	com/facebook/internal/FileLruCache$Limits
    //   58: dup
    //   59: invokespecial 659	com/facebook/internal/FileLruCache$Limits:<init>	()V
    //   62: invokespecial 662	com/facebook/internal/FileLruCache:<init>	(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V
    //   65: putstatic 315	com/facebook/share/internal/LikeActionController:controllerDiskCache	Lcom/facebook/internal/FileLruCache;
    //   68: invokestatic 665	com/facebook/share/internal/LikeActionController:registerAccessTokenTracker	()V
    //   71: getstatic 671	com/facebook/internal/CallbackManagerImpl$RequestCodeOffset:Like	Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;
    //   74: invokevirtual 674	com/facebook/internal/CallbackManagerImpl$RequestCodeOffset:toRequestCode	()I
    //   77: new 14	com/facebook/share/internal/LikeActionController$3
    //   80: dup
    //   81: invokespecial 675	com/facebook/share/internal/LikeActionController$3:<init>	()V
    //   84: invokestatic 681	com/facebook/internal/CallbackManagerImpl:registerStaticCallback	(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V
    //   87: iconst_1
    //   88: putstatic 572	com/facebook/share/internal/LikeActionController:isInitialized	Z
    //   91: goto -80 -> 11
    //   94: astore_1
    //   95: ldc 2
    //   97: monitorexit
    //   98: aload_1
    //   99: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	bool	boolean
    //   94	5	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	94	finally
    //   15	91	94	finally
  }
  
  private void presentLikeDialog(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    Object localObject;
    if (LikeDialog.canShowNativeDialog())
    {
      localObject = "fb_like_control_did_present_dialog";
      if (localObject != null)
      {
        if (objectType == null) {
          break label134;
        }
        localObject = objectType.toString();
        label32:
        localObject = new LikeContent.Builder().setObjectId(objectId).setObjectType((String)localObject).build();
        if (paramFragment == null) {
          break label145;
        }
        new LikeDialog(paramFragment).show(localObject);
      }
    }
    for (;;)
    {
      saveState(paramBundle);
      getAppEventsLogger().logSdkEvent("fb_like_control_did_present_dialog", null, paramBundle);
      return;
      if (LikeDialog.canShowWebFallback())
      {
        localObject = "fb_like_control_did_present_fallback_dialog";
        break;
      }
      logAppEventForError("present_dialog", paramBundle);
      Utility.logd(TAG, "Cannot show the Like Dialog on this device.");
      broadcastAction(null, "com.facebook.sdk.LikeActionController.UPDATED");
      localObject = null;
      break;
      label134:
      localObject = LikeView.ObjectType.UNKNOWN.toString();
      break label32;
      label145:
      new LikeDialog(paramActivity).show(localObject);
    }
  }
  
  private void publishAgainIfNeeded(Bundle paramBundle)
  {
    if ((isObjectLiked != isObjectLikedOnServer) && (!publishLikeOrUnlikeAsync(isObjectLiked, paramBundle))) {
      if (isObjectLiked) {
        break label38;
      }
    }
    label38:
    for (boolean bool = true;; bool = false)
    {
      publishDidError(bool);
      return;
    }
  }
  
  private void publishDidError(boolean paramBoolean)
  {
    updateLikeState(paramBoolean);
    Bundle localBundle = new Bundle();
    localBundle.putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Unable to publish the like/unlike action");
    broadcastAction(this, "com.facebook.sdk.LikeActionController.DID_ERROR", localBundle);
  }
  
  private void publishLikeAsync(final Bundle paramBundle)
  {
    isPendingLikeOrUnlike = true;
    fetchVerifiedObjectId(new RequestCompletionCallback()
    {
      public void onComplete()
      {
        if (Utility.isNullOrEmpty(verifiedObjectId))
        {
          localObject = new Bundle();
          ((Bundle)localObject).putString("com.facebook.platform.status.ERROR_DESCRIPTION", "Invalid Object Id");
          LikeActionController.broadcastAction(LikeActionController.this, "com.facebook.sdk.LikeActionController.DID_ERROR", (Bundle)localObject);
          return;
        }
        Object localObject = new GraphRequestBatch();
        final LikeActionController.PublishLikeRequestWrapper localPublishLikeRequestWrapper = new LikeActionController.PublishLikeRequestWrapper(LikeActionController.this, verifiedObjectId, objectType);
        localPublishLikeRequestWrapper.addToBatch((GraphRequestBatch)localObject);
        ((GraphRequestBatch)localObject).addCallback(new GraphRequestBatch.Callback()
        {
          public void onBatchCompleted(GraphRequestBatch paramAnonymous2GraphRequestBatch)
          {
            LikeActionController.access$1802(LikeActionController.this, false);
            if (localPublishLikeRequestWrappererror != null)
            {
              LikeActionController.this.publishDidError(false);
              return;
            }
            LikeActionController.access$1102(LikeActionController.this, Utility.coerceValueIfNullOrEmpty(localPublishLikeRequestWrapperunlikeToken, null));
            LikeActionController.access$2002(LikeActionController.this, true);
            LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_did_like", null, val$analyticsParameters);
            LikeActionController.this.publishAgainIfNeeded(val$analyticsParameters);
          }
        });
        ((GraphRequestBatch)localObject).executeAsync();
      }
    });
  }
  
  private boolean publishLikeOrUnlikeAsync(boolean paramBoolean, Bundle paramBundle)
  {
    if (canUseOGPublish())
    {
      if (paramBoolean)
      {
        publishLikeAsync(paramBundle);
        return true;
      }
      if (!Utility.isNullOrEmpty(unlikeToken))
      {
        publishUnlikeAsync(paramBundle);
        return true;
      }
    }
    return false;
  }
  
  private void publishUnlikeAsync(final Bundle paramBundle)
  {
    isPendingLikeOrUnlike = true;
    GraphRequestBatch localGraphRequestBatch = new GraphRequestBatch();
    final PublishUnlikeRequestWrapper localPublishUnlikeRequestWrapper = new PublishUnlikeRequestWrapper(unlikeToken);
    localPublishUnlikeRequestWrapper.addToBatch(localGraphRequestBatch);
    localGraphRequestBatch.addCallback(new GraphRequestBatch.Callback()
    {
      public void onBatchCompleted(GraphRequestBatch paramAnonymousGraphRequestBatch)
      {
        LikeActionController.access$1802(LikeActionController.this, false);
        if (localPublishUnlikeRequestWrappererror != null)
        {
          LikeActionController.this.publishDidError(true);
          return;
        }
        LikeActionController.access$1102(LikeActionController.this, null);
        LikeActionController.access$2002(LikeActionController.this, false);
        LikeActionController.this.getAppEventsLogger().logSdkEvent("fb_like_control_did_unlike", null, paramBundle);
        LikeActionController.this.publishAgainIfNeeded(paramBundle);
      }
    });
    localGraphRequestBatch.executeAsync();
  }
  
  private static void putControllerInMemoryCache(String paramString, LikeActionController paramLikeActionController)
  {
    paramString = getCacheKeyForObjectId(paramString);
    mruCacheWorkQueue.addActiveWorkItem(new MRUCacheWorkItem(paramString, true));
    cache.put(paramString, paramLikeActionController);
  }
  
  private void refreshStatusAsync()
  {
    if (AccessToken.getCurrentAccessToken() == null)
    {
      refreshStatusViaService();
      return;
    }
    fetchVerifiedObjectId(new RequestCompletionCallback()
    {
      public void onComplete()
      {
        final LikeActionController.GetOGObjectLikesRequestWrapper localGetOGObjectLikesRequestWrapper = new LikeActionController.GetOGObjectLikesRequestWrapper(LikeActionController.this, verifiedObjectId, objectType);
        final LikeActionController.GetEngagementRequestWrapper localGetEngagementRequestWrapper = new LikeActionController.GetEngagementRequestWrapper(LikeActionController.this, verifiedObjectId, objectType);
        GraphRequestBatch localGraphRequestBatch = new GraphRequestBatch();
        localGetOGObjectLikesRequestWrapper.addToBatch(localGraphRequestBatch);
        localGetEngagementRequestWrapper.addToBatch(localGraphRequestBatch);
        localGraphRequestBatch.addCallback(new GraphRequestBatch.Callback()
        {
          public void onBatchCompleted(GraphRequestBatch paramAnonymous2GraphRequestBatch)
          {
            if ((localGetOGObjectLikesRequestWrappererror != null) || (localGetEngagementRequestWrappererror != null))
            {
              Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Unable to refresh like state for id: '%s'", new Object[] { objectId });
              return;
            }
            LikeActionController.this.updateState(localGetOGObjectLikesRequestWrapperobjectIsLiked, localGetEngagementRequestWrapperlikeCountStringWithLike, localGetEngagementRequestWrapperlikeCountStringWithoutLike, localGetEngagementRequestWrappersocialSentenceStringWithLike, localGetEngagementRequestWrappersocialSentenceStringWithoutLike, localGetOGObjectLikesRequestWrapperunlikeToken);
          }
        });
        localGraphRequestBatch.executeAsync();
      }
    });
  }
  
  private void refreshStatusViaService()
  {
    LikeStatusClient localLikeStatusClient = new LikeStatusClient(FacebookSdk.getApplicationContext(), FacebookSdk.getApplicationId(), objectId);
    if (!localLikeStatusClient.start()) {
      return;
    }
    localLikeStatusClient.setCompletedListener(new PlatformServiceClient.CompletedListener()
    {
      public void completed(Bundle paramAnonymousBundle)
      {
        if ((paramAnonymousBundle == null) || (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.OBJECT_IS_LIKED"))) {
          return;
        }
        boolean bool = paramAnonymousBundle.getBoolean("com.facebook.platform.extra.OBJECT_IS_LIKED");
        String str1;
        String str2;
        label54:
        String str3;
        label71:
        String str4;
        if (paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"))
        {
          str1 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE")) {
            break label132;
          }
          str2 = paramAnonymousBundle.getString("com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE")) {
            break label144;
          }
          str3 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE");
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE")) {
            break label156;
          }
          str4 = paramAnonymousBundle.getString("com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE");
          label88:
          if (!paramAnonymousBundle.containsKey("com.facebook.platform.extra.UNLIKE_TOKEN")) {
            break label168;
          }
        }
        label132:
        label144:
        label156:
        label168:
        for (paramAnonymousBundle = paramAnonymousBundle.getString("com.facebook.platform.extra.UNLIKE_TOKEN");; paramAnonymousBundle = unlikeToken)
        {
          LikeActionController.this.updateState(bool, str1, str2, str3, str4, paramAnonymousBundle);
          return;
          str1 = likeCountStringWithLike;
          break;
          str2 = likeCountStringWithoutLike;
          break label54;
          str3 = socialSentenceWithLike;
          break label71;
          str4 = socialSentenceWithoutLike;
          break label88;
        }
      }
    });
  }
  
  private static void registerAccessTokenTracker()
  {
    accessTokenTracker = new AccessTokenTracker()
    {
      protected final void onCurrentAccessTokenChanged(AccessToken paramAnonymousAccessToken1, AccessToken paramAnonymousAccessToken2)
      {
        paramAnonymousAccessToken1 = FacebookSdk.getApplicationContext();
        if (paramAnonymousAccessToken2 == null)
        {
          LikeActionController.access$302((LikeActionController.objectSuffix + 1) % 1000);
          paramAnonymousAccessToken1.getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putInt("OBJECT_SUFFIX", LikeActionController.objectSuffix).apply();
          LikeActionController.cache.clear();
          LikeActionController.controllerDiskCache.clearCache();
        }
        LikeActionController.broadcastAction(null, "com.facebook.sdk.LikeActionController.DID_RESET");
      }
    };
  }
  
  private void saveState(Bundle paramBundle)
  {
    storeObjectIdForPendingController(objectId);
    facebookDialogAnalyticsBundle = paramBundle;
    serializeToDiskAsync(this);
  }
  
  private static void serializeToDiskAsync(LikeActionController paramLikeActionController)
  {
    String str = serializeToJson(paramLikeActionController);
    paramLikeActionController = getCacheKeyForObjectId(objectId);
    if ((!Utility.isNullOrEmpty(str)) && (!Utility.isNullOrEmpty(paramLikeActionController))) {
      diskIOWorkQueue.addActiveWorkItem(new SerializeToDiskWorkItem(paramLikeActionController, str));
    }
  }
  
  private static void serializeToDiskSynchronously(String paramString1, String paramString2)
  {
    Object localObject = null;
    String str = null;
    try
    {
      paramString1 = controllerDiskCache.openPutStream(paramString1);
      str = paramString1;
      localObject = paramString1;
      paramString1.write(paramString2.getBytes());
      if (paramString1 != null) {
        Utility.closeQuietly(paramString1);
      }
      return;
    }
    catch (IOException paramString1)
    {
      do
      {
        localObject = str;
        Log.e(TAG, "Unable to serialize controller to disk", paramString1);
      } while (str == null);
      Utility.closeQuietly(str);
      return;
    }
    finally
    {
      if (localObject != null) {
        Utility.closeQuietly((Closeable)localObject);
      }
    }
  }
  
  private static String serializeToJson(LikeActionController paramLikeActionController)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("com.facebook.share.internal.LikeActionController.version", 3);
      localJSONObject.put("object_id", objectId);
      localJSONObject.put("object_type", objectType.getValue());
      localJSONObject.put("like_count_string_with_like", likeCountStringWithLike);
      localJSONObject.put("like_count_string_without_like", likeCountStringWithoutLike);
      localJSONObject.put("social_sentence_with_like", socialSentenceWithLike);
      localJSONObject.put("social_sentence_without_like", socialSentenceWithoutLike);
      localJSONObject.put("is_object_liked", isObjectLiked);
      localJSONObject.put("unlike_token", unlikeToken);
      if (facebookDialogAnalyticsBundle != null)
      {
        paramLikeActionController = BundleJSONConverter.convertToJSON(facebookDialogAnalyticsBundle);
        if (paramLikeActionController != null) {
          localJSONObject.put("facebook_dialog_analytics_bundle", paramLikeActionController);
        }
      }
      return localJSONObject.toString();
    }
    catch (JSONException paramLikeActionController)
    {
      Log.e(TAG, "Unable to serialize controller to JSON", paramLikeActionController);
    }
    return null;
  }
  
  private static void storeObjectIdForPendingController(String paramString)
  {
    objectIdForPendingController = paramString;
    FacebookSdk.getApplicationContext().getSharedPreferences("com.facebook.LikeActionController.CONTROLLER_STORE_KEY", 0).edit().putString("PENDING_CONTROLLER_KEY", objectIdForPendingController).apply();
  }
  
  private void updateLikeState(boolean paramBoolean)
  {
    updateState(paramBoolean, likeCountStringWithLike, likeCountStringWithoutLike, socialSentenceWithLike, socialSentenceWithoutLike, unlikeToken);
  }
  
  private void updateState(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = Utility.coerceValueIfNullOrEmpty(paramString1, null);
    paramString2 = Utility.coerceValueIfNullOrEmpty(paramString2, null);
    paramString3 = Utility.coerceValueIfNullOrEmpty(paramString3, null);
    paramString4 = Utility.coerceValueIfNullOrEmpty(paramString4, null);
    paramString5 = Utility.coerceValueIfNullOrEmpty(paramString5, null);
    if ((paramBoolean != isObjectLiked) || (!Utility.areObjectsEqual(paramString1, likeCountStringWithLike)) || (!Utility.areObjectsEqual(paramString2, likeCountStringWithoutLike)) || (!Utility.areObjectsEqual(paramString3, socialSentenceWithLike)) || (!Utility.areObjectsEqual(paramString4, socialSentenceWithoutLike)) || (!Utility.areObjectsEqual(paramString5, unlikeToken))) {}
    for (int i = 1; i == 0; i = 0) {
      return;
    }
    isObjectLiked = paramBoolean;
    likeCountStringWithLike = paramString1;
    likeCountStringWithoutLike = paramString2;
    socialSentenceWithLike = paramString3;
    socialSentenceWithoutLike = paramString4;
    unlikeToken = paramString5;
    serializeToDiskAsync(this);
    broadcastAction(this, "com.facebook.sdk.LikeActionController.UPDATED");
  }
  
  private static void verifyControllerAndInvokeCallback(LikeActionController paramLikeActionController, LikeView.ObjectType paramObjectType, CreationCallback paramCreationCallback)
  {
    Object localObject = null;
    LikeView.ObjectType localObjectType = ShareInternalUtility.getMostSpecificObjectType(paramObjectType, objectType);
    if (localObjectType == null)
    {
      paramLikeActionController = new FacebookException("Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\"", new Object[] { objectId, objectType.toString(), paramObjectType.toString() });
      paramObjectType = (LikeView.ObjectType)localObject;
    }
    for (;;)
    {
      invokeCallbackWithController(paramCreationCallback, paramObjectType, paramLikeActionController);
      return;
      objectType = localObjectType;
      localObject = null;
      paramObjectType = paramLikeActionController;
      paramLikeActionController = (LikeActionController)localObject;
    }
  }
  
  public String getLikeCountString()
  {
    if (isObjectLiked) {
      return likeCountStringWithLike;
    }
    return likeCountStringWithoutLike;
  }
  
  public String getObjectId()
  {
    return objectId;
  }
  
  public String getSocialSentence()
  {
    if (isObjectLiked) {
      return socialSentenceWithLike;
    }
    return socialSentenceWithoutLike;
  }
  
  public boolean isObjectLiked()
  {
    return isObjectLiked;
  }
  
  public boolean shouldEnableView()
  {
    if ((LikeDialog.canShowNativeDialog()) || (LikeDialog.canShowWebFallback())) {}
    AccessToken localAccessToken;
    do
    {
      return true;
      if ((objectIsPage) || (objectType == LikeView.ObjectType.PAGE)) {
        return false;
      }
      localAccessToken = AccessToken.getCurrentAccessToken();
    } while ((localAccessToken != null) && (localAccessToken.getPermissions() != null) && (localAccessToken.getPermissions().contains("publish_actions")));
    return false;
  }
  
  public void toggleLike(Activity paramActivity, Fragment paramFragment, Bundle paramBundle)
  {
    boolean bool2 = true;
    getAppEventsLogger().logSdkEvent("fb_like_control_did_tap", null, paramBundle);
    if (!isObjectLiked)
    {
      bool1 = true;
      if (!canUseOGPublish()) {
        break label89;
      }
      updateLikeState(bool1);
      if (!isPendingLikeOrUnlike) {
        break label64;
      }
      getAppEventsLogger().logSdkEvent("fb_like_control_did_undo_quickly", null, paramBundle);
    }
    label64:
    while (publishLikeOrUnlikeAsync(bool1, paramBundle))
    {
      return;
      bool1 = false;
      break;
    }
    if (!bool1) {}
    for (boolean bool1 = bool2;; bool1 = false)
    {
      updateLikeState(bool1);
      label89:
      presentLikeDialog(paramActivity, paramFragment, paramBundle);
      return;
    }
  }
  
  private abstract class AbstractRequestWrapper
  {
    FacebookRequestError error;
    protected String objectId;
    protected LikeView.ObjectType objectType;
    private GraphRequest request;
    
    protected AbstractRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      objectId = paramString;
      objectType = paramObjectType;
    }
    
    void addToBatch(GraphRequestBatch paramGraphRequestBatch)
    {
      paramGraphRequestBatch.add(request);
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error running request for object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
    }
    
    protected abstract void processSuccess(GraphResponse paramGraphResponse);
    
    protected void setRequest(GraphRequest paramGraphRequest)
    {
      request = paramGraphRequest;
      paramGraphRequest.setVersion("v2.3");
      paramGraphRequest.setCallback(new GraphRequest.Callback()
      {
        public void onCompleted(GraphResponse paramAnonymousGraphResponse)
        {
          error = paramAnonymousGraphResponse.getError();
          if (error != null)
          {
            processError(error);
            return;
          }
          processSuccess(paramAnonymousGraphResponse);
        }
      });
    }
  }
  
  private static class CreateLikeActionControllerWorkItem
    implements Runnable
  {
    private LikeActionController.CreationCallback callback;
    private String objectId;
    private LikeView.ObjectType objectType;
    
    CreateLikeActionControllerWorkItem(String paramString, LikeView.ObjectType paramObjectType, LikeActionController.CreationCallback paramCreationCallback)
    {
      objectId = paramString;
      objectType = paramObjectType;
      callback = paramCreationCallback;
    }
    
    public void run()
    {
      LikeActionController.createControllerForObjectIdAndType(objectId, objectType, callback);
    }
  }
  
  public static abstract interface CreationCallback
  {
    public abstract void onComplete(LikeActionController paramLikeActionController, FacebookException paramFacebookException);
  }
  
  private class GetEngagementRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    String likeCountStringWithLike = likeCountStringWithLike;
    String likeCountStringWithoutLike = likeCountStringWithoutLike;
    String socialSentenceStringWithLike = socialSentenceWithLike;
    String socialSentenceStringWithoutLike = socialSentenceWithoutLike;
    
    GetEngagementRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)");
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), paramString, LikeActionController.this, HttpMethod.GET));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching engagement for object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
      LikeActionController.this.logAppEventForError("get_engagement", paramFacebookRequestError);
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = Utility.tryGetJSONObjectFromResponse(paramGraphResponse.getJSONObject(), "engagement");
      if (paramGraphResponse != null)
      {
        likeCountStringWithLike = paramGraphResponse.optString("count_string_with_like", likeCountStringWithLike);
        likeCountStringWithoutLike = paramGraphResponse.optString("count_string_without_like", likeCountStringWithoutLike);
        socialSentenceStringWithLike = paramGraphResponse.optString("social_sentence_with_like", socialSentenceStringWithLike);
        socialSentenceStringWithoutLike = paramGraphResponse.optString("social_sentence_without_like", socialSentenceStringWithoutLike);
      }
    }
  }
  
  private class GetOGObjectIdRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    String verifiedObjectId;
    
    GetOGObjectIdRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "og_object.fields(id)");
      putString("ids", paramString);
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", LikeActionController.this, HttpMethod.GET));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      if (paramFacebookRequestError.getErrorMessage().contains("og_object"))
      {
        error = null;
        return;
      }
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = Utility.tryGetJSONObjectFromResponse(paramGraphResponse.getJSONObject(), objectId);
      if (paramGraphResponse != null)
      {
        paramGraphResponse = paramGraphResponse.optJSONObject("og_object");
        if (paramGraphResponse != null) {
          verifiedObjectId = paramGraphResponse.optString("id");
        }
      }
    }
  }
  
  private class GetOGObjectLikesRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    boolean objectIsLiked = isObjectLiked;
    String unlikeToken;
    
    GetOGObjectLikesRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "id,application");
      putString("object", paramString);
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", LikeActionController.this, HttpMethod.GET));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error fetching like status for object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
      LikeActionController.this.logAppEventForError("get_og_object_like", paramFacebookRequestError);
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = Utility.tryGetJSONArrayFromResponse(paramGraphResponse.getJSONObject(), "data");
      if (paramGraphResponse != null)
      {
        int i = 0;
        while (i < paramGraphResponse.length())
        {
          JSONObject localJSONObject1 = paramGraphResponse.optJSONObject(i);
          if (localJSONObject1 != null)
          {
            objectIsLiked = true;
            JSONObject localJSONObject2 = localJSONObject1.optJSONObject("application");
            AccessToken localAccessToken = AccessToken.getCurrentAccessToken();
            if ((localJSONObject2 != null) && (localAccessToken != null) && (Utility.areObjectsEqual(localAccessToken.getApplicationId(), localJSONObject2.optString("id")))) {
              unlikeToken = localJSONObject1.optString("id");
            }
          }
          i += 1;
        }
      }
    }
  }
  
  private class GetPageIdRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    boolean objectIsPage;
    String verifiedObjectId;
    
    GetPageIdRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("fields", "id");
      putString("ids", paramString);
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "", LikeActionController.this, HttpMethod.GET));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error getting the FB id for object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse)
    {
      paramGraphResponse = Utility.tryGetJSONObjectFromResponse(paramGraphResponse.getJSONObject(), objectId);
      if (paramGraphResponse != null)
      {
        verifiedObjectId = paramGraphResponse.optString("id");
        if (Utility.isNullOrEmpty(verifiedObjectId)) {
          break label44;
        }
      }
      label44:
      for (boolean bool = true;; bool = false)
      {
        objectIsPage = bool;
        return;
      }
    }
  }
  
  private static class MRUCacheWorkItem
    implements Runnable
  {
    private static ArrayList<String> mruCachedItems = new ArrayList();
    private String cacheItem;
    private boolean shouldTrim;
    
    MRUCacheWorkItem(String paramString, boolean paramBoolean)
    {
      cacheItem = paramString;
      shouldTrim = paramBoolean;
    }
    
    public void run()
    {
      if (cacheItem != null)
      {
        mruCachedItems.remove(cacheItem);
        mruCachedItems.add(0, cacheItem);
      }
      if ((shouldTrim) && (mruCachedItems.size() >= 128)) {
        while (64 < mruCachedItems.size())
        {
          String str = (String)mruCachedItems.remove(mruCachedItems.size() - 1);
          LikeActionController.cache.remove(str);
        }
      }
    }
  }
  
  private class PublishLikeRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    String unlikeToken;
    
    PublishLikeRequestWrapper(String paramString, LikeView.ObjectType paramObjectType)
    {
      super(paramString, paramObjectType);
      this$1 = new Bundle();
      putString("object", paramString);
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), "me/og.likes", LikeActionController.this, HttpMethod.POST));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      if (paramFacebookRequestError.getErrorCode() == 3501)
      {
        error = null;
        return;
      }
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error liking object '%s' with type '%s' : %s", new Object[] { objectId, objectType, paramFacebookRequestError });
      LikeActionController.this.logAppEventForError("publish_like", paramFacebookRequestError);
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse)
    {
      unlikeToken = Utility.safeGetStringFromResponse(paramGraphResponse.getJSONObject(), "id");
    }
  }
  
  private class PublishUnlikeRequestWrapper
    extends LikeActionController.AbstractRequestWrapper
  {
    private String unlikeToken;
    
    PublishUnlikeRequestWrapper(String paramString)
    {
      super(null, null);
      unlikeToken = paramString;
      setRequest(new GraphRequest(AccessToken.getCurrentAccessToken(), paramString, null, HttpMethod.DELETE));
    }
    
    protected void processError(FacebookRequestError paramFacebookRequestError)
    {
      Logger.log(LoggingBehavior.REQUESTS, LikeActionController.TAG, "Error unliking object with unlike token '%s' : %s", new Object[] { unlikeToken, paramFacebookRequestError });
      LikeActionController.this.logAppEventForError("publish_unlike", paramFacebookRequestError);
    }
    
    protected void processSuccess(GraphResponse paramGraphResponse) {}
  }
  
  private static abstract interface RequestCompletionCallback
  {
    public abstract void onComplete();
  }
  
  private static class SerializeToDiskWorkItem
    implements Runnable
  {
    private String cacheKey;
    private String controllerJson;
    
    SerializeToDiskWorkItem(String paramString1, String paramString2)
    {
      cacheKey = paramString1;
      controllerJson = paramString2;
    }
    
    public void run()
    {
      LikeActionController.serializeToDiskSynchronously(cacheKey, controllerJson);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.LikeActionController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */