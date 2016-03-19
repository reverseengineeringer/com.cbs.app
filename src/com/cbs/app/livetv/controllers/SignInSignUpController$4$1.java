package com.cbs.app.livetv.controllers;

import com.cbs.app.livetv.callbacks.SignInSignUpCallBack;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.DoneListener;

final class SignInSignUpController$4$1
  implements DoneListener
{
  SignInSignUpController$4$1(SignInSignUpController.4 param4, String paramString) {}
  
  public final void a(String paramString)
  {
    if (SignInSignUpController.b(b.d) != null) {
      SignInSignUpController.b(b.d).a(1004, a);
    }
    SVODPopupHelper.c(SignInSignUpController.c(b.d), paramString);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.controllers.SignInSignUpController.4.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */