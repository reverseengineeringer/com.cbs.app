package com.cbs.app.view.fragments.settings;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.AuthEndpointResponse;

final class AccountUIHelper$18
  implements ResponseModelListener
{
  AccountUIHelper$18(Context paramContext, String paramString) {}
  
  public final void a()
  {
    AccountUIHelper.d();
    if ((a != null) && (!((Activity)a).isFinishing()))
    {
      if (AccountUIHelper.g() != null)
      {
        AccountUIHelper.g().dismiss();
        AccountUIHelper.m();
      }
      AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
      AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
      AccountUIHelper.b();
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    AccountUIHelper.d();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof AuthEndpointResponse)))
    {
      if (((AuthEndpointResponse)paramResponseModel).isSuccess())
      {
        AccountUIHelper.d();
        AccountUIHelper.e(a, b);
      }
      do
      {
        return;
        AccountUIHelper.d();
        AccountUIHelper.c(a, AccountUIHelper.i(), "Invalid username/password.");
        paramResponseModel = ((Activity)a).findViewById(2131689791);
        if (paramResponseModel != null)
        {
          AccountUIHelper.a(paramResponseModel, "Invalid username/password.");
          return;
        }
      } while (AccountUIHelper.g() == null);
      AccountUIHelper.a(AccountUIHelper.g(), "Invalid username/password.");
      return;
    }
    AccountUIHelper.d();
    if (AccountUIHelper.g() != null)
    {
      AccountUIHelper.g().cancel();
      AccountUIHelper.m();
    }
    AccountUIHelper.c(a, AccountUIHelper.i(), "There was an issue logging into your account. Please try again.");
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue logging into your account. Please try again.");
    AccountUIHelper.b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */