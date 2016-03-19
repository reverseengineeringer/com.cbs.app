package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.internal.Validate;
import java.io.File;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class FacebookSdk
{
  public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
  public static final String APPLICATION_NAME_PROPERTY = "com.facebook.sdk.ApplicationName";
  private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
  static final String CALLBACK_OFFSET_CHANGED_AFTER_INIT = "The callback request code offset can't be updated once the SDK is initialized.";
  static final String CALLBACK_OFFSET_NEGATIVE = "The callback request code offset can't be negative.";
  public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
  private static final int DEFAULT_CORE_POOL_SIZE = 5;
  private static final int DEFAULT_KEEP_ALIVE = 1;
  private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
  private static final ThreadFactory DEFAULT_THREAD_FACTORY = new ThreadFactory()
  {
    private final AtomicInteger counter = new AtomicInteger(0);
    
    public final Thread newThread(Runnable paramAnonymousRunnable)
    {
      return new Thread(paramAnonymousRunnable, "FacebookSdk #" + counter.incrementAndGet());
    }
  };
  private static final BlockingQueue<Runnable> DEFAULT_WORK_QUEUE;
  private static final String FACEBOOK_COM = "facebook.com";
  private static final Object LOCK;
  private static final int MAX_REQUEST_CODE_RANGE = 100;
  private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
  private static final String TAG = FacebookSdk.class.getCanonicalName();
  public static final String WEB_DIALOG_THEME = "com.facebook.sdk.WebDialogTheme";
  private static volatile String appClientToken;
  private static Context applicationContext;
  private static volatile String applicationId;
  private static volatile String applicationName;
  private static File cacheDir;
  private static int callbackRequestCodeOffset;
  private static volatile Executor executor;
  private static volatile String facebookDomain;
  private static volatile boolean isDebugEnabled;
  private static boolean isLegacyTokenUpgradeSupported;
  private static final HashSet<LoggingBehavior> loggingBehaviors = new HashSet(Arrays.asList(new LoggingBehavior[] { LoggingBehavior.DEVELOPER_ERRORS }));
  private static AtomicLong onProgressThreshold;
  private static Boolean sdkInitialized = Boolean.valueOf(false);
  private static volatile int webDialogTheme;
  
  static
  {
    facebookDomain = "facebook.com";
    onProgressThreshold = new AtomicLong(65536L);
    isDebugEnabled = false;
    isLegacyTokenUpgradeSupported = false;
    callbackRequestCodeOffset = 64206;
    LOCK = new Object();
    DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
  }
  
  public static void addLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.add(paramLoggingBehavior);
      updateGraphDebugBehavior();
      return;
    }
  }
  
  public static void clearLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.clear();
      return;
    }
  }
  
  public static Context getApplicationContext()
  {
    Validate.sdkInitialized();
    return applicationContext;
  }
  
  public static String getApplicationId()
  {
    Validate.sdkInitialized();
    return applicationId;
  }
  
  public static String getApplicationName()
  {
    Validate.sdkInitialized();
    return applicationName;
  }
  
  /* Error */
  public static String getApplicationSignature(Context paramContext)
  {
    // Byte code:
    //   0: invokestatic 167	com/facebook/internal/Validate:sdkInitialized	()V
    //   3: aload_0
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_0
    //   10: invokevirtual 187	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull -8 -> 7
    //   18: aload_0
    //   19: invokevirtual 190	android/content/Context:getPackageName	()Ljava/lang/String;
    //   22: astore_0
    //   23: aload_1
    //   24: aload_0
    //   25: bipush 64
    //   27: invokevirtual 196	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   30: astore_0
    //   31: aload_0
    //   32: getfield 202	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull -30 -> 7
    //   40: aload_1
    //   41: arraylength
    //   42: ifeq -35 -> 7
    //   45: ldc -52
    //   47: invokestatic 210	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   50: astore_1
    //   51: aload_1
    //   52: aload_0
    //   53: getfield 202	android/content/pm/PackageInfo:signatures	[Landroid/content/pm/Signature;
    //   56: iconst_0
    //   57: aaload
    //   58: invokevirtual 216	android/content/pm/Signature:toByteArray	()[B
    //   61: invokevirtual 220	java/security/MessageDigest:update	([B)V
    //   64: aload_1
    //   65: invokevirtual 223	java/security/MessageDigest:digest	()[B
    //   68: bipush 9
    //   70: invokestatic 229	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   73: areturn
    //   74: astore_0
    //   75: aconst_null
    //   76: areturn
    //   77: astore_0
    //   78: aconst_null
    //   79: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	paramContext	Context
    //   13	52	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	31	74	android/content/pm/PackageManager$NameNotFoundException
    //   45	51	77	java/security/NoSuchAlgorithmException
  }
  
  private static Executor getAsyncTaskExecutor()
  {
    try
    {
      Object localObject = AsyncTask.class.getField("THREAD_POOL_EXECUTOR");
      if ((localIllegalAccessException instanceof Executor)) {
        break label35;
      }
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      try
      {
        localObject = ((Field)localObject).get(null);
        if (localObject != null) {
          break label26;
        }
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        return null;
      }
      localNoSuchFieldException = localNoSuchFieldException;
      return null;
    }
    label26:
    return null;
    label35:
    return (Executor)localIllegalAccessException;
  }
  
  public static File getCacheDir()
  {
    Validate.sdkInitialized();
    return cacheDir;
  }
  
  public static int getCallbackRequestCodeOffset()
  {
    Validate.sdkInitialized();
    return callbackRequestCodeOffset;
  }
  
  public static String getClientToken()
  {
    Validate.sdkInitialized();
    return appClientToken;
  }
  
  public static Executor getExecutor()
  {
    synchronized (LOCK)
    {
      if (executor == null)
      {
        Executor localExecutor = getAsyncTaskExecutor();
        Object localObject1 = localExecutor;
        if (localExecutor == null) {
          localObject1 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
        }
        executor = (Executor)localObject1;
      }
      return executor;
    }
  }
  
  public static String getFacebookDomain()
  {
    return facebookDomain;
  }
  
  public static boolean getLimitEventAndDataUsage(Context paramContext)
  {
    Validate.sdkInitialized();
    return paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
  }
  
  public static Set<LoggingBehavior> getLoggingBehaviors()
  {
    synchronized (loggingBehaviors)
    {
      Set localSet = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
      return localSet;
    }
  }
  
  public static long getOnProgressThreshold()
  {
    Validate.sdkInitialized();
    return onProgressThreshold.get();
  }
  
  public static String getSdkVersion()
  {
    Validate.sdkInitialized();
    return "4.2.0";
  }
  
  public static int getWebDialogTheme()
  {
    Validate.sdkInitialized();
    return webDialogTheme;
  }
  
  public static boolean isDebugEnabled()
  {
    return isDebugEnabled;
  }
  
  public static boolean isFacebookRequestCode(int paramInt)
  {
    return (paramInt >= callbackRequestCodeOffset) && (paramInt < callbackRequestCodeOffset + 100);
  }
  
  public static boolean isInitialized()
  {
    try
    {
      boolean bool = sdkInitialized.booleanValue();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static boolean isLegacyTokenUpgradeSupported()
  {
    return isLegacyTokenUpgradeSupported;
  }
  
  public static boolean isLoggingBehaviorEnabled(LoggingBehavior paramLoggingBehavior)
  {
    for (;;)
    {
      synchronized (loggingBehaviors)
      {
        if ((isDebugEnabled()) && (loggingBehaviors.contains(paramLoggingBehavior)))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  static void loadDefaultsFromMetadata(Context paramContext)
  {
    if (paramContext == null) {}
    for (;;)
    {
      return;
      try
      {
        paramContext = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128);
        if ((paramContext == null) || (metaData == null)) {
          continue;
        }
        Object localObject;
        if (applicationId == null)
        {
          localObject = metaData.get("com.facebook.sdk.ApplicationId");
          if (!(localObject instanceof String)) {
            break label116;
          }
          applicationId = (String)localObject;
        }
        for (;;)
        {
          if (applicationName == null) {
            applicationName = metaData.getString("com.facebook.sdk.ApplicationName");
          }
          if (appClientToken == null) {
            appClientToken = metaData.getString("com.facebook.sdk.ClientToken");
          }
          if (webDialogTheme != 0) {
            break;
          }
          setWebDialogTheme(metaData.getInt("com.facebook.sdk.WebDialogTheme"));
          return;
          label116:
          if ((localObject instanceof Integer)) {
            applicationId = localObject.toString();
          }
        }
        return;
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
  }
  
  /* Error */
  static GraphResponse publishInstallAndWaitForResponse(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +41 -> 46
    //   8: new 370	java/lang/IllegalArgumentException
    //   11: dup
    //   12: ldc_w 372
    //   15: invokespecial 375	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_0
    //   20: ldc_w 377
    //   23: aload_0
    //   24: invokestatic 383	com/facebook/internal/Utility:logd	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   27: new 385	com/facebook/GraphResponse
    //   30: dup
    //   31: aconst_null
    //   32: aconst_null
    //   33: new 387	com/facebook/FacebookRequestError
    //   36: dup
    //   37: aconst_null
    //   38: aload_0
    //   39: invokespecial 390	com/facebook/FacebookRequestError:<init>	(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V
    //   42: invokespecial 393	com/facebook/GraphResponse:<init>	(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V
    //   45: areturn
    //   46: aload_0
    //   47: invokestatic 399	com/facebook/internal/AttributionIdentifiers:getAttributionIdentifiers	(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    //   50: astore 8
    //   52: aload_0
    //   53: ldc 20
    //   55: iconst_0
    //   56: invokevirtual 285	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   59: astore 6
    //   61: new 401	java/lang/StringBuilder
    //   64: dup
    //   65: invokespecial 402	java/lang/StringBuilder:<init>	()V
    //   68: aload_1
    //   69: invokevirtual 406	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: ldc_w 408
    //   75: invokevirtual 406	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 409	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: astore 4
    //   83: new 401	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 402	java/lang/StringBuilder:<init>	()V
    //   90: aload_1
    //   91: invokevirtual 406	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc_w 411
    //   97: invokevirtual 406	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 409	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: astore 5
    //   105: aload 6
    //   107: aload 4
    //   109: lconst_0
    //   110: invokeinterface 415 4 0
    //   115: lstore_2
    //   116: aload 6
    //   118: aload 5
    //   120: aconst_null
    //   121: invokeinterface 418 3 0
    //   126: astore 7
    //   128: getstatic 424	com/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType:MOBILE_INSTALL_EVENT	Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;
    //   131: aload 8
    //   133: aload_0
    //   134: invokestatic 429	com/facebook/appevents/AppEventsLogger:getAnonymousAppDeviceGUID	(Landroid/content/Context;)Ljava/lang/String;
    //   137: aload_0
    //   138: invokestatic 431	com/facebook/FacebookSdk:getLimitEventAndDataUsage	(Landroid/content/Context;)Z
    //   141: aload_0
    //   142: invokestatic 437	com/facebook/internal/AppEventsLoggerUtility:getJSONObjectForGraphAPICall	(Lcom/facebook/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;
    //   145: astore_0
    //   146: aconst_null
    //   147: ldc 51
    //   149: iconst_1
    //   150: anewarray 4	java/lang/Object
    //   153: dup
    //   154: iconst_0
    //   155: aload_1
    //   156: aastore
    //   157: invokestatic 441	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   160: aload_0
    //   161: aconst_null
    //   162: invokestatic 447	com/facebook/GraphRequest:newPostRequest	(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    //   165: astore_1
    //   166: lload_2
    //   167: lconst_0
    //   168: lcmp
    //   169: ifeq +79 -> 248
    //   172: aload 7
    //   174: ifnull +130 -> 304
    //   177: new 449	org/json/JSONObject
    //   180: dup
    //   181: aload 7
    //   183: invokespecial 450	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   186: astore_0
    //   187: aload_0
    //   188: ifnonnull +48 -> 236
    //   191: ldc_w 452
    //   194: aconst_null
    //   195: new 454	com/facebook/GraphRequestBatch
    //   198: dup
    //   199: iconst_1
    //   200: anewarray 443	com/facebook/GraphRequest
    //   203: dup
    //   204: iconst_0
    //   205: aload_1
    //   206: aastore
    //   207: invokespecial 457	com/facebook/GraphRequestBatch:<init>	([Lcom/facebook/GraphRequest;)V
    //   210: invokestatic 461	com/facebook/GraphResponse:createResponsesFromString	(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)Ljava/util/List;
    //   213: iconst_0
    //   214: invokeinterface 466 2 0
    //   219: checkcast 385	com/facebook/GraphResponse
    //   222: areturn
    //   223: astore_0
    //   224: new 468	com/facebook/FacebookException
    //   227: dup
    //   228: ldc_w 470
    //   231: aload_0
    //   232: invokespecial 473	com/facebook/FacebookException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   235: athrow
    //   236: new 385	com/facebook/GraphResponse
    //   239: dup
    //   240: aconst_null
    //   241: aconst_null
    //   242: aconst_null
    //   243: aload_0
    //   244: invokespecial 476	com/facebook/GraphResponse:<init>	(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V
    //   247: areturn
    //   248: aload_1
    //   249: invokevirtual 480	com/facebook/GraphRequest:executeAndWait	()Lcom/facebook/GraphResponse;
    //   252: astore_0
    //   253: aload 6
    //   255: invokeinterface 484 1 0
    //   260: astore_1
    //   261: aload_1
    //   262: aload 4
    //   264: invokestatic 489	java/lang/System:currentTimeMillis	()J
    //   267: invokeinterface 495 4 0
    //   272: pop
    //   273: aload_0
    //   274: invokevirtual 499	com/facebook/GraphResponse:getJSONObject	()Lorg/json/JSONObject;
    //   277: ifnull +19 -> 296
    //   280: aload_1
    //   281: aload 5
    //   283: aload_0
    //   284: invokevirtual 499	com/facebook/GraphResponse:getJSONObject	()Lorg/json/JSONObject;
    //   287: invokevirtual 500	org/json/JSONObject:toString	()Ljava/lang/String;
    //   290: invokeinterface 504 3 0
    //   295: pop
    //   296: aload_1
    //   297: invokeinterface 507 1 0
    //   302: aload_0
    //   303: areturn
    //   304: aconst_null
    //   305: astore_0
    //   306: goto -119 -> 187
    //   309: astore_0
    //   310: aconst_null
    //   311: astore_0
    //   312: goto -125 -> 187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	315	0	paramContext	Context
    //   0	315	1	paramString	String
    //   115	52	2	l	long
    //   81	182	4	str1	String
    //   103	179	5	str2	String
    //   59	195	6	localSharedPreferences	SharedPreferences
    //   126	56	7	str3	String
    //   50	82	8	localAttributionIdentifiers	com.facebook.internal.AttributionIdentifiers
    // Exception table:
    //   from	to	target	type
    //   8	19	19	java/lang/Exception
    //   46	128	19	java/lang/Exception
    //   128	146	19	java/lang/Exception
    //   146	166	19	java/lang/Exception
    //   177	187	19	java/lang/Exception
    //   191	223	19	java/lang/Exception
    //   224	236	19	java/lang/Exception
    //   236	248	19	java/lang/Exception
    //   248	296	19	java/lang/Exception
    //   296	302	19	java/lang/Exception
    //   128	146	223	org/json/JSONException
    //   177	187	309	org/json/JSONException
  }
  
  public static void publishInstallAsync(Context paramContext, final String paramString)
  {
    paramContext = paramContext.getApplicationContext();
    getExecutor().execute(new Runnable()
    {
      public final void run()
      {
        FacebookSdk.publishInstallAndWaitForResponse(val$applicationContext, paramString);
      }
    });
  }
  
  public static void removeLoggingBehavior(LoggingBehavior paramLoggingBehavior)
  {
    synchronized (loggingBehaviors)
    {
      loggingBehaviors.remove(paramLoggingBehavior);
      return;
    }
  }
  
  /* Error */
  public static void sdkInitialize(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 147	com/facebook/FacebookSdk:sdkInitialized	Ljava/lang/Boolean;
    //   6: invokevirtual 320	java/lang/Boolean:booleanValue	()Z
    //   9: istore_1
    //   10: iload_1
    //   11: iconst_1
    //   12: if_icmpne +7 -> 19
    //   15: ldc 2
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: ldc_w 525
    //   23: invokestatic 529	com/facebook/internal/Validate:notNull	(Ljava/lang/Object;Ljava/lang/String;)V
    //   26: aload_0
    //   27: iconst_0
    //   28: invokestatic 533	com/facebook/internal/Validate:hasFacebookActivity	(Landroid/content/Context;Z)V
    //   31: aload_0
    //   32: iconst_0
    //   33: invokestatic 536	com/facebook/internal/Validate:hasInternetPermissions	(Landroid/content/Context;Z)V
    //   36: aload_0
    //   37: invokevirtual 511	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   40: astore_0
    //   41: aload_0
    //   42: putstatic 169	com/facebook/FacebookSdk:applicationContext	Landroid/content/Context;
    //   45: aload_0
    //   46: invokestatic 538	com/facebook/FacebookSdk:loadDefaultsFromMetadata	(Landroid/content/Context;)V
    //   49: getstatic 169	com/facebook/FacebookSdk:applicationContext	Landroid/content/Context;
    //   52: getstatic 172	com/facebook/FacebookSdk:applicationId	Ljava/lang/String;
    //   55: invokestatic 541	com/facebook/internal/Utility:loadAppSettingsAsync	(Landroid/content/Context;Ljava/lang/String;)V
    //   58: invokestatic 546	com/facebook/internal/NativeProtocol:updateAllAvailableProtocolVersionsAsync	()V
    //   61: getstatic 169	com/facebook/FacebookSdk:applicationContext	Landroid/content/Context;
    //   64: invokestatic 551	com/facebook/internal/BoltsMeasurementEventListener:getInstance	(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;
    //   67: pop
    //   68: getstatic 169	com/facebook/FacebookSdk:applicationContext	Landroid/content/Context;
    //   71: invokevirtual 553	android/content/Context:getCacheDir	()Ljava/io/File;
    //   74: putstatic 255	com/facebook/FacebookSdk:cacheDir	Ljava/io/File;
    //   77: new 555	java/util/concurrent/FutureTask
    //   80: dup
    //   81: new 8	com/facebook/FacebookSdk$2
    //   84: dup
    //   85: invokespecial 556	com/facebook/FacebookSdk$2:<init>	()V
    //   88: invokespecial 559	java/util/concurrent/FutureTask:<init>	(Ljava/util/concurrent/Callable;)V
    //   91: astore_0
    //   92: invokestatic 513	com/facebook/FacebookSdk:getExecutor	()Ljava/util/concurrent/Executor;
    //   95: aload_0
    //   96: invokeinterface 519 2 0
    //   101: iconst_1
    //   102: invokestatic 145	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   105: putstatic 147	com/facebook/FacebookSdk:sdkInitialized	Ljava/lang/Boolean;
    //   108: goto -93 -> 15
    //   111: astore_0
    //   112: ldc 2
    //   114: monitorexit
    //   115: aload_0
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	paramContext	Context
    //   9	4	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	10	111	finally
    //   19	108	111	finally
  }
  
  public static void sdkInitialize(Context paramContext, int paramInt)
  {
    try
    {
      if ((sdkInitialized.booleanValue()) && (paramInt != callbackRequestCodeOffset)) {
        throw new FacebookException("The callback request code offset can't be updated once the SDK is initialized.");
      }
    }
    finally {}
    if (paramInt < 0) {
      throw new FacebookException("The callback request code offset can't be negative.");
    }
    callbackRequestCodeOffset = paramInt;
    sdkInitialize(paramContext);
  }
  
  public static void setApplicationId(String paramString)
  {
    applicationId = paramString;
  }
  
  public static void setApplicationName(String paramString)
  {
    applicationName = paramString;
  }
  
  public static void setCacheDir(File paramFile)
  {
    cacheDir = paramFile;
  }
  
  public static void setClientToken(String paramString)
  {
    appClientToken = paramString;
  }
  
  public static void setExecutor(Executor paramExecutor)
  {
    Validate.notNull(paramExecutor, "executor");
    synchronized (LOCK)
    {
      executor = paramExecutor;
      return;
    }
  }
  
  public static void setFacebookDomain(String paramString)
  {
    facebookDomain = paramString;
  }
  
  public static void setIsDebugEnabled(boolean paramBoolean)
  {
    isDebugEnabled = paramBoolean;
  }
  
  public static void setLegacyTokenUpgradeSupported(boolean paramBoolean)
  {
    isLegacyTokenUpgradeSupported = paramBoolean;
  }
  
  public static void setLimitEventAndDataUsage(Context paramContext, boolean paramBoolean)
  {
    paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putBoolean("limitEventUsage", paramBoolean).apply();
  }
  
  public static void setOnProgressThreshold(long paramLong)
  {
    onProgressThreshold.set(paramLong);
  }
  
  public static void setWebDialogTheme(int paramInt)
  {
    webDialogTheme = paramInt;
  }
  
  private static void updateGraphDebugBehavior()
  {
    if ((loggingBehaviors.contains(LoggingBehavior.GRAPH_API_DEBUG_INFO)) && (!loggingBehaviors.contains(LoggingBehavior.GRAPH_API_DEBUG_WARNING))) {
      loggingBehaviors.add(LoggingBehavior.GRAPH_API_DEBUG_WARNING);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.FacebookSdk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */