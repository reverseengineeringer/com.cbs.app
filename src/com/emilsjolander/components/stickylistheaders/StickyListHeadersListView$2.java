package com.emilsjolander.components.stickylistheaders;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

final class StickyListHeadersListView$2
  implements AdapterView.OnItemLongClickListener
{
  StickyListHeadersListView$2(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (StickyListHeadersListView.d(a) != null) {
      return StickyListHeadersListView.d(a).onItemLongClick(paramAdapterView, paramView, StickyListHeadersListView.e(a).d(paramInt), paramLong);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */