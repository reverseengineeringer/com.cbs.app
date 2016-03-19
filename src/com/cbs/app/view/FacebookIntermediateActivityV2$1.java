package com.cbs.app.view;

import android.widget.Toast;
import com.facebook.FacebookCallback;
import com.facebook.FacebookException;
import com.facebook.login.LoginResult;

final class FacebookIntermediateActivityV2$1
  implements FacebookCallback<LoginResult>
{
  FacebookIntermediateActivityV2$1(FacebookIntermediateActivityV2 paramFacebookIntermediateActivityV2) {}
  
  public final void onCancel()
  {
    Toast.makeText(a, "Login Cancel", 1).show();
    a.finish();
  }
  
  public final void onError(FacebookException paramFacebookException)
  {
    Toast.makeText(a, paramFacebookException.getMessage(), 1).show();
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.FacebookIntermediateActivityV2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */