package com.cbs.app.livetv.controllers;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.livetv.model.Person;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;

final class SignInSignUpController$1
  implements ResponseModelListener
{
  SignInSignUpController$1(SignInSignUpController paramSignInSignUpController, Person paramPerson, String paramString) {}
  
  public final void a()
  {
    SignInSignUpController.a(c, 2004);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!SignInSignUpController.a(c))
    {
      if (!((AuthStatusEndpointResponse)paramResponseModel).isSuccess()) {
        break label36;
      }
      SignInSignUpController.a(c, a, b);
    }
    label36:
    while (SignInSignUpController.b(c) == null) {
      return;
    }
    SignInSignUpController.b(c).a(2011, null);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */