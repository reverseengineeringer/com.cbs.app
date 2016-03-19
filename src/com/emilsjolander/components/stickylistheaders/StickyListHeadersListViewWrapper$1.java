package com.emilsjolander.components.stickylistheaders;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;

final class StickyListHeadersListViewWrapper$1
  implements View.OnTouchListener
{
  float a;
  
  StickyListHeadersListViewWrapper$1(StickyListHeadersListViewWrapper paramStickyListHeadersListViewWrapper) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (paramMotionEvent.getAction() == 0)
    {
      a = paramMotionEvent.getY();
      if (Math.abs(a - paramMotionEvent.getY()) <= StickyListHeadersListViewWrapper.b(b).getScaledTouchSlop()) {
        break label119;
      }
    }
    for (;;)
    {
      if (bool)
      {
        StickyListHeadersListViewWrapper.a(b, false);
        b.invalidate(StickyListHeadersListViewWrapper.a(b));
      }
      StickyListHeadersListViewWrapper.c(b).onTouchEvent(paramMotionEvent);
      return bool;
      if (paramMotionEvent.getAction() != 1) {
        break;
      }
      StickyListHeadersListViewWrapper.a(b, false);
      b.invalidate(StickyListHeadersListViewWrapper.a(b));
      break;
      label119:
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListViewWrapper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */