package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.facebook.internal.Validate;

class LoginManager$FragmentStartActivityDelegate
  implements StartActivityDelegate
{
  private final Fragment fragment;
  
  LoginManager$FragmentStartActivityDelegate(Fragment paramFragment)
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

/* Location:
 * Qualified Name:     com.facebook.login.LoginManager.FragmentStartActivityDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */