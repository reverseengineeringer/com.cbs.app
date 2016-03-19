package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.model.SocialProvider;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.rest.ReconcileEndpointResponse;

final class SignInSignUpController$5
  implements ResponseModelListener
{
  SignInSignUpController$5(SignInSignUpController paramSignInSignUpController, SocialProvider paramSocialProvider) {}
  
  public final void a()
  {
    if (!SignInSignUpController.a(b))
    {
      SignInSignUpController.b();
      SignInSignUpController.a(b, 2004);
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    String str;
    if (!SignInSignUpController.a(b))
    {
      SignInSignUpController.b();
      if ((paramResponseModel == null) || (!(paramResponseModel instanceof ReconcileEndpointResponse))) {
        break label154;
      }
      paramResponseModel = (ReconcileEndpointResponse)paramResponseModel;
      str = paramResponseModel.getRegistrationStatus();
      if (!paramResponseModel.isSuccess()) {
        break label81;
      }
      SignInSignUpController.b();
      SignInSignUpController.a(b, true, null, null);
      AccountUIHelper.e(SignInSignUpController.c(b), SignInSignUpController.d(b), a.getNameString());
    }
    label81:
    do
    {
      return;
      if ((str == null) || (!str.equals("NEW"))) {
        break;
      }
    } while (SignInSignUpController.b(b) == null);
    SignInSignUpController.b(b).a(1005, a);
    return;
    AccountUIHelper.c(SignInSignUpController.c(b), SignInSignUpController.d(b), "There was an issue logging into your account. Please try again.");
    SignInSignUpController.a(b, 2004);
    return;
    label154:
    AccountUIHelper.c(SignInSignUpController.c(b), SignInSignUpController.d(b), "There was an issue logging into your account. Please try again.");
    SignInSignUpController.a(b, 2004);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */