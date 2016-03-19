package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;

final class SignInSignUpController$4
  implements ResponseModelListener
{
  SignInSignUpController$4(SignInSignUpController paramSignInSignUpController, boolean paramBoolean, String paramString1, String paramString2) {}
  
  public final void a()
  {
    if (!SignInSignUpController.a(d))
    {
      AccountUIHelper.b(SignInSignUpController.c(d), SignInSignUpController.d(d), "There was an issue logging into your account. Please try again.");
      AccountUIHelper.a(SignInSignUpController.c(d), null);
      if (SignInSignUpController.b(d) != null) {
        SignInSignUpController.b(d).a(2003, null);
      }
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!SignInSignUpController.a(d))
    {
      if ((paramResponseModel == null) || (!(paramResponseModel instanceof AuthStatusEndpointResponse))) {
        break label185;
      }
      SignInSignUpController.b();
      paramResponseModel = (AuthStatusEndpointResponse)paramResponseModel;
      if ((!paramResponseModel.isLoggedIn()) && (!paramResponseModel.isSuccess())) {
        break label150;
      }
      SignInSignUpController.b();
      if (a)
      {
        SignInSignUpController.b();
        d.a(SignInSignUpController.d(d), paramResponseModel, b);
      }
    }
    else
    {
      return;
    }
    SignInSignUpController.b();
    final String str1 = String.valueOf(paramResponseModel.getUserId());
    String str2 = AccountUIHelper.c(SignInSignUpController.c(d));
    AccountUIHelper.d(SignInSignUpController.c(d), str1, str2);
    AccountUIHelper.a(SignInSignUpController.c(d), paramResponseModel, SignInSignUpController.d(d), new DoneListener()
    {
      public final void a(String paramAnonymousString)
      {
        if (SignInSignUpController.b(d) != null) {
          SignInSignUpController.b(d).a(1004, str1);
        }
        SVODPopupHelper.c(SignInSignUpController.c(d), paramAnonymousString);
      }
    }, b, c);
    return;
    label150:
    SignInSignUpController.b();
    AccountUIHelper.b(SignInSignUpController.c(d), SignInSignUpController.d(d), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.a(SignInSignUpController.c(d), null);
    return;
    label185:
    SignInSignUpController.b();
    AccountUIHelper.b(SignInSignUpController.c(d), SignInSignUpController.d(d), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.a(SignInSignUpController.c(d), null);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */