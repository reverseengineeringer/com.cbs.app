package com.emilsjolander.components.stickylistheaders;

import android.database.DataSetObserver;

final class StickyListHeadersListView$1
  extends DataSetObserver
{
  StickyListHeadersListView$1(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void onChanged()
  {
    StickyListHeadersListView.a(a);
    StickyListHeadersListView.b(a);
  }
  
  public final void onInvalidated()
  {
    StickyListHeadersListView.b(a);
    StickyListHeadersListView.c(a).a();
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */