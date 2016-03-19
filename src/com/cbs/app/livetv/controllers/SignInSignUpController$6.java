package com.cbs.app.livetv.controllers;

import android.app.Activity;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.view.fragments.TOUDialogFragment;
import com.cbs.app.view.fragments.TOUDialogFragment.TOUDialogListener;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class SignInSignUpController$6
  implements TOUDialogFragment.TOUDialogListener
{
  SignInSignUpController$6(SignInSignUpController paramSignInSignUpController, String paramString1, String paramString2, AuthStatusEndpointResponse paramAuthStatusEndpointResponse, String paramString3, TOUDialogFragment paramTOUDialogFragment) {}
  
  public final void a()
  {
    if (!SignInSignUpController.a(f))
    {
      SignInSignUpController.b();
      AccountUIHelper.a(SignInSignUpController.c(f), null);
      if (SignInSignUpController.b(f) != null) {
        SignInSignUpController.b(f).a(1009, null);
      }
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (!SignInSignUpController.a(f))
    {
      if (!paramBoolean) {
        break label109;
      }
      AccountUIHelper.d(SignInSignUpController.c(f), a, b);
      AccountUIHelper.a(SignInSignUpController.c(f), c, SignInSignUpController.d(f), null, d);
      e.dismiss();
      if (SignInSignUpController.b(f) != null) {
        SignInSignUpController.b(f).a(1004, a);
      }
    }
    for (;;)
    {
      Util.a((Activity)SignInSignUpController.c(f));
      return;
      label109:
      Action localAction = Action.bm;
      HashMap localHashMap = new HashMap();
      localHashMap.put("appState", "cbscom:" + SignInSignUpController.d(f));
      localHashMap.put("events", "event20");
      localHashMap.put("pageTitle", "setting");
      localHashMap.put("evar_70", "You need to accept our terms in order to continue.");
      localHashMap.put("prop_70", "You need to accept our terms in order to continue.");
      AnalyticsManager.a(SignInSignUpController.c(f), localAction, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */