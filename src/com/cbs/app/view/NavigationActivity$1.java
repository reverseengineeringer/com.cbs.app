package com.cbs.app.view;

import com.cbs.app.manager.StatusManager;
import com.cbs.app.manager.StatusManager.StatusResponseListener;

final class NavigationActivity$1
  implements StatusManager.StatusResponseListener
{
  NavigationActivity$1(NavigationActivity paramNavigationActivity) {}
  
  public final void a()
  {
    a.h = true;
  }
  
  public final void b()
  {
    a.h = true;
    NavigationActivity.j();
  }
  
  public final void c()
  {
    if (a.i) {
      StatusManager.a(a);
    }
  }
  
  public final void d()
  {
    if (a.i) {
      StatusManager.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NavigationActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */