package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.content.Context;
import android.widget.ScrollView;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.CreateEndpointResponse;

final class AccountUIHelper$17
  implements ResponseModelListener
{
  AccountUIHelper$17(Context paramContext, String paramString1, String paramString2, String paramString3) {}
  
  public final void a()
  {
    AccountUIHelper.d();
    AccountUIHelper.c();
    AccountUIHelper.b(a, AccountUIHelper.i(), c, "There was an issue creating your account. Please try again later.");
    AccountUIHelper.f(a, "CBS Create Account", "There was an issue creating your account. Please try again later.");
    AccountUIHelper.b();
  }
  
  public final void a(final ResponseModel paramResponseModel)
  {
    AccountUIHelper.d();
    if (a != null)
    {
      if ((paramResponseModel == null) || (!(paramResponseModel instanceof CreateEndpointResponse))) {
        break label167;
      }
      paramResponseModel = (CreateEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        paramResponseModel = Long.valueOf(paramResponseModel.getUserId()).toString();
        String str = AccountUIHelper.c(a);
        AccountUIHelper.d();
        AccountUIHelper.d(a, paramResponseModel, str);
        AccountUIHelper.a(a, false, b, null);
        AccountUIHelper.a(a, AccountUIHelper.i(), c);
      }
    }
    else
    {
      return;
    }
    if (d == null) {}
    for (paramResponseModel = AccountUIHelper.a(paramResponseModel);; paramResponseModel = AccountUIHelper.b(paramResponseModel))
    {
      AccountUIHelper.b(a, AccountUIHelper.i(), c, paramResponseModel);
      AccountUIHelper.a(AccountUIHelper.l(), paramResponseModel);
      paramResponseModel = (ScrollView)AccountUIHelper.l().findViewById(2131689791);
      AccountUIHelper.d();
      paramResponseModel.post(new Runnable()
      {
        public final void run()
        {
          paramResponseModel.smoothScrollTo(0, 0);
        }
      });
      return;
    }
    label167:
    AccountUIHelper.c();
    AccountUIHelper.b(a, AccountUIHelper.i(), c, "There was an issue creating your account. Please try again later.");
    AccountUIHelper.f(a, "CBS Create Account", "There was an issue creating your account. Please try again later.");
    AccountUIHelper.b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */