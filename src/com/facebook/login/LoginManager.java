package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.CallbackManager;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.Profile;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.Callback;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.Validate;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class LoginManager
{
  private static final String MANAGE_PERMISSION_PREFIX = "manage";
  private static final Set<String> OTHER_PUBLISH_PERMISSIONS = ;
  private static final String PUBLISH_PERMISSION_PREFIX = "publish";
  private static volatile LoginManager instance;
  private Context context;
  private DefaultAudience defaultAudience = DefaultAudience.FRIENDS;
  private LoginBehavior loginBehavior = LoginBehavior.SSO_WITH_FALLBACK;
  private LoginLogger loginLogger;
  private HashMap<String, String> pendingLoggingExtras;
  private LoginClient.Request pendingLoginRequest;
  
  LoginManager()
  {
    Validate.sdkInitialized();
  }
  
  static LoginResult computeLoginResult(LoginClient.Request paramRequest, AccessToken paramAccessToken)
  {
    Set localSet = paramRequest.getPermissions();
    HashSet localHashSet = new HashSet(paramAccessToken.getPermissions());
    if (paramRequest.isRerequest()) {
      localHashSet.retainAll(localSet);
    }
    paramRequest = new HashSet(localSet);
    paramRequest.removeAll(localHashSet);
    return new LoginResult(paramAccessToken, localHashSet, paramRequest);
  }
  
  private LoginClient.Request createLoginRequest(Collection<String> paramCollection)
  {
    LoginBehavior localLoginBehavior = loginBehavior;
    if (paramCollection != null)
    {
      paramCollection = new HashSet(paramCollection);
      paramCollection = new LoginClient.Request(localLoginBehavior, Collections.unmodifiableSet(paramCollection), defaultAudience, FacebookSdk.getApplicationId(), UUID.randomUUID().toString());
      if (AccessToken.getCurrentAccessToken() == null) {
        break label70;
      }
    }
    label70:
    for (boolean bool = true;; bool = false)
    {
      paramCollection.setRerequest(bool);
      return paramCollection;
      paramCollection = new HashSet();
      break;
    }
  }
  
  private LoginClient.Request createLoginRequestFromResponse(GraphResponse paramGraphResponse)
  {
    Validate.notNull(paramGraphResponse, "response");
    paramGraphResponse = paramGraphResponse.getRequest().getAccessToken();
    if (paramGraphResponse != null) {}
    for (paramGraphResponse = paramGraphResponse.getPermissions();; paramGraphResponse = null) {
      return createLoginRequest(paramGraphResponse);
    }
  }
  
  private void finishLogin(AccessToken paramAccessToken, FacebookException paramFacebookException, boolean paramBoolean, FacebookCallback<LoginResult> paramFacebookCallback)
  {
    if (paramAccessToken != null)
    {
      AccessToken.setCurrentAccessToken(paramAccessToken);
      Profile.fetchProfileForCurrentAccessToken();
    }
    LoginResult localLoginResult;
    if (paramFacebookCallback != null)
    {
      if (paramAccessToken != null) {}
      for (localLoginResult = computeLoginResult(pendingLoginRequest, paramAccessToken); (paramBoolean) || ((localLoginResult != null) && (localLoginResult.getRecentlyGrantedPermissions().size() == 0)); localLoginResult = null)
      {
        paramFacebookCallback.onCancel();
        return;
      }
      if (paramFacebookException == null) {
        break label89;
      }
      paramFacebookCallback.onError(paramFacebookException);
    }
    for (;;)
    {
      context = null;
      loginLogger = null;
      return;
      label89:
      if (paramAccessToken != null) {
        paramFacebookCallback.onSuccess(localLoginResult);
      }
    }
  }
  
  private Intent getFacebookActivityIntent(LoginClient.Request paramRequest)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(FacebookSdk.getApplicationContext(), FacebookActivity.class);
    localIntent.setAction(paramRequest.getLoginBehavior().toString());
    localIntent.putExtras(LoginFragment.populateIntentExtras(paramRequest));
    return localIntent;
  }
  
  public static LoginManager getInstance()
  {
    if (instance == null) {}
    try
    {
      if (instance == null) {
        instance = new LoginManager();
      }
      return instance;
    }
    finally {}
  }
  
  private LoginLogger getLogger()
  {
    if ((loginLogger == null) || (!loginLogger.getApplicationId().equals(pendingLoginRequest.getApplicationId()))) {
      loginLogger = new LoginLogger(context, pendingLoginRequest.getApplicationId());
    }
    return loginLogger;
  }
  
  private static Set<String> getOtherPublishPermissions()
  {
    Collections.unmodifiableSet(new HashSet() {});
  }
  
  static boolean isPublishPermission(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("publish")) || (paramString.startsWith("manage")) || (OTHER_PUBLISH_PERMISSIONS.contains(paramString)));
  }
  
  private void logCompleteLogin(LoginClient.Result.Code paramCode, Map<String, String> paramMap, Exception paramException)
  {
    if (pendingLoginRequest == null)
    {
      getLogger().logUnexpectedError("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
      return;
    }
    getLogger().logCompleteLogin(pendingLoginRequest.getAuthId(), pendingLoggingExtras, paramCode, paramMap, paramException);
  }
  
  private void logStartLogin()
  {
    getLogger().logStartLogin(pendingLoginRequest);
  }
  
  private boolean resolveIntent(Intent paramIntent)
  {
    return FacebookSdk.getApplicationContext().getPackageManager().resolveActivity(paramIntent, 0) != null;
  }
  
  private void startLogin(StartActivityDelegate paramStartActivityDelegate, LoginClient.Request paramRequest)
  {
    pendingLoginRequest = paramRequest;
    pendingLoggingExtras = new HashMap();
    context = paramStartActivityDelegate.getActivityContext();
    logStartLogin();
    CallbackManagerImpl.registerStaticCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback()
    {
      public boolean onActivityResult(int paramAnonymousInt, Intent paramAnonymousIntent)
      {
        return LoginManager.this.onActivityResult(paramAnonymousInt, paramAnonymousIntent);
      }
    });
    boolean bool = tryFacebookActivity(paramStartActivityDelegate, paramRequest);
    paramRequest = pendingLoggingExtras;
    if (bool) {}
    for (paramStartActivityDelegate = "1";; paramStartActivityDelegate = "0")
    {
      paramRequest.put("try_login_activity", paramStartActivityDelegate);
      if (bool) {
        break;
      }
      paramStartActivityDelegate = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
      logCompleteLogin(LoginClient.Result.Code.ERROR, null, paramStartActivityDelegate);
      pendingLoginRequest = null;
      throw paramStartActivityDelegate;
    }
  }
  
  private boolean tryFacebookActivity(StartActivityDelegate paramStartActivityDelegate, LoginClient.Request paramRequest)
  {
    paramRequest = getFacebookActivityIntent(paramRequest);
    if (!resolveIntent(paramRequest)) {
      return false;
    }
    try
    {
      paramStartActivityDelegate.startActivityForResult(paramRequest, LoginClient.getLoginRequestCode());
      return true;
    }
    catch (ActivityNotFoundException paramStartActivityDelegate) {}
    return false;
  }
  
  private void validatePublishPermissions(Collection<String> paramCollection)
  {
    if (paramCollection == null) {}
    String str;
    do
    {
      return;
      while (!paramCollection.hasNext()) {
        paramCollection = paramCollection.iterator();
      }
      str = (String)paramCollection.next();
    } while (isPublishPermission(str));
    throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", new Object[] { str }));
  }
  
  private void validateReadPermissions(Collection<String> paramCollection)
  {
    if (paramCollection == null) {}
    String str;
    do
    {
      return;
      while (!paramCollection.hasNext()) {
        paramCollection = paramCollection.iterator();
      }
      str = (String)paramCollection.next();
    } while (!isPublishPermission(str));
    throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] { str }));
  }
  
  public DefaultAudience getDefaultAudience()
  {
    return defaultAudience;
  }
  
  public LoginBehavior getLoginBehavior()
  {
    return loginBehavior;
  }
  
  LoginClient.Request getPendingLoginRequest()
  {
    return pendingLoginRequest;
  }
  
  public void logInWithPublishPermissions(Activity paramActivity, Collection<String> paramCollection)
  {
    validatePublishPermissions(paramCollection);
    paramCollection = createLoginRequest(paramCollection);
    startLogin(new ActivityStartActivityDelegate(paramActivity), paramCollection);
  }
  
  public void logInWithPublishPermissions(Fragment paramFragment, Collection<String> paramCollection)
  {
    validatePublishPermissions(paramCollection);
    paramCollection = createLoginRequest(paramCollection);
    startLogin(new FragmentStartActivityDelegate(paramFragment), paramCollection);
  }
  
  public void logInWithReadPermissions(Activity paramActivity, Collection<String> paramCollection)
  {
    validateReadPermissions(paramCollection);
    paramCollection = createLoginRequest(paramCollection);
    startLogin(new ActivityStartActivityDelegate(paramActivity), paramCollection);
  }
  
  public void logInWithReadPermissions(Fragment paramFragment, Collection<String> paramCollection)
  {
    validateReadPermissions(paramCollection);
    paramCollection = createLoginRequest(paramCollection);
    startLogin(new FragmentStartActivityDelegate(paramFragment), paramCollection);
  }
  
  public void logOut()
  {
    AccessToken.setCurrentAccessToken(null);
    Profile.setCurrentProfile(null);
  }
  
  boolean onActivityResult(int paramInt, Intent paramIntent)
  {
    return onActivityResult(paramInt, paramIntent, null);
  }
  
  boolean onActivityResult(int paramInt, Intent paramIntent, FacebookCallback<LoginResult> paramFacebookCallback)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject2 = null;
    if (pendingLoginRequest == null) {
      return false;
    }
    Object localObject1 = LoginClient.Result.Code.ERROR;
    if (paramIntent != null)
    {
      localObject3 = (LoginClient.Result)paramIntent.getParcelableExtra("com.facebook.LoginFragment:Result");
      if (localObject3 == null) {
        break label255;
      }
      localObject4 = code;
      if (paramInt == -1) {
        if (code == LoginClient.Result.Code.SUCCESS)
        {
          paramIntent = token;
          localObject1 = localObject2;
          localObject2 = loggingExtras;
          localObject3 = localObject1;
          localObject1 = localObject2;
          localObject2 = paramIntent;
          paramIntent = (Intent)localObject4;
        }
      }
    }
    for (;;)
    {
      localObject4 = localObject3;
      localObject3 = localObject1;
      localObject1 = paramIntent;
      paramIntent = (Intent)localObject4;
      for (;;)
      {
        localObject4 = paramIntent;
        if (paramIntent == null)
        {
          localObject4 = paramIntent;
          if (localObject2 == null)
          {
            localObject4 = paramIntent;
            if (!bool1) {
              localObject4 = new FacebookException("Unexpected call to LoginManager.onActivityResult");
            }
          }
        }
        logCompleteLogin((LoginClient.Result.Code)localObject1, (Map)localObject3, (Exception)localObject4);
        finishLogin((AccessToken)localObject2, (FacebookException)localObject4, bool1, paramFacebookCallback);
        return true;
        localObject1 = new FacebookAuthorizationException(errorMessage);
        paramIntent = null;
        break;
        if (paramInt != 0) {
          break label246;
        }
        bool1 = true;
        paramIntent = null;
        localObject1 = localObject2;
        break;
        if (paramInt == 0)
        {
          localObject1 = LoginClient.Result.Code.CANCEL;
          bool1 = true;
          localObject2 = null;
          paramIntent = null;
        }
        else
        {
          localObject2 = null;
          paramIntent = null;
          bool1 = bool3;
        }
      }
      label246:
      paramIntent = null;
      localObject1 = localObject2;
      break;
      label255:
      paramIntent = (Intent)localObject1;
      localObject3 = null;
      localObject2 = null;
      bool1 = bool2;
      localObject1 = localObject4;
    }
  }
  
  public void registerCallback(CallbackManager paramCallbackManager, final FacebookCallback<LoginResult> paramFacebookCallback)
  {
    if (!(paramCallbackManager instanceof CallbackManagerImpl)) {
      throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }
    ((CallbackManagerImpl)paramCallbackManager).registerCallback(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.Callback()
    {
      public boolean onActivityResult(int paramAnonymousInt, Intent paramAnonymousIntent)
      {
        return onActivityResult(paramAnonymousInt, paramAnonymousIntent, paramFacebookCallback);
      }
    });
  }
  
  public void resolveError(Activity paramActivity, GraphResponse paramGraphResponse)
  {
    startLogin(new ActivityStartActivityDelegate(paramActivity), createLoginRequestFromResponse(paramGraphResponse));
  }
  
  public void resolveError(Fragment paramFragment, GraphResponse paramGraphResponse)
  {
    startLogin(new FragmentStartActivityDelegate(paramFragment), createLoginRequestFromResponse(paramGraphResponse));
  }
  
  public LoginManager setDefaultAudience(DefaultAudience paramDefaultAudience)
  {
    defaultAudience = paramDefaultAudience;
    return this;
  }
  
  public LoginManager setLoginBehavior(LoginBehavior paramLoginBehavior)
  {
    loginBehavior = paramLoginBehavior;
    return this;
  }
  
  private static class ActivityStartActivityDelegate
    implements StartActivityDelegate
  {
    private final Activity activity;
    
    ActivityStartActivityDelegate(Activity paramActivity)
    {
      Validate.notNull(paramActivity, "activity");
      activity = paramActivity;
    }
    
    public Activity getActivityContext()
    {
      return activity;
    }
    
    public void startActivityForResult(Intent paramIntent, int paramInt)
    {
      activity.startActivityForResult(paramIntent, paramInt);
    }
  }
  
  private static class FragmentStartActivityDelegate
    implements StartActivityDelegate
  {
    private final Fragment fragment;
    
    FragmentStartActivityDelegate(Fragment paramFragment)
    {
      Validate.notNull(paramFragment, "fragment");
      fragment = paramFragment;
    }
    
    public Activity getActivityContext()
    {
      return fragment.getActivity();
    }
    
    public void startActivityForResult(Intent paramIntent, int paramInt)
    {
      fragment.startActivityForResult(paramIntent, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */