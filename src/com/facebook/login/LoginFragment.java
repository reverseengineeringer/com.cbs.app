package com.facebook.login;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.R.id;
import com.facebook.R.layout;

public class LoginFragment
  extends Fragment
{
  private static final String EXTRA_REQUEST = "request";
  private static final String NULL_CALLING_PKG_ERROR_MSG = "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.";
  static final String RESULT_KEY = "com.facebook.LoginFragment:Result";
  private static final String SAVED_LOGIN_CLIENT = "loginClient";
  private static final String TAG = "LoginFragment";
  private String callingPackage;
  private LoginClient loginClient;
  private LoginClient.Request request;
  
  private void initializeCallingPackage(Activity paramActivity)
  {
    paramActivity = paramActivity.getCallingActivity();
    if (paramActivity == null) {
      return;
    }
    callingPackage = paramActivity.getPackageName();
  }
  
  private void onLoginClientCompleted(LoginClient.Result paramResult)
  {
    request = null;
    if (code == LoginClient.Result.Code.CANCEL) {}
    for (int i = 0;; i = -1)
    {
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("com.facebook.LoginFragment:Result", paramResult);
      paramResult = new Intent();
      paramResult.putExtras(localBundle);
      if (isAdded())
      {
        getActivity().setResult(i, paramResult);
        getActivity().finish();
      }
      return;
    }
  }
  
  static Bundle populateIntentExtras(LoginClient.Request paramRequest)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("request", paramRequest);
    return localBundle;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    loginClient.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      loginClient = ((LoginClient)paramBundle.getParcelable("loginClient"));
      loginClient.setFragment(this);
      loginClient.setOnCompletedListener(new LoginClient.OnCompletedListener()
      {
        public void onCompleted(LoginClient.Result paramAnonymousResult)
        {
          LoginFragment.this.onLoginClientCompleted(paramAnonymousResult);
        }
      });
      paramBundle = getActivity();
      if (paramBundle != null) {
        break label70;
      }
    }
    label70:
    do
    {
      return;
      loginClient = new LoginClient(this);
      break;
      initializeCallingPackage(paramBundle);
    } while (paramBundle.getIntent() == null);
    request = ((LoginClient.Request)paramBundle.getIntent().getParcelableExtra("request"));
  }
  
  public View onCreateView(final LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.com_facebook_login_fragment, paramViewGroup, false);
    loginClient.setBackgroundProcessingListener(new LoginClient.BackgroundProcessingListener()
    {
      public void onBackgroundProcessingStarted()
      {
        paramLayoutInflater.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(0);
      }
      
      public void onBackgroundProcessingStopped()
      {
        paramLayoutInflater.findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
      }
    });
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    loginClient.cancelCurrentHandler();
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    getActivity().findViewById(R.id.com_facebook_login_activity_progress_bar).setVisibility(8);
  }
  
  public void onResume()
  {
    super.onResume();
    if (callingPackage == null)
    {
      Log.e("LoginFragment", "Cannot call LoginFragment with a null calling package. This can occur if the launchMode of the caller is singleInstance.");
      getActivity().finish();
      return;
    }
    loginClient.startOrContinueAuth(request);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelable("loginClient", loginClient);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */