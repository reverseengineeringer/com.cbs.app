package com.cbs.app.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

public class TouchTimeoutParent
  extends RelativeLayout
{
  private static final String b = TouchTimeoutParent.class.getSimpleName();
  ArrayList<TouchTimeoutListener> a = new ArrayList();
  private long c = 0L;
  private Timer d;
  private long e = 5000L;
  private boolean f = false;
  private boolean g = false;
  private Object h = new Object();
  
  public TouchTimeoutParent(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public TouchTimeoutParent(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public TouchTimeoutParent(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void d()
  {
    synchronized (h)
    {
      c = (System.currentTimeMillis() + 500L);
      return;
    }
  }
  
  private void e()
  {
    synchronized (h)
    {
      f = true;
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext())
      {
        ((TouchTimeoutListener)localIterator.next()).a();
        g = true;
      }
    }
  }
  
  public final void a()
  {
    if (d != null) {
      d.cancel();
    }
    d = new Timer();
    TimerTask local1 = new TimerTask()
    {
      public final void run()
      {
        TouchTimeoutParent.a(TouchTimeoutParent.this);
      }
    };
    d.schedule(local1, e);
  }
  
  public final void a(TouchTimeoutListener paramTouchTimeoutListener)
  {
    a.add(paramTouchTimeoutListener);
  }
  
  public final void b()
  {
    if (d != null) {
      d.cancel();
    }
  }
  
  public final void c()
  {
    synchronized (h)
    {
      c = System.currentTimeMillis();
      a();
      return;
    }
  }
  
  public long getExpireIn()
  {
    return e;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    synchronized (h)
    {
      g = false;
      if (f)
      {
        f = false;
        ??? = a.iterator();
        if (((Iterator)???).hasNext()) {
          ((TouchTimeoutListener)((Iterator)???).next()).b();
        }
      }
    }
    a();
    synchronized (h)
    {
      c = System.currentTimeMillis();
      return super.onInterceptTouchEvent(paramMotionEvent);
    }
  }
  
  public void setExpireIn(long paramLong)
  {
    e = paramLong;
  }
  
  public static abstract interface TouchTimeoutListener
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.TouchTimeoutParent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */