package com.cbs.app.widget;

import android.database.DataSetObserver;

final class HorizontalListView$2
  extends DataSetObserver
{
  HorizontalListView$2(HorizontalListView paramHorizontalListView) {}
  
  public final void onChanged()
  {
    synchronized (a)
    {
      HorizontalListView.d(a);
      a.invalidate();
      a.requestLayout();
      return;
    }
  }
  
  public final void onInvalidated()
  {
    HorizontalListView.e(a);
    a.invalidate();
    a.requestLayout();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.HorizontalListView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */