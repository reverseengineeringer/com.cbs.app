package com.cbs.app.livetv.widget;

import android.widget.Filter;
import android.widget.Filter.FilterResults;
import java.util.ArrayList;
import java.util.List;

final class ArrayListAdapter$a
  extends Filter
{
  private ArrayListAdapter$a(ArrayListAdapter paramArrayListAdapter) {}
  
  protected final Filter.FilterResults performFiltering(CharSequence arg1)
  {
    Filter.FilterResults localFilterResults1 = new Filter.FilterResults();
    if ((ArrayListAdapter.a(a) == null) || (ArrayListAdapter.a(a).isEmpty())) {}
    synchronized (ArrayListAdapter.b(a))
    {
      ArrayListAdapter.a(a, new ArrayList(ArrayListAdapter.c(a)));
      if (??? != null) {
        if (???.length() != 0) {
          break label143;
        }
      }
    }
    synchronized (ArrayListAdapter.b(a))
    {
      ??? = new ArrayList(ArrayListAdapter.a(a));
      values = ???;
      count = ((ArrayList)???).size();
      return localFilterResults1;
      ??? = finally;
      throw ???;
    }
    label143:
    ??? = ???.toString().toLowerCase();
    synchronized (ArrayListAdapter.b(a))
    {
      ??? = new ArrayList(ArrayListAdapter.a(a));
      int j = ((ArrayList)???).size();
      ??? = new ArrayList();
      int i = 0;
      if (i < j)
      {
        Object localObject3 = ((ArrayList)???).get(i);
        if (a.a(???, localObject3)) {
          ((ArrayList)???).add(localObject3);
        }
        i += 1;
      }
    }
    a.a((ArrayList)???, ???);
    values = ???;
    count = ((ArrayList)???).size();
    return localFilterResults2;
  }
  
  protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    int i = a.getItemCount();
    ArrayListAdapter.a(a, (List)values);
    new StringBuilder("items = ").append(ArrayListAdapter.c(a));
    if (count > 0)
    {
      a.notifyDataSetChanged();
      return;
    }
    a.notifyItemRangeRemoved(0, i);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.ArrayListAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */