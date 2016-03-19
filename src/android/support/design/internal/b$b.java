package android.support.design.internal;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.widget.RecyclerView.Adapter;
import android.util.SparseArray;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

final class b$b
  extends RecyclerView.Adapter<b.j>
{
  private final ArrayList<b.d> b = new ArrayList();
  private MenuItemImpl c;
  private ColorDrawable d;
  private boolean e;
  
  b$b(b paramb)
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
    int i3 = b.a(a).getVisibleItems().size();
    int i1 = 0;
    while (i1 < i3)
    {
      MenuItemImpl localMenuItemImpl1 = (MenuItemImpl)b.a(a).getVisibleItems().get(i1);
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
            b.add(new b.e(b.k(a), 0));
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
            b.add(new b.e(b.k(a), b.k(a)));
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

/* Location:
 * Qualified Name:     android.support.design.internal.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */