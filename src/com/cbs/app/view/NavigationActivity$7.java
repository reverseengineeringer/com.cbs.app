package com.cbs.app.view;

import android.support.v4.widget.DrawerLayout;

final class NavigationActivity$7
  implements Runnable
{
  NavigationActivity$7(NavigationActivity paramNavigationActivity) {}
  
  public final void run()
  {
    a.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        NavigationActivity.d(a).closeDrawer(NavigationActivity.c(a));
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NavigationActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */