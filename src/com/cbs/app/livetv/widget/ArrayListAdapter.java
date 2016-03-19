package com.cbs.app.livetv.widget;

import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseBooleanArray;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class ArrayListAdapter<T, VH extends RecyclerView.ViewHolder>
  extends RecyclerView.Adapter<VH>
  implements Filterable
{
  private OnSelectedItemsChangedListener a;
  private ArrayListAdapter<T, VH>.a b;
  protected SparseBooleanArray c = new SparseBooleanArray();
  private final Object d = new Object();
  private List<T> e = new ArrayList();
  private ArrayList<T> f;
  private boolean g = true;
  
  public final T a(int paramInt)
  {
    if (paramInt < e.size()) {
      return (T)e.get(paramInt);
    }
    return null;
  }
  
  public final void a()
  {
    int i = e.size();
    synchronized (d)
    {
      if (f != null)
      {
        f.clear();
        f = null;
      }
      e.clear();
      c.clear();
      notifyItemRangeRemoved(0, i);
      return;
    }
  }
  
  public final void a(T paramT)
  {
    synchronized (d)
    {
      if (f != null)
      {
        f.add(paramT);
        notifyItemInserted(getItemCount() - 1);
        return;
      }
      e.add(paramT);
    }
  }
  
  protected void a(ArrayList<T> paramArrayList, String paramString) {}
  
  public final void a(Collection<? extends T> paramCollection)
  {
    synchronized (d)
    {
      if (f != null)
      {
        f.addAll(paramCollection);
        notifyItemRangeChanged(0, getItemCount());
        return;
      }
      e.addAll(paramCollection);
    }
  }
  
  protected boolean a(String paramString, T paramT)
  {
    return paramT.toString().toLowerCase().startsWith(paramString);
  }
  
  public Filter getFilter()
  {
    if (b == null) {
      b = new a((byte)0);
    }
    return b;
  }
  
  public int getItemCount()
  {
    return e.size();
  }
  
  public List<T> getItems()
  {
    return e;
  }
  
  public int getSelectedItemCount()
  {
    return c.size();
  }
  
  public ArrayList<T> getSelectedItems()
  {
    ArrayList localArrayList = new ArrayList(c.size());
    int i = 0;
    while (i < c.size())
    {
      localArrayList.add(a(c.keyAt(i)));
      i += 1;
    }
    return localArrayList;
  }
  
  public void setMultiSelectEnabled(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setOnSelectedItemsChangedListener(OnSelectedItemsChangedListener paramOnSelectedItemsChangedListener)
  {
    a = paramOnSelectedItemsChangedListener;
  }
  
  public static abstract interface OnSelectedItemsChangedListener<T> {}
  
  private final class a
    extends Filter
  {
    private a() {}
    
    protected final Filter.FilterResults performFiltering(CharSequence arg1)
    {
      Filter.FilterResults localFilterResults1 = new Filter.FilterResults();
      if ((ArrayListAdapter.a(ArrayListAdapter.this) == null) || (ArrayListAdapter.a(ArrayListAdapter.this).isEmpty())) {}
      synchronized (ArrayListAdapter.b(ArrayListAdapter.this))
      {
        ArrayListAdapter.a(ArrayListAdapter.this, new ArrayList(ArrayListAdapter.c(ArrayListAdapter.this)));
        if (??? != null) {
          if (???.length() != 0) {
            break label143;
          }
        }
      }
      synchronized (ArrayListAdapter.b(ArrayListAdapter.this))
      {
        ??? = new ArrayList(ArrayListAdapter.a(ArrayListAdapter.this));
        values = ???;
        count = ((ArrayList)???).size();
        return localFilterResults1;
        ??? = finally;
        throw ???;
      }
      label143:
      ??? = ???.toString().toLowerCase();
      synchronized (ArrayListAdapter.b(ArrayListAdapter.this))
      {
        ??? = new ArrayList(ArrayListAdapter.a(ArrayListAdapter.this));
        int j = ((ArrayList)???).size();
        ??? = new ArrayList();
        int i = 0;
        if (i < j)
        {
          Object localObject3 = ((ArrayList)???).get(i);
          if (a(???, localObject3)) {
            ((ArrayList)???).add(localObject3);
          }
          i += 1;
        }
      }
      a((ArrayList)???, ???);
      values = ???;
      count = ((ArrayList)???).size();
      return localFilterResults2;
    }
    
    protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      int i = getItemCount();
      ArrayListAdapter.a(ArrayListAdapter.this, (List)values);
      new StringBuilder("items = ").append(ArrayListAdapter.c(ArrayListAdapter.this));
      if (count > 0)
      {
        notifyDataSetChanged();
        return;
      }
      notifyItemRangeRemoved(0, i);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.ArrayListAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */