package com.cbs.app.widget;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListAdapter;
import android.widget.Scroller;
import java.util.LinkedList;
import java.util.Queue;

public class HorizontalListView
  extends AdapterView<ListAdapter>
{
  protected ListAdapter a;
  protected int b;
  protected int c;
  protected Scroller d;
  a e = new a();
  private int f = -1;
  private int g = 0;
  private int h = Integer.MAX_VALUE;
  private int i = 0;
  private GestureDetector j;
  private Queue<View> k = new LinkedList();
  private AdapterView.OnItemSelectedListener l;
  private AdapterView.OnItemClickListener m;
  private GestureDetector.OnGestureListener n = new GestureDetector.SimpleOnGestureListener()
  {
    public final boolean onDown(MotionEvent paramAnonymousMotionEvent)
    {
      return a();
    }
    
    public final boolean onFling(MotionEvent paramAnonymousMotionEvent1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      return a(paramAnonymousFloat1);
    }
    
    public final boolean onScroll(MotionEvent arg1, MotionEvent paramAnonymousMotionEvent2, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      synchronized (HorizontalListView.this)
      {
        paramAnonymousMotionEvent2 = HorizontalListView.this;
        c += (int)paramAnonymousFloat1;
        requestLayout();
        return true;
      }
    }
    
    public final boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
    {
      Rect localRect = new Rect();
      int i = 0;
      for (;;)
      {
        if (i < getChildCount())
        {
          View localView = getChildAt(i);
          int j = localView.getLeft();
          int k = localView.getRight();
          localRect.set(j, localView.getTop(), k, localView.getBottom());
          if (!localRect.contains((int)paramAnonymousMotionEvent.getX(), (int)paramAnonymousMotionEvent.getY())) {
            break label207;
          }
          if (HorizontalListView.a(HorizontalListView.this) != null) {
            HorizontalListView.a(HorizontalListView.this).onItemClick(HorizontalListView.this, localView, HorizontalListView.b(HorizontalListView.this) + 1 + i, a.getItemId(HorizontalListView.b(HorizontalListView.this) + 1 + i));
          }
          if (HorizontalListView.c(HorizontalListView.this) != null) {
            HorizontalListView.c(HorizontalListView.this).onItemSelected(HorizontalListView.this, localView, HorizontalListView.b(HorizontalListView.this) + 1 + i, a.getItemId(HorizontalListView.b(HorizontalListView.this) + 1 + i));
          }
        }
        return true;
        label207:
        i += 1;
      }
    }
  };
  private boolean o = false;
  private DataSetObserver p = new DataSetObserver()
  {
    public final void onChanged()
    {
      synchronized (HorizontalListView.this)
      {
        HorizontalListView.d(HorizontalListView.this);
        invalidate();
        requestLayout();
        return;
      }
    }
    
    public final void onInvalidated()
    {
      HorizontalListView.e(HorizontalListView.this);
      invalidate();
      requestLayout();
    }
  };
  
  public HorizontalListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    b();
  }
  
  private void a(View paramView, int paramInt)
  {
    ViewGroup.LayoutParams localLayoutParams2 = paramView.getLayoutParams();
    ViewGroup.LayoutParams localLayoutParams1 = localLayoutParams2;
    if (localLayoutParams2 == null) {
      localLayoutParams1 = new ViewGroup.LayoutParams(-1, -1);
    }
    addViewInLayout(paramView, paramInt, localLayoutParams1, true);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getHeight(), Integer.MIN_VALUE));
  }
  
  private void b()
  {
    try
    {
      f = -1;
      g = 0;
      i = 0;
      b = 0;
      c = 0;
      h = Integer.MAX_VALUE;
      d = new Scroller(getContext());
      j = new GestureDetector(getContext(), n);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void c()
  {
    try
    {
      b();
      removeAllViewsInLayout();
      requestLayout();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final boolean a()
  {
    d.forceFinished(true);
    return true;
  }
  
  protected final boolean a(float paramFloat)
  {
    try
    {
      d.fling(c, 0, (int)-paramFloat, 0, 0, h, 0, 0);
      requestLayout();
      return true;
    }
    finally {}
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return j.onTouchEvent(paramMotionEvent);
  }
  
  public ListAdapter getAdapter()
  {
    return a;
  }
  
  public View getSelectedView()
  {
    return null;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = 0;
    try
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      Object localObject1 = a;
      if (localObject1 == null) {
        return;
      }
      if (o)
      {
        paramInt1 = b;
        b();
        removeAllViewsInLayout();
        c = paramInt1;
        o = false;
      }
      if (d.computeScrollOffset()) {
        c = d.getCurrX();
      }
      if (c < 0)
      {
        c = 0;
        d.forceFinished(true);
      }
      if (c > h)
      {
        c = h;
        d.forceFinished(true);
      }
      paramInt2 = b - c;
      for (localObject1 = getChildAt(0); (localObject1 != null) && (((View)localObject1).getRight() + paramInt2 <= 0); localObject1 = getChildAt(0))
      {
        i += ((View)localObject1).getMeasuredWidth();
        k.offer(localObject1);
        removeViewInLayout((View)localObject1);
        f += 1;
      }
      for (;;)
      {
        localObject1 = getChildAt(getChildCount() - 1);
        if ((localObject1 == null) || (((View)localObject1).getLeft() + paramInt2 < getWidth())) {
          break;
        }
        k.offer(localObject1);
        removeViewInLayout((View)localObject1);
        g -= 1;
      }
      localView = getChildAt(getChildCount() - 1);
    }
    finally {}
    View localView;
    if (localView != null)
    {
      paramInt1 = localView.getRight();
      break label642;
      label307:
      while ((paramInt1 + paramInt2 < getWidth()) && (g < a.getCount()))
      {
        localView = a.getView(g, (View)k.poll(), this);
        a(localView, -1);
        paramInt1 = localView.getMeasuredWidth() + paramInt1;
        if (g == a.getCount() - 1) {
          h = (b + paramInt1 - getWidth());
        }
        g += 1;
      }
      localView = getChildAt(0);
      if (localView != null)
      {
        paramInt1 = localView.getLeft();
        break label645;
      }
    }
    label642:
    label645:
    for (;;)
    {
      if ((paramInt1 + paramInt2 > 0) && (f >= 0))
      {
        localView = a.getView(f, (View)k.poll(), this);
        a(localView, 0);
        paramInt3 = localView.getMeasuredWidth();
        f -= 1;
        i -= localView.getMeasuredWidth();
        paramInt1 -= paramInt3;
      }
      else
      {
        if (getChildCount() > 0)
        {
          i += paramInt2;
          paramInt2 = i;
          paramInt1 = i1;
          while (paramInt1 < getChildCount())
          {
            localView = getChildAt(paramInt1);
            paramInt3 = localView.getMeasuredWidth();
            localView.layout(paramInt2, 0, paramInt2 + paramInt3, localView.getMeasuredHeight());
            paramInt2 += paramInt3;
            paramInt1 += 1;
          }
        }
        b = c;
        if (d.isFinished()) {
          break;
        }
        post(e);
        break;
        paramInt1 = 0;
        break label645;
        paramInt1 = 0;
        break label307;
      }
    }
  }
  
  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (a != null) {
      a.unregisterDataSetObserver(p);
    }
    a = paramListAdapter;
    a.registerDataSetObserver(p);
    c();
  }
  
  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    m = paramOnItemClickListener;
  }
  
  public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener paramOnItemSelectedListener)
  {
    l = paramOnItemSelectedListener;
  }
  
  public void setSelection(int paramInt) {}
  
  final class a
    implements Runnable
  {
    a() {}
    
    public final void run()
    {
      requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.HorizontalListView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */