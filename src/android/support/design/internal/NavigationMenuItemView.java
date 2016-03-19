package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.design.R.attr;
import android.support.design.R.dimen;
import android.support.design.R.id;
import android.support.design.R.layout;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView.ItemView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;

public class NavigationMenuItemView
  extends ForegroundLinearLayout
  implements MenuView.ItemView
{
  private static final int[] c = { 16842912 };
  private final int d;
  private final CheckedTextView e;
  private FrameLayout f;
  private MenuItemImpl g;
  private ColorStateList h;
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setOrientation(0);
    LayoutInflater.from(paramContext).inflate(R.layout.design_navigation_menu_item, this, true);
    d = paramContext.getResources().getDimensionPixelSize(R.dimen.design_navigation_icon_size);
    e = ((CheckedTextView)findViewById(R.id.design_menu_item_text));
    e.setDuplicateParentStateEnabled(true);
  }
  
  public final void a()
  {
    if (f != null) {
      f.removeAllViews();
    }
    e.setCompoundDrawables(null, null, null, null);
  }
  
  final void a(ColorStateList paramColorStateList)
  {
    h = paramColorStateList;
    if (g != null) {
      setIcon(g.getIcon());
    }
  }
  
  public MenuItemImpl getItemData()
  {
    return g;
  }
  
  public void initialize(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    g = paramMenuItemImpl;
    StateListDrawable localStateListDrawable;
    if (paramMenuItemImpl.isVisible())
    {
      paramInt = 0;
      setVisibility(paramInt);
      if (getBackground() == null)
      {
        TypedValue localTypedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.colorControlHighlight, localTypedValue, true)) {
          break label199;
        }
        localStateListDrawable = new StateListDrawable();
        localStateListDrawable.addState(c, new ColorDrawable(data));
        localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      }
    }
    for (;;)
    {
      setBackgroundDrawable(localStateListDrawable);
      setCheckable(paramMenuItemImpl.isCheckable());
      setChecked(paramMenuItemImpl.isChecked());
      setEnabled(paramMenuItemImpl.isEnabled());
      setTitle(paramMenuItemImpl.getTitle());
      setIcon(paramMenuItemImpl.getIcon());
      paramMenuItemImpl = paramMenuItemImpl.getActionView();
      if (f == null) {
        f = ((FrameLayout)((ViewStub)findViewById(R.id.design_menu_item_action_area_stub)).inflate());
      }
      f.removeAllViews();
      if (paramMenuItemImpl != null) {
        f.addView(paramMenuItemImpl);
      }
      return;
      paramInt = 8;
      break;
      label199:
      localStateListDrawable = null;
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((g != null) && (g.isCheckable()) && (g.isChecked())) {
      mergeDrawableStates(arrayOfInt, c);
    }
    return arrayOfInt;
  }
  
  public boolean prefersCondensedTitle()
  {
    return false;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
    e.setChecked(paramBoolean);
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (paramDrawable != null)
    {
      localObject = paramDrawable.getConstantState();
      if (localObject != null) {
        break label57;
      }
    }
    for (;;)
    {
      localObject = DrawableCompat.wrap(paramDrawable).mutate();
      ((Drawable)localObject).setBounds(0, 0, d, d);
      DrawableCompat.setTintList((Drawable)localObject, h);
      TextViewCompat.setCompoundDrawablesRelative(e, (Drawable)localObject, null, null, null);
      return;
      label57:
      paramDrawable = ((Drawable.ConstantState)localObject).newDrawable();
    }
  }
  
  public void setShortcut(boolean paramBoolean, char paramChar) {}
  
  public void setTextAppearance(Context paramContext, int paramInt)
  {
    e.setTextAppearance(paramContext, paramInt);
  }
  
  public void setTextColor(ColorStateList paramColorStateList)
  {
    e.setTextColor(paramColorStateList);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    e.setText(paramCharSequence);
  }
  
  public boolean showsIcon()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.NavigationMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */