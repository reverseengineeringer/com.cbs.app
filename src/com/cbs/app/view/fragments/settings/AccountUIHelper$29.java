package com.cbs.app.view.fragments.settings;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;

final class AccountUIHelper$29
  implements ResponseModelListener
{
  AccountUIHelper$29(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, String paramString8, String paramString9, String paramString10, String paramString11) {}
  
  public final void a()
  {
    AccountUIHelper.f(a, "CBS Sign In", "There was an issue connecting to our servers. Please try again later.");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (((AuthStatusEndpointResponse)paramResponseModel).isSuccess()) {
      AccountUIHelper.a(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p);
    }
    while (AccountUIHelper.l() == null) {
      return;
    }
    AccountUIHelper.a(AccountUIHelper.l(), "Enter a valid zip code.");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.29
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */