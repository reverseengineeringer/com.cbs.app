package android.support.design.internal;

import android.content.Context;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.SubMenuBuilder;

public final class c
  extends SubMenuBuilder
{
  public c(Context paramContext, a parama, MenuItemImpl paramMenuItemImpl)
  {
    super(paramContext, parama, paramMenuItemImpl);
  }
  
  public final void onItemsChanged(boolean paramBoolean)
  {
    super.onItemsChanged(paramBoolean);
    ((MenuBuilder)getParentMenu()).onItemsChanged(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */