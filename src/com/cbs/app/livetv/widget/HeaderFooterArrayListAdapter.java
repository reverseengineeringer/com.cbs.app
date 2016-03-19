package com.cbs.app.livetv.widget;

import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseBooleanArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class HeaderFooterArrayListAdapter<T, VH extends RecyclerView.ViewHolder>
  extends ArrayListAdapter<T, RecyclerView.ViewHolder>
{
  private int a;
  protected List<HeaderFooterArrayListAdapter<T, VH>.FixedViewInfo> d = new ArrayList();
  protected List<HeaderFooterArrayListAdapter<T, VH>.FixedViewInfo> e = new ArrayList();
  
  private int b(int paramInt)
  {
    return paramInt - getHeaderCount() - getArrayItemCount();
  }
  
  public abstract VH a(ViewGroup paramViewGroup, int paramInt);
  
  public abstract void a(VH paramVH, int paramInt);
  
  public final void a(View paramView)
  {
    FixedViewInfo localFixedViewInfo = new FixedViewInfo();
    a = paramView;
    b = 1000;
    d.add(localFixedViewInfo);
  }
  
  public int getArrayItemCount()
  {
    if (getItems() != null) {
      return getItems().size();
    }
    return 0;
  }
  
  public int getFooterCount()
  {
    return e.size();
  }
  
  public int getHeaderCount()
  {
    return d.size();
  }
  
  public int getItemCount()
  {
    return getArrayItemCount() + getHeaderCount() + getFooterCount();
  }
  
  public int getItemViewType(int paramInt)
  {
    int j = 1;
    a = paramInt;
    if (!d.isEmpty()) {}
    for (int i = 1; (i != 0) && (paramInt < d.size()); i = 0) {
      return d.get(paramInt)).b;
    }
    if (!e.isEmpty()) {}
    for (i = j; (i != 0) && (paramInt >= d.size() + getArrayItemCount()); i = 0) {
      return e.get(b(paramInt))).b;
    }
    return -1;
  }
  
  public ArrayList<T> getSelectedItems()
  {
    ArrayList localArrayList = new ArrayList(c.size());
    int i = 0;
    while (i < c.size())
    {
      int j = c.keyAt(i) - getHeaderCount();
      if (j >= 0) {
        localArrayList.add(a(j));
      }
      i += 1;
    }
    return localArrayList;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    if ((paramViewHolder instanceof a)) {
      return;
    }
    a(paramViewHolder, paramInt);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    Iterator localIterator = d.iterator();
    while (localIterator.hasNext()) {
      if (nextb == paramInt) {
        return new a(d.get(a)).a);
      }
    }
    localIterator = e.iterator();
    while (localIterator.hasNext()) {
      if (nextb == paramInt) {
        return new a(e.get(b(a))).a);
      }
    }
    return a(paramViewGroup, paramInt);
  }
  
  public class FixedViewInfo
  {
    public View a;
    public int b;
    
    public FixedViewInfo() {}
  }
  
  static final class a
    extends RecyclerView.ViewHolder
  {
    public a(View paramView)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.HeaderFooterArrayListAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */