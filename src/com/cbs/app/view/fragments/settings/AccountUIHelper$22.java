package com.cbs.app.view.fragments.settings;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.ReconcileEndpointResponse;

final class AccountUIHelper$22
  implements ResponseModelListener
{
  AccountUIHelper$22(Context paramContext, String paramString1, String paramString2, String paramString3) {}
  
  public final void a()
  {
    AccountUIHelper.d();
    AccountUIHelper.c();
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue creating your account. Please try again later.");
    AccountUIHelper.b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    AccountUIHelper.d();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof ReconcileEndpointResponse)))
    {
      paramResponseModel = (ReconcileEndpointResponse)paramResponseModel;
      String str = paramResponseModel.getRegistrationStatus();
      if (paramResponseModel.isSuccess())
      {
        AccountUIHelper.d();
        AccountUIHelper.e(a, null);
        AccountUIHelper.e(a, AccountUIHelper.i(), b);
        return;
      }
      if ((str != null) && (str.equals("NEW")))
      {
        AccountUIHelper.a(a, b, c, d);
        return;
      }
      AccountUIHelper.c();
      AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
      AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
      AccountUIHelper.b();
      return;
    }
    AccountUIHelper.c();
    AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
    AccountUIHelper.b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.22
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */