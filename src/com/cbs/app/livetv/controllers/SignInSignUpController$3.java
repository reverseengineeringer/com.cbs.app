package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.rest.AuthEndpointResponse;

final class SignInSignUpController$3
  implements ResponseModelListener
{
  SignInSignUpController$3(SignInSignUpController paramSignInSignUpController, String paramString) {}
  
  public final void a()
  {
    SignInSignUpController.a(b, 2003);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!SignInSignUpController.a(b))
    {
      SignInSignUpController.b();
      if ((paramResponseModel == null) || (!(paramResponseModel instanceof AuthEndpointResponse))) {
        break label105;
      }
      if (!((AuthEndpointResponse)paramResponseModel).isSuccess()) {
        break label54;
      }
      SignInSignUpController.b();
      SignInSignUpController.a(b, true, "", a);
    }
    label54:
    do
    {
      return;
      SignInSignUpController.b();
      AccountUIHelper.c(SignInSignUpController.c(b), SignInSignUpController.d(b), "Invalid username/password.");
    } while (SignInSignUpController.b(b) == null);
    SignInSignUpController.b(b).a(2009, "Invalid username/password.");
    return;
    label105:
    SignInSignUpController.b();
    AccountUIHelper.c(SignInSignUpController.c(b), SignInSignUpController.d(b), "There was an issue logging into your account. Please try again.");
    SignInSignUpController.a(b, 2003);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */