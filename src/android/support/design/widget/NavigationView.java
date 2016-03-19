package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.design.R.attr;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.design.internal.a;
import android.support.design.internal.b;
import android.support.v4.content.ContextCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuItemImpl;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;

public class NavigationView
  extends ScrimInsetsFrameLayout
{
  private static final int[] a = { 16842912 };
  private static final int[] b = { -16842910 };
  private final a c;
  private final b d = new b();
  private a e;
  private int f;
  private MenuInflater g;
  
  public NavigationView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.a(paramContext);
    c = new a(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.NavigationView, paramInt, R.style.Widget_Design_NavigationView);
    setBackgroundDrawable(localTypedArray.getDrawable(R.styleable.NavigationView_android_background));
    if (localTypedArray.hasValue(R.styleable.NavigationView_elevation)) {
      ViewCompat.setElevation(this, localTypedArray.getDimensionPixelSize(R.styleable.NavigationView_elevation, 0));
    }
    ViewCompat.setFitsSystemWindows(this, localTypedArray.getBoolean(R.styleable.NavigationView_android_fitsSystemWindows, false));
    f = localTypedArray.getDimensionPixelSize(R.styleable.NavigationView_android_maxWidth, 0);
    ColorStateList localColorStateList;
    if (localTypedArray.hasValue(R.styleable.NavigationView_itemIconTint))
    {
      localColorStateList = localTypedArray.getColorStateList(R.styleable.NavigationView_itemIconTint);
      if (!localTypedArray.hasValue(R.styleable.NavigationView_itemTextAppearance)) {
        break label435;
      }
      paramInt = localTypedArray.getResourceId(R.styleable.NavigationView_itemTextAppearance, 0);
    }
    for (int i = 1;; i = 0)
    {
      paramAttributeSet = null;
      if (localTypedArray.hasValue(R.styleable.NavigationView_itemTextColor)) {
        paramAttributeSet = localTypedArray.getColorStateList(R.styleable.NavigationView_itemTextColor);
      }
      Object localObject = paramAttributeSet;
      if (i == 0)
      {
        localObject = paramAttributeSet;
        if (paramAttributeSet == null) {
          localObject = a(16842806);
        }
      }
      paramAttributeSet = localTypedArray.getDrawable(R.styleable.NavigationView_itemBackground);
      c.setCallback(new MenuBuilder.Callback()
      {
        public final boolean onMenuItemSelected(MenuBuilder paramAnonymousMenuBuilder, MenuItem paramAnonymousMenuItem)
        {
          return (NavigationView.a(NavigationView.this) != null) && (NavigationView.a(NavigationView.this).a());
        }
        
        public final void onMenuModeChange(MenuBuilder paramAnonymousMenuBuilder) {}
      });
      d.a();
      d.initForMenu(paramContext, c);
      d.a(localColorStateList);
      if (i != 0) {
        d.b(paramInt);
      }
      d.b((ColorStateList)localObject);
      d.a(paramAttributeSet);
      c.addMenuPresenter(d);
      addView((View)d.getMenuView(this));
      if (localTypedArray.hasValue(R.styleable.NavigationView_menu))
      {
        paramInt = localTypedArray.getResourceId(R.styleable.NavigationView_menu, 0);
        d.a(true);
        if (g == null) {
          g = new SupportMenuInflater(getContext());
        }
        g.inflate(paramInt, c);
        d.a(false);
        d.updateMenuView(false);
      }
      if (localTypedArray.hasValue(R.styleable.NavigationView_headerLayout))
      {
        paramInt = localTypedArray.getResourceId(R.styleable.NavigationView_headerLayout, 0);
        d.a(paramInt);
      }
      localTypedArray.recycle();
      return;
      localColorStateList = a(16842808);
      break;
      label435:
      paramInt = 0;
    }
  }
  
  private ColorStateList a(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {}
    ColorStateList localColorStateList;
    do
    {
      return null;
      localColorStateList = getResources().getColorStateList(resourceId);
    } while (!getContext().getTheme().resolveAttribute(R.attr.colorPrimary, (TypedValue)localObject, true));
    paramInt = data;
    int i = localColorStateList.getDefaultColor();
    localObject = b;
    int[] arrayOfInt1 = a;
    int[] arrayOfInt2 = EMPTY_STATE_SET;
    int j = localColorStateList.getColorForState(b, i);
    return new ColorStateList(new int[][] { localObject, arrayOfInt1, arrayOfInt2 }, new int[] { j, paramInt, i });
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      i = paramInt1;
    }
    for (;;)
    {
      super.onMeasure(i, paramInt2);
      return;
      i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), f), 1073741824);
      continue;
      i = View.MeasureSpec.makeMeasureSpec(f, 1073741824);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    c.restorePresenterStates(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = new Bundle();
    c.savePresenterStates(a);
    return localSavedState;
  }
  
  public void setCheckedItem(int paramInt)
  {
    MenuItem localMenuItem = c.findItem(paramInt);
    if (localMenuItem != null) {
      d.a((MenuItemImpl)localMenuItem);
    }
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    d.a(paramDrawable);
  }
  
  public void setItemBackgroundResource(int paramInt)
  {
    setItemBackground(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    d.a(paramColorStateList);
  }
  
  public void setItemTextAppearance(int paramInt)
  {
    d.b(paramInt);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    d.b(paramColorStateList);
  }
  
  public void setNavigationItemSelectedListener(a parama)
  {
    e = parama;
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {});
    public Bundle a;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      a = paramParcel.readBundle(paramClassLoader);
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(a);
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean a();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.NavigationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */