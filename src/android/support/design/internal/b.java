package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.design.R.dimen;
import android.support.design.R.layout;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.Iterator;

public final class b
  implements MenuPresenter
{
  private NavigationMenuView a;
  private LinearLayout b;
  private MenuPresenter.Callback c;
  private MenuBuilder d;
  private int e;
  private b f;
  private LayoutInflater g;
  private int h;
  private boolean i;
  private ColorStateList j;
  private ColorStateList k;
  private Drawable l;
  private int m;
  private int n;
  private final View.OnClickListener o = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      paramAnonymousView = (NavigationMenuItemView)paramAnonymousView;
      a(true);
      paramAnonymousView = paramAnonymousView.getItemData();
      boolean bool = b.a(b.this).performItemAction(paramAnonymousView, b.this, 0);
      if ((paramAnonymousView != null) && (paramAnonymousView.isCheckable()) && (bool)) {
        b.b(b.this).a(paramAnonymousView);
      }
      a(false);
      updateMenuView(false);
    }
  };
  
  public final View a(int paramInt)
  {
    View localView = g.inflate(paramInt, b, false);
    b.addView(localView);
    a.setPadding(0, 0, 0, a.getPaddingBottom());
    return localView;
  }
  
  public final void a()
  {
    e = 1;
  }
  
  public final void a(ColorStateList paramColorStateList)
  {
    k = paramColorStateList;
    updateMenuView(false);
  }
  
  public final void a(Drawable paramDrawable)
  {
    l = paramDrawable;
  }
  
  public final void a(MenuItemImpl paramMenuItemImpl)
  {
    f.a(paramMenuItemImpl);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (f != null) {
      f.a(paramBoolean);
    }
  }
  
  public final void b(int paramInt)
  {
    h = paramInt;
    i = true;
    updateMenuView(false);
  }
  
  public final void b(ColorStateList paramColorStateList)
  {
    j = paramColorStateList;
    updateMenuView(false);
  }
  
  public final boolean collapseItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public final boolean expandItemActionView(MenuBuilder paramMenuBuilder, MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }
  
  public final boolean flagActionItems()
  {
    return false;
  }
  
  public final int getId()
  {
    return e;
  }
  
  public final MenuView getMenuView(ViewGroup paramViewGroup)
  {
    if (a == null)
    {
      a = ((NavigationMenuView)g.inflate(R.layout.design_navigation_menu, paramViewGroup, false));
      if (f == null) {
        f = new b();
      }
      b = ((LinearLayout)g.inflate(R.layout.design_navigation_item_header, a, false));
      a.setAdapter(f);
    }
    return a;
  }
  
  public final void initForMenu(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    g = LayoutInflater.from(paramContext);
    d = paramMenuBuilder;
    paramContext = paramContext.getResources();
    m = paramContext.getDimensionPixelOffset(R.dimen.design_navigation_padding_top_default);
    n = paramContext.getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
  }
  
  public final void onCloseMenu(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (c != null) {
      c.onCloseMenu(paramMenuBuilder, paramBoolean);
    }
  }
  
  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (Bundle)paramParcelable;
    SparseArray localSparseArray = paramParcelable.getSparseParcelableArray("android:menu:list");
    if (localSparseArray != null) {
      a.restoreHierarchyState(localSparseArray);
    }
    paramParcelable = paramParcelable.getBundle("android:menu:adapter");
    if (paramParcelable != null) {
      f.a(paramParcelable);
    }
  }
  
  public final Parcelable onSaveInstanceState()
  {
    Bundle localBundle = new Bundle();
    if (a != null)
    {
      SparseArray localSparseArray = new SparseArray();
      a.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    }
    if (f != null) {
      localBundle.putBundle("android:menu:adapter", f.b());
    }
    return localBundle;
  }
  
  public final boolean onSubMenuSelected(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }
  
  public final void setCallback(MenuPresenter.Callback paramCallback)
  {
    c = paramCallback;
  }
  
  public final void updateMenuView(boolean paramBoolean)
  {
    if (f != null) {
      f.a();
    }
  }
  
  private static final class a
    extends b.j
  {
    public a(View paramView)
    {
      super();
    }
  }
  
  private final class b
    extends RecyclerView.Adapter<b.j>
  {
    private final ArrayList<b.d> b = new ArrayList();
    private MenuItemImpl c;
    private ColorDrawable d;
    private boolean e;
    
    b()
    {
      c();
    }
    
    private void a(int paramInt1, int paramInt2)
    {
      while (paramInt1 < paramInt2)
      {
        MenuItemImpl localMenuItemImpl = ((b.f)b.get(paramInt1)).a();
        if (localMenuItemImpl.getIcon() == null)
        {
          if (d == null) {
            d = new ColorDrawable(17170445);
          }
          localMenuItemImpl.setIcon(d);
        }
        paramInt1 += 1;
      }
    }
    
    private void c()
    {
      if (e) {
        return;
      }
      e = true;
      b.clear();
      b.add(new b.c((byte)0));
      int k = -1;
      int i = 0;
      int j = 0;
      int i3 = b.a(b.this).getVisibleItems().size();
      int i1 = 0;
      while (i1 < i3)
      {
        MenuItemImpl localMenuItemImpl1 = (MenuItemImpl)b.a(b.this).getVisibleItems().get(i1);
        if (localMenuItemImpl1.isChecked()) {
          a(localMenuItemImpl1);
        }
        if (localMenuItemImpl1.isCheckable()) {
          localMenuItemImpl1.setExclusiveCheckable(false);
        }
        int m;
        int i2;
        int n;
        if (localMenuItemImpl1.hasSubMenu())
        {
          SubMenu localSubMenu = localMenuItemImpl1.getSubMenu();
          if (localSubMenu.hasVisibleItems())
          {
            if (i1 != 0) {
              b.add(new b.e(b.k(b.this), 0));
            }
            b.add(new b.f(localMenuItemImpl1, (byte)0));
            m = 0;
            int i4 = b.size();
            int i5 = localSubMenu.size();
            i2 = 0;
            while (i2 < i5)
            {
              MenuItemImpl localMenuItemImpl2 = (MenuItemImpl)localSubMenu.getItem(i2);
              n = m;
              if (localMenuItemImpl2.isVisible())
              {
                n = m;
                if (m == 0)
                {
                  n = m;
                  if (localMenuItemImpl2.getIcon() != null) {
                    n = 1;
                  }
                }
                if (localMenuItemImpl2.isCheckable()) {
                  localMenuItemImpl2.setExclusiveCheckable(false);
                }
                if (localMenuItemImpl1.isChecked()) {
                  a(localMenuItemImpl1);
                }
                b.add(new b.f(localMenuItemImpl2, (byte)0));
              }
              i2 += 1;
              m = n;
            }
            if (m != 0) {
              a(i4, b.size());
            }
          }
          m = j;
          j = k;
          k = i;
          i = m;
          i1 += 1;
          m = j;
          j = i;
          i = k;
          k = m;
        }
        else
        {
          n = localMenuItemImpl1.getGroupId();
          if (n != k)
          {
            i2 = b.size();
            if (localMenuItemImpl1.getIcon() != null)
            {
              i = 1;
              label405:
              k = i;
              m = i2;
              if (i1 == 0) {
                break label548;
              }
              b.add(new b.e(b.k(b.this), b.k(b.this)));
              j = i;
            }
          }
          for (i = i2 + 1;; i = m)
          {
            if ((j != 0) && (localMenuItemImpl1.getIcon() == null)) {
              localMenuItemImpl1.setIcon(17170445);
            }
            b.add(new b.f(localMenuItemImpl1, (byte)0));
            k = i;
            m = n;
            i = j;
            j = m;
            break;
            i = 0;
            break label405;
            k = j;
            m = i;
            if (j == 0)
            {
              k = j;
              m = i;
              if (localMenuItemImpl1.getIcon() != null)
              {
                k = 1;
                a(i, b.size());
                m = i;
              }
            }
            label548:
            j = k;
          }
        }
      }
      e = false;
    }
    
    public final void a()
    {
      c();
      notifyDataSetChanged();
    }
    
    public final void a(Bundle paramBundle)
    {
      int i = paramBundle.getInt("android:menu:checked", 0);
      if (i != 0)
      {
        e = true;
        localObject1 = b.iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (b.d)((Iterator)localObject1).next();
          if ((localObject2 instanceof b.f))
          {
            localObject2 = ((b.f)localObject2).a();
            if ((localObject2 != null) && (((MenuItemImpl)localObject2).getItemId() == i)) {
              a((MenuItemImpl)localObject2);
            }
          }
        }
        e = false;
        c();
      }
      Object localObject1 = paramBundle.getSparseParcelableArray("android:menu:action_views");
      Object localObject2 = b.iterator();
      label182:
      while (((Iterator)localObject2).hasNext())
      {
        paramBundle = (b.d)((Iterator)localObject2).next();
        if ((paramBundle instanceof b.f))
        {
          MenuItemImpl localMenuItemImpl = ((b.f)paramBundle).a();
          if (localMenuItemImpl != null) {}
          for (paramBundle = localMenuItemImpl.getActionView();; paramBundle = null)
          {
            if (paramBundle == null) {
              break label182;
            }
            paramBundle.restoreHierarchyState((SparseArray)((SparseArray)localObject1).get(localMenuItemImpl.getItemId()));
            break;
          }
        }
      }
    }
    
    public final void a(MenuItemImpl paramMenuItemImpl)
    {
      if ((c == paramMenuItemImpl) || (!paramMenuItemImpl.isCheckable())) {
        return;
      }
      if (c != null) {
        c.setChecked(false);
      }
      c = paramMenuItemImpl;
      paramMenuItemImpl.setChecked(true);
    }
    
    public final void a(boolean paramBoolean)
    {
      e = paramBoolean;
    }
    
    public final Bundle b()
    {
      Bundle localBundle = new Bundle();
      if (c != null) {
        localBundle.putInt("android:menu:checked", c.getItemId());
      }
      SparseArray localSparseArray = new SparseArray();
      Iterator localIterator = b.iterator();
      label129:
      while (localIterator.hasNext())
      {
        Object localObject = (b.d)localIterator.next();
        if ((localObject instanceof b.f))
        {
          MenuItemImpl localMenuItemImpl = ((b.f)localObject).a();
          if (localMenuItemImpl != null) {}
          for (localObject = localMenuItemImpl.getActionView();; localObject = null)
          {
            if (localObject == null) {
              break label129;
            }
            ParcelableSparseArray localParcelableSparseArray = new ParcelableSparseArray();
            ((View)localObject).saveHierarchyState(localParcelableSparseArray);
            localSparseArray.put(localMenuItemImpl.getItemId(), localParcelableSparseArray);
            break;
          }
        }
      }
      localBundle.putSparseParcelableArray("android:menu:action_views", localSparseArray);
      return localBundle;
    }
    
    public final int getItemCount()
    {
      return b.size();
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final int getItemViewType(int paramInt)
    {
      b.d locald = (b.d)b.get(paramInt);
      if ((locald instanceof b.e)) {
        return 2;
      }
      if ((locald instanceof b.c)) {
        return 3;
      }
      if ((locald instanceof b.f))
      {
        if (((b.f)locald).a().hasSubMenu()) {
          return 1;
        }
        return 0;
      }
      throw new RuntimeException("Unknown item type.");
    }
  }
  
  private static final class c
    implements b.d
  {}
  
  private static abstract interface d {}
  
  private static final class e
    implements b.d
  {
    private final int a;
    private final int b;
    
    public e(int paramInt1, int paramInt2)
    {
      a = paramInt1;
      b = paramInt2;
    }
    
    public final int a()
    {
      return a;
    }
    
    public final int b()
    {
      return b;
    }
  }
  
  private static final class f
    implements b.d
  {
    private final MenuItemImpl a;
    
    private f(MenuItemImpl paramMenuItemImpl)
    {
      a = paramMenuItemImpl;
    }
    
    public final MenuItemImpl a()
    {
      return a;
    }
  }
  
  private static final class g
    extends b.j
  {
    public g(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, View.OnClickListener paramOnClickListener)
    {
      super();
      itemView.setOnClickListener(paramOnClickListener);
    }
  }
  
  private static final class h
    extends b.j
  {
    public h(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static final class i
    extends b.j
  {
    public i(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
    {
      super();
    }
  }
  
  private static abstract class j
    extends RecyclerView.ViewHolder
  {
    public j(View paramView)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */