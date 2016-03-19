package com.cbs.app.view;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.TonightEndpointResponse;

final class SplashActivity2$7
  implements ResponseModelListener
{
  SplashActivity2$7(SplashActivity2 paramSplashActivity2) {}
  
  public final void a()
  {
    if (SplashActivity2.a(a)) {
      UnableToConnectDialogHelper.a(a, "Refresh", a.j, "Exit", a.e);
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if ((paramResponseModel instanceof TonightEndpointResponse))
    {
      SplashActivity2.a(a, (TonightEndpointResponse)paramResponseModel);
      SplashActivity2.g(a);
      a.a = true;
    }
    while (!SplashActivity2.a(a)) {
      return;
    }
    UnableToConnectDialogHelper.a(a, "Refresh", a.j, "Exit", a.e);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */