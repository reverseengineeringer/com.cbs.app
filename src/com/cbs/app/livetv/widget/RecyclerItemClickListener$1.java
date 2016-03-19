package com.cbs.app.livetv.widget;

import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;

final class RecyclerItemClickListener$1
  extends GestureDetector.SimpleOnGestureListener
{
  RecyclerItemClickListener$1(RecyclerItemClickListener paramRecyclerItemClickListener) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    RecyclerItemClickListener.b(a).a(RecyclerItemClickListener.a(a));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.RecyclerItemClickListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */