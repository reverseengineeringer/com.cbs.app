package com.cbs.app.livetv.widget;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.OnItemTouchListener;
import android.util.SparseBooleanArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class RecyclerItemClickListener
  implements RecyclerView.OnItemTouchListener
{
  GestureDetector a;
  private OnItemGestureListener b;
  private SparseBooleanArray c = new SparseBooleanArray();
  private View d;
  private int e;
  
  public RecyclerItemClickListener(Context paramContext, OnItemGestureListener paramOnItemGestureListener)
  {
    b = paramOnItemGestureListener;
    a = new GestureDetector(paramContext, new GestureDetector.SimpleOnGestureListener()
    {
      public final boolean onDoubleTap(MotionEvent paramAnonymousMotionEvent)
      {
        return true;
      }
      
      public final boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
      {
        RecyclerItemClickListener.b(RecyclerItemClickListener.this).a(RecyclerItemClickListener.a(RecyclerItemClickListener.this));
        return true;
      }
    });
  }
  
  public boolean onInterceptTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent)
  {
    d = paramRecyclerView.findChildViewUnder(paramMotionEvent.getX(), paramMotionEvent.getY());
    e = paramRecyclerView.getChildAdapterPosition(d);
    if ((c.get(e, true)) && (d != null) && (b != null)) {
      a.onTouchEvent(paramMotionEvent);
    }
    return false;
  }
  
  public void onRequestDisallowInterceptTouchEvent(boolean paramBoolean) {}
  
  public void onTouchEvent(RecyclerView paramRecyclerView, MotionEvent paramMotionEvent) {}
  
  public static abstract class OnItemClickListener
    implements RecyclerItemClickListener.OnItemGestureListener
  {}
  
  public static abstract interface OnItemGestureListener
  {
    public abstract void a(int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.widget.RecyclerItemClickListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */