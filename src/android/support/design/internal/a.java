package android.support.design.internal;

import android.content.Context;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.view.SubMenu;

public final class a
  extends MenuBuilder
{
  public a(Context paramContext)
  {
    super(paramContext);
  }
  
  public final SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (MenuItemImpl)addInternal(paramInt1, paramInt2, paramInt3, paramCharSequence);
    c localc = new c(getContext(), this, paramCharSequence);
    paramCharSequence.setSubMenu(localc);
    return localc;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */