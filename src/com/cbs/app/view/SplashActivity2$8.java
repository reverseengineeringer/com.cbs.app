package com.cbs.app.view;

import com.cbs.app.manager.AuthStatusManager.AuthStatusResponseListener;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;

final class SplashActivity2$8
  implements AuthStatusManager.AuthStatusResponseListener
{
  SplashActivity2$8(SplashActivity2 paramSplashActivity2) {}
  
  public final void a()
  {
    a.c = true;
    a.a();
    a.getTonightData();
  }
  
  public final void b()
  {
    a.c = true;
    SplashActivity2.h(a);
    SplashActivity2.i(a);
    SplashActivity2.a(a, "ANONYMOUS");
    new AuthServiceImpl().a(a);
    a.getTonightData();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */