package com.emilsjolander.components.stickylistheaders;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class StickyListHeadersListViewWrapper$a
  extends GestureDetector.SimpleOnGestureListener
{
  private StickyListHeadersListViewWrapper$a(StickyListHeadersListViewWrapper paramStickyListHeadersListViewWrapper) {}
  
  public final void onShowPress(MotionEvent paramMotionEvent)
  {
    StickyListHeadersListViewWrapper.a(a, true);
    a.invalidate(StickyListHeadersListViewWrapper.a(a));
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListViewWrapper.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */