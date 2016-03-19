package com.cbs.app.view;

import android.app.Activity;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.ActionBarDrawerToggle;
import android.view.View;
import com.cbs.app.view.menu.DrawerStatusListener;
import com.cbs.app.view.utils.Util;

final class NavigationActivity$6
  extends ActionBarDrawerToggle
{
  NavigationActivity$6(NavigationActivity paramNavigationActivity, Activity paramActivity, DrawerLayout paramDrawerLayout)
  {
    super(paramActivity, paramDrawerLayout, 2131231005, 2131231004);
  }
  
  public final void onDrawerClosed(View paramView)
  {
    if ((a.b.equals("Home")) && (!NavigationActivity.a(a))) {
      a.f();
    }
    for (;;)
    {
      if (NavigationActivity.b(a) != null) {
        NavigationActivity.b(a).b();
      }
      a.invalidateOptionsMenu();
      return;
      a.e();
    }
  }
  
  public final void onDrawerOpened(View paramView)
  {
    Util.a(a);
    if (NavigationActivity.b(a) != null) {
      NavigationActivity.b(a).a();
    }
    a.f();
    a.invalidateOptionsMenu();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NavigationActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */