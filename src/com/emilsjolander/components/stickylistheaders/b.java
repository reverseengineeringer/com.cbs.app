package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import java.util.WeakHashMap;

class b
  extends BaseAdapter
  implements a
{
  final a a;
  int b;
  int c;
  private final Context d;
  private Drawable e;
  private int f;
  private WeakHashMap<View, Void> g = new WeakHashMap();
  private SparseIntArray h = new SparseIntArray();
  private int i;
  private int j;
  private int k = -1;
  private DataSetObservable l = new DataSetObservable();
  private DataSetObservable m = new DataSetObservable();
  private DataSetObserver n = new DataSetObserver()
  {
    public final void onChanged()
    {
      b.a(b.this);
      b.b(b.this).notifyChanged();
      b.c(b.this).notifyChanged();
    }
    
    public final void onInvalidated()
    {
      b.a(b.this);
      b.b(b.this).notifyInvalidated();
      b.c(b.this).notifyInvalidated();
    }
  };
  
  b(Context paramContext, a parama)
  {
    d = paramContext;
    a = parama;
    parama.registerDataSetObserver(n);
  }
  
  final int a()
  {
    return i;
  }
  
  public long a(int paramInt)
  {
    return a.a(d(paramInt));
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a.a(d(paramInt), paramView, paramViewGroup);
  }
  
  final void a(DataSetObserver paramDataSetObserver)
  {
    l.registerObserver(paramDataSetObserver);
  }
  
  final void a(Drawable paramDrawable)
  {
    e = paramDrawable;
  }
  
  final boolean a(View paramView)
  {
    return g.containsKey(paramView);
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  final void b(int paramInt)
  {
    f = paramInt;
  }
  
  final void b(DataSetObserver paramDataSetObserver)
  {
    l.unregisterObserver(paramDataSetObserver);
  }
  
  final int c(int paramInt)
  {
    return h.indexOfValue(paramInt);
  }
  
  final int d(int paramInt)
  {
    int i1 = getItemViewType(paramInt);
    if (i1 == c) {
      return h.get(paramInt + 1);
    }
    if (i1 == b) {
      return h.get(paramInt - 1);
    }
    return h.get(paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    return a.equals(paramObject);
  }
  
  public int getCount()
  {
    int i5 = 0;
    int i1 = 0;
    if (k < 0)
    {
      h.clear();
      int i6 = a.getCount();
      int i4;
      if (i6 > 0)
      {
        long l1 = a.a(0);
        h.put(0, -1);
        h.put(1, 0);
        int i3 = 1;
        int i2 = 1;
        i5 = i1;
        i4 = i2;
        if (i3 < i6)
        {
          long l2 = a.a(i3);
          if (l1 != l2)
          {
            h.put(i3 + i2 + i1, -1);
            i2 += 1;
            l1 = l2;
          }
          for (;;)
          {
            h.put(i3 + i2 + i1, i3);
            i3 += 1;
            break;
            h.put(i3 + i2 + i1, -2);
            i1 += 1;
          }
        }
      }
      else
      {
        i4 = 0;
      }
      j = i5;
      i = i4;
      k = (a.getCount() + i + j);
    }
    return k;
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (getItemViewType(paramInt) == c) {
      return null;
    }
    paramInt = d(paramInt);
    return ((BaseAdapter)a).getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    int i1 = getItemViewType(paramInt);
    if ((i1 == c) || (i1 == b)) {
      return null;
    }
    paramInt = d(paramInt);
    return a.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    if (getItemViewType(paramInt) == c)
    {
      paramInt = d(paramInt);
      return a.a(paramInt);
    }
    paramInt = d(paramInt);
    return a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    paramInt = h.get(paramInt);
    if (paramInt == -1) {
      return c;
    }
    if (paramInt == -2) {
      return b;
    }
    return a.getItemViewType(paramInt);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i1 = getItemViewType(paramInt);
    if (i1 == c)
    {
      g.remove(paramView);
      paramView = a.a(d(paramInt), paramView, paramViewGroup);
      g.put(paramView, null);
    }
    for (;;)
    {
      paramViewGroup = paramView;
      do
      {
        return paramViewGroup;
        if (i1 != b) {
          break;
        }
        paramViewGroup = paramView;
      } while (paramView != null);
      paramView = new View(d);
      paramView.setBackgroundDrawable(e);
      paramView.setLayoutParams(new AbsListView.LayoutParams(-1, f));
      return paramView;
      paramView = a.getView(d(paramInt), paramView, paramViewGroup);
    }
  }
  
  public int getViewTypeCount()
  {
    c = (a.getViewTypeCount() + 0);
    b = (a.getViewTypeCount() + 1);
    return a.getViewTypeCount() + 2;
  }
  
  public boolean hasStableIds()
  {
    return a.hasStableIds();
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public boolean isEnabled(int paramInt)
  {
    int i1 = getItemViewType(paramInt);
    if (i1 == c) {}
    do
    {
      return true;
      if (i1 == b) {
        return false;
      }
      paramInt = d(paramInt);
    } while ((a.areAllItemsEnabled()) || (a.isEnabled(paramInt)));
    return false;
  }
  
  public void notifyDataSetChanged()
  {
    ((BaseAdapter)a).notifyDataSetChanged();
  }
  
  public void notifyDataSetInvalidated()
  {
    ((BaseAdapter)a).notifyDataSetInvalidated();
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    m.registerObserver(paramDataSetObserver);
  }
  
  public String toString()
  {
    return a.toString();
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    m.unregisterObserver(paramDataSetObserver);
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */