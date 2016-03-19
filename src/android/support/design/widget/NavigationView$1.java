package android.support.design.widget;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.view.MenuItem;

final class NavigationView$1
  implements MenuBuilder.Callback
{
  NavigationView$1(NavigationView paramNavigationView) {}
  
  public final boolean onMenuItemSelected(MenuBuilder paramMenuBuilder, MenuItem paramMenuItem)
  {
    return (NavigationView.a(a) != null) && (NavigationView.a(a).a());
  }
  
  public final void onMenuModeChange(MenuBuilder paramMenuBuilder) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.NavigationView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */