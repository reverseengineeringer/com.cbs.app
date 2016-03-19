package com.cbs.app.widget;

import android.graphics.Rect;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;

final class HorizontalListView$1
  extends GestureDetector.SimpleOnGestureListener
{
  HorizontalListView$1(HorizontalListView paramHorizontalListView) {}
  
  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return a.a();
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return a.a(paramFloat1);
  }
  
  public final boolean onScroll(MotionEvent arg1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    synchronized (a)
    {
      paramMotionEvent2 = a;
      c += (int)paramFloat1;
      a.requestLayout();
      return true;
    }
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    Rect localRect = new Rect();
    int i = 0;
    for (;;)
    {
      if (i < a.getChildCount())
      {
        View localView = a.getChildAt(i);
        int j = localView.getLeft();
        int k = localView.getRight();
        localRect.set(j, localView.getTop(), k, localView.getBottom());
        if (!localRect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label207;
        }
        if (HorizontalListView.a(a) != null) {
          HorizontalListView.a(a).onItemClick(a, localView, HorizontalListView.b(a) + 1 + i, a.a.getItemId(HorizontalListView.b(a) + 1 + i));
        }
        if (HorizontalListView.c(a) != null) {
          HorizontalListView.c(a).onItemSelected(a, localView, HorizontalListView.b(a) + 1 + i, a.a.getItemId(HorizontalListView.b(a) + 1 + i));
        }
      }
      return true;
      label207:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.HorizontalListView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */