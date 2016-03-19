package com.emilsjolander.components.stickylistheaders;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import java.lang.reflect.Field;

public class StickyListHeadersListViewWrapper
  extends FrameLayout
{
  private static final boolean a;
  private static Field b;
  private static Field c;
  private View d = null;
  private int e = -1;
  private Drawable f;
  private ViewConfiguration g;
  private boolean h;
  private boolean i = false;
  private Rect j = new Rect();
  private final GestureDetector k;
  private View.OnTouchListener l = new View.OnTouchListener()
  {
    float a;
    
    public final boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      boolean bool = true;
      if (paramAnonymousMotionEvent.getAction() == 0)
      {
        a = paramAnonymousMotionEvent.getY();
        if (Math.abs(a - paramAnonymousMotionEvent.getY()) <= StickyListHeadersListViewWrapper.b(StickyListHeadersListViewWrapper.this).getScaledTouchSlop()) {
          break label119;
        }
      }
      for (;;)
      {
        if (bool)
        {
          StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this, false);
          invalidate(StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this));
        }
        StickyListHeadersListViewWrapper.c(StickyListHeadersListViewWrapper.this).onTouchEvent(paramAnonymousMotionEvent);
        return bool;
        if (paramAnonymousMotionEvent.getAction() != 1) {
          break;
        }
        StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this, false);
        invalidate(StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this));
        break;
        label119:
        bool = false;
      }
    }
  };
  private ViewTreeObserver.OnGlobalLayoutListener m = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      if (StickyListHeadersListViewWrapper.d(StickyListHeadersListViewWrapper.this))
      {
        if (getChildCount() > 1) {
          removeViewAt(1);
        }
        if (StickyListHeadersListViewWrapper.e(StickyListHeadersListViewWrapper.this) != null) {
          addView(StickyListHeadersListViewWrapper.e(StickyListHeadersListViewWrapper.this));
        }
      }
      StickyListHeadersListViewWrapper.f(StickyListHeadersListViewWrapper.this);
    }
  };
  private boolean n;
  private boolean o;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public StickyListHeadersListViewWrapper(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public StickyListHeadersListViewWrapper(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public StickyListHeadersListViewWrapper(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = (AttributeSet)localObject;
    if (!isInEditMode()) {
      paramAttributeSet = new GestureDetector(paramContext, new a((byte)0));
    }
    k = paramAttributeSet;
    if (!a) {}
    try
    {
      b = View.class.getDeclaredField("mTop");
      c = View.class.getDeclaredField("mBottom");
      b.setAccessible(true);
      c.setAccessible(true);
      g = ViewConfiguration.get(paramContext);
      getViewTreeObserver().addOnGlobalLayoutListener(m);
      return;
    }
    catch (NoSuchFieldException paramAttributeSet)
    {
      for (;;)
      {
        paramAttributeSet.printStackTrace();
      }
    }
  }
  
  private void a(Canvas paramCanvas)
  {
    f.setBounds(e());
    int[] arrayOfInt = f.getState();
    f.setState(d.getDrawableState());
    f.draw(paramCanvas);
    f.setState(arrayOfInt);
  }
  
  private Rect e()
  {
    j.left = d.getLeft();
    j.top = (e - d.getHeight());
    j.right = d.getRight();
    j.bottom = e;
    return j;
  }
  
  final View a()
  {
    if (d != null)
    {
      if (!n) {
        break label39;
      }
      o = true;
    }
    for (;;)
    {
      d.setOnTouchListener(null);
      View localView = d;
      d = null;
      return localView;
      label39:
      removeView(d);
    }
  }
  
  @SuppressLint({"NewApi"})
  final void a(int paramInt)
  {
    if (d != null)
    {
      if (!a) {
        break label36;
      }
      d.setTranslationY(paramInt - d.getMeasuredHeight());
    }
    for (;;)
    {
      e = paramInt;
      return;
      try
      {
        label36:
        b.set(d, Integer.valueOf(paramInt - d.getMeasuredHeight()));
        c.set(d, Integer.valueOf(paramInt));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
      }
    }
  }
  
  final void a(View paramView)
  {
    if (paramView == d) {}
    do
    {
      return;
      if (d != null) {
        throw new IllegalStateException("You must first remove the old header first");
      }
      d = paramView;
    } while (paramView == null);
    View localView = getChildAt(0);
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(localView.getMeasuredWidth() - localView.getPaddingLeft() - localView.getPaddingRight(), -2);
    leftMargin = localView.getPaddingLeft();
    rightMargin = localView.getPaddingRight();
    gravity = 48;
    paramView.setLayoutParams(localLayoutParams);
    paramView.setOnTouchListener(l);
    if (n)
    {
      o = true;
      return;
    }
    addView(paramView);
  }
  
  final boolean b()
  {
    return d != null;
  }
  
  final boolean b(View paramView)
  {
    return d == paramView;
  }
  
  final int c()
  {
    if (d == null) {
      return 0;
    }
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)d.getLayoutParams();
    int i2 = getMeasuredWidth();
    if (localMarginLayoutParams == null) {}
    for (int i1 = 0;; i1 = rightMargin + i1)
    {
      i1 = View.MeasureSpec.makeMeasureSpec(i2 - i1, 1073741824);
      i2 = View.MeasureSpec.makeMeasureSpec(getHeight(), 1073741824);
      measureChild(d, i1, i2);
      return d.getMeasuredHeight();
      i1 = leftMargin;
    }
  }
  
  final int d()
  {
    return e;
  }
  
  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((f != null) && (h) && (!i)) {
      a(paramCanvas);
    }
    super.dispatchDraw(paramCanvas);
    if ((f != null) && (h) && (i)) {
      a(paramCanvas);
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    n = true;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(e);
    n = false;
  }
  
  public void setDrawSelectorOnTop(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void setSelector(Drawable paramDrawable)
  {
    f = paramDrawable;
  }
  
  private final class a
    extends GestureDetector.SimpleOnGestureListener
  {
    private a() {}
    
    public final void onShowPress(MotionEvent paramMotionEvent)
    {
      StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this, true);
      invalidate(StickyListHeadersListViewWrapper.a(StickyListHeadersListViewWrapper.this));
    }
  }
}

/* Location:
 * Qualified Name:     com.emilsjolander.components.stickylistheaders.StickyListHeadersListViewWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */