package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.livetv.model.SocialProvider;
import com.cbs.app.livetv.util.ResponseErrorHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.rest.CreateEndpointResponse;

final class SignInSignUpController$2
  implements ResponseModelListener
{
  SignInSignUpController$2(SignInSignUpController paramSignInSignUpController, String paramString, Person paramPerson) {}
  
  public final void a()
  {
    SignInSignUpController.b();
    AccountUIHelper.b(SignInSignUpController.c(c), SignInSignUpController.d(c), b.i.getNameString(), "There was an issue creating your account. Please try again later.");
    SignInSignUpController.a(c, 2004);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!SignInSignUpController.a(c))
    {
      SignInSignUpController.b();
      if (SignInSignUpController.c(c) != null)
      {
        if ((paramResponseModel == null) || (!(paramResponseModel instanceof CreateEndpointResponse))) {
          break label181;
        }
        paramResponseModel = (CreateEndpointResponse)paramResponseModel;
        if (!paramResponseModel.isSuccess()) {
          break label123;
        }
        long l = paramResponseModel.getUserId();
        paramResponseModel = AccountUIHelper.c(SignInSignUpController.c(c));
        SignInSignUpController.b();
        AccountUIHelper.d(SignInSignUpController.c(c), String.valueOf(l), paramResponseModel);
        SignInSignUpController.a(c, false, null, a);
        AccountUIHelper.a(SignInSignUpController.c(c), SignInSignUpController.d(c), b.i.getNameString());
      }
    }
    return;
    label123:
    if (SignInSignUpController.b(c) != null) {
      SignInSignUpController.b(c).a(2010, ResponseErrorHelper.a(SignInSignUpController.c(c), paramResponseModel.getErrors()));
    }
    AccountUIHelper.a(SignInSignUpController.c(c), paramResponseModel, b.i);
    return;
    label181:
    AccountUIHelper.b(SignInSignUpController.c(c), SignInSignUpController.d(c), b.i.getNameString(), "There was an issue creating your account. Please try again later.");
    SignInSignUpController.a(c, 2004);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */