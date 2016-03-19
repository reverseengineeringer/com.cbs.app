package com.emilsjolander.components.stickylistheaders;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

final class StickyListHeadersListViewWrapper$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  StickyListHeadersListViewWrapper$2(StickyListHeadersListViewWrapper paramStickyListHeadersListViewWrapper) {}
  
  public final void onGlobalLayout()
  {
    if (StickyListHeadersListViewWrapper.d(a))
    {
      if (a.getChildCount() > 1) {
        a.removeViewAt(1);
      }
      if (StickyListHeadersListViewWrapper.e(a) != null) {
        a.addView(StickyListHeadersListViewWrapper.e(a));
      }
    }
    StickyListHeadersListViewWrapper.f(a);
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListViewWrapper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */