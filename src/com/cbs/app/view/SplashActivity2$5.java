package com.cbs.app.view;

import com.cbs.app.manager.StatusManager;
import com.cbs.app.manager.StatusManager.StatusResponseListener;

final class SplashActivity2$5
  implements StatusManager.StatusResponseListener
{
  SplashActivity2$5(SplashActivity2 paramSplashActivity2) {}
  
  public final void a()
  {
    SplashActivity2.b(a);
    a.getUserStatus();
  }
  
  public final void b()
  {
    UnableToConnectDialogHelper.a(a, "Refresh", a.j, "Exit", a.e);
  }
  
  public final void c()
  {
    if (SplashActivity2.a(a)) {
      StatusManager.a(a);
    }
  }
  
  public final void d()
  {
    if (SplashActivity2.a(a)) {
      StatusManager.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */