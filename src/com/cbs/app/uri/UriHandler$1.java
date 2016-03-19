package com.cbs.app.uri;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.model.rest.AuthEndpointResponse;

final class UriHandler$1
  implements ResponseModelListener
{
  UriHandler$1(Context paramContext) {}
  
  public final void a()
  {
    UriHandler.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    UriHandler.a();
    if ((paramResponseModel instanceof AuthEndpointResponse))
    {
      if (((AuthEndpointResponse)paramResponseModel).isSuccess())
      {
        UriHandler.a();
        new AuthServiceImpl().b(a);
        AccountUIHelper.a(a, false, null, null);
      }
    }
    else {
      return;
    }
    UriHandler.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.uri.UriHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */