package com.facebook.login.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.AccessToken;
import com.facebook.Profile;
import com.facebook.R.string;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.LoginAuthorizationType;
import com.facebook.login.LoginManager;

class LoginButton$LoginClickListener
  implements View.OnClickListener
{
  private LoginButton$LoginClickListener(LoginButton paramLoginButton) {}
  
  public void onClick(View paramView)
  {
    LoginButton.access$400(this$0, paramView);
    Object localObject2 = this$0.getContext();
    AccessToken localAccessToken = AccessToken.getCurrentAccessToken();
    Object localObject1;
    if (localAccessToken != null) {
      if (LoginButton.access$500(this$0))
      {
        localObject1 = this$0.getResources().getString(R.string.com_facebook_loginview_log_out_action);
        String str = this$0.getResources().getString(R.string.com_facebook_loginview_cancel_action);
        paramView = Profile.getCurrentProfile();
        if ((paramView != null) && (paramView.getName() != null))
        {
          paramView = String.format(this$0.getResources().getString(R.string.com_facebook_loginview_logged_in_as), new Object[] { paramView.getName() });
          localObject2 = new AlertDialog.Builder((Context)localObject2);
          ((AlertDialog.Builder)localObject2).setMessage(paramView).setCancelable(true).setPositiveButton((CharSequence)localObject1, new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              this$0.getLoginManager().logOut();
            }
          }).setNegativeButton(str, null);
          ((AlertDialog.Builder)localObject2).create().show();
          label157:
          paramView = AppEventsLogger.newLogger(this$0.getContext());
          localObject1 = new Bundle();
          if (localAccessToken == null) {
            break label403;
          }
        }
      }
    }
    label403:
    for (int i = 0;; i = 1)
    {
      ((Bundle)localObject1).putInt("logging_in", i);
      paramView.logSdkEvent(LoginButton.access$1100(this$0), null, (Bundle)localObject1);
      return;
      paramView = this$0.getResources().getString(R.string.com_facebook_loginview_logged_in_using_facebook);
      break;
      this$0.getLoginManager().logOut();
      break label157;
      paramView = this$0.getLoginManager();
      paramView.setDefaultAudience(this$0.getDefaultAudience());
      paramView.setLoginBehavior(this$0.getLoginBehavior());
      if (LoginAuthorizationType.PUBLISH.equals(LoginButton.LoginButtonProperties.access$700(LoginButton.access$600(this$0))))
      {
        if (this$0.getFragment() != null)
        {
          paramView.logInWithPublishPermissions(this$0.getFragment(), LoginButton.LoginButtonProperties.access$800(LoginButton.access$600(this$0)));
          break label157;
        }
        paramView.logInWithPublishPermissions(LoginButton.access$900(this$0), LoginButton.LoginButtonProperties.access$800(LoginButton.access$600(this$0)));
        break label157;
      }
      if (this$0.getFragment() != null)
      {
        paramView.logInWithReadPermissions(this$0.getFragment(), LoginButton.LoginButtonProperties.access$800(LoginButton.access$600(this$0)));
        break label157;
      }
      paramView.logInWithReadPermissions(LoginButton.access$1000(this$0), LoginButton.LoginButtonProperties.access$800(LoginButton.access$600(this$0)));
      break label157;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.LoginButton.LoginClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */