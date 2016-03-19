package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;

final class AccountUIHelper$19
  implements ResponseModelListener
{
  AccountUIHelper$19(Context paramContext, boolean paramBoolean, DoneListener paramDoneListener, String paramString1, String paramString2) {}
  
  public final void a()
  {
    AccountUIHelper.c();
    AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
    AccountUIHelper.h(a);
    if (c != null) {
      c.a(e);
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((a != null) && (((Activity)a).isFinishing())) {
      return;
    }
    if ((paramResponseModel != null) && ((paramResponseModel instanceof AuthStatusEndpointResponse)))
    {
      AccountUIHelper.d();
      paramResponseModel = (AuthStatusEndpointResponse)paramResponseModel;
      if ((paramResponseModel.isLoggedIn()) || (paramResponseModel.isSuccess()))
      {
        AccountUIHelper.d();
        AccountUIHelper.c();
        if (b)
        {
          AccountUIHelper.d();
          AccountUIHelper.a(a, AccountUIHelper.i(), paramResponseModel, c, d);
          return;
        }
        AccountUIHelper.d();
        long l = paramResponseModel.getUserId();
        String str = AccountUIHelper.c(a);
        AccountUIHelper.d(a, String.valueOf(l), str);
        AccountUIHelper.a(a, paramResponseModel, AccountUIHelper.i(), c, d, e);
        return;
      }
      AccountUIHelper.d();
      AccountUIHelper.c();
      AccountUIHelper.b();
      AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
      AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
      AccountUIHelper.a(a, c);
      return;
    }
    AccountUIHelper.d();
    AccountUIHelper.c();
    AccountUIHelper.b(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
    AccountUIHelper.a(a, c);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */