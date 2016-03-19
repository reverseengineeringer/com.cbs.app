package android.support.design.internal;

import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.view.View;
import android.view.View.OnClickListener;

final class b$1
  implements View.OnClickListener
{
  b$1(b paramb) {}
  
  public final void onClick(View paramView)
  {
    paramView = (NavigationMenuItemView)paramView;
    a.a(true);
    paramView = paramView.getItemData();
    boolean bool = b.a(a).performItemAction(paramView, a, 0);
    if ((paramView != null) && (paramView.isCheckable()) && (bool)) {
      b.b(a).a(paramView);
    }
    a.a(false);
    a.updateMenuView(false);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */