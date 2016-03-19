package com.cbs.app.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class PagerContainer
  extends FrameLayout
  implements ViewPager.OnPageChangeListener
{
  boolean a = false;
  private final Point b = new Point();
  private final Point c = new Point();
  private ViewPager d;
  
  public PagerContainer(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public PagerContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public PagerContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  @SuppressLint({"NewApi"})
  private void a()
  {
    setClipChildren(false);
    setLayerType(1, null);
  }
  
  public ViewPager getViewPager()
  {
    return d;
  }
  
  protected void onFinishInflate()
  {
    try
    {
      d = ((ViewPager)getChildAt(0));
      d.setOnPageChangeListener(this);
      return;
    }
    catch (Exception localException)
    {
      throw new IllegalStateException("The root child of PagerContainer must be a ViewPager");
    }
  }
  
  public void onPageScrollStateChanged(int paramInt)
  {
    if (paramInt != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
    if (a) {
      invalidate();
    }
  }
  
  public void onPageSelected(int paramInt) {}
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    b.x = (paramInt1 / 2);
    b.y = (paramInt2 / 2);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
      paramMotionEvent.offsetLocation(b.x - c.x, b.y - c.y);
    }
    for (;;)
    {
      return d.dispatchTouchEvent(paramMotionEvent);
      c.x = ((int)paramMotionEvent.getX());
      c.y = ((int)paramMotionEvent.getY());
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.PagerContainer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */