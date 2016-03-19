package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.support.design.R.styleable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public final class CoordinatorLayout$d
  extends ViewGroup.MarginLayoutParams
{
  CoordinatorLayout.Behavior a;
  boolean b = false;
  public int c = 0;
  public int d = 0;
  public int e = -1;
  int f = -1;
  View g;
  View h;
  final Rect i = new Rect();
  Object j;
  private boolean k;
  private boolean l;
  private boolean m;
  
  public CoordinatorLayout$d()
  {
    super(-2, -2);
  }
  
  CoordinatorLayout$d(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout_LayoutParams);
    c = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_android_layout_gravity, 0);
    f = localTypedArray.getResourceId(R.styleable.CoordinatorLayout_LayoutParams_layout_anchor, -1);
    d = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_layout_anchorGravity, 0);
    e = localTypedArray.getInteger(R.styleable.CoordinatorLayout_LayoutParams_layout_keyline, -1);
    b = localTypedArray.hasValue(R.styleable.CoordinatorLayout_LayoutParams_layout_behavior);
    if (b) {
      a = CoordinatorLayout.a(paramContext, paramAttributeSet, localTypedArray.getString(R.styleable.CoordinatorLayout_LayoutParams_layout_behavior));
    }
    localTypedArray.recycle();
  }
  
  public CoordinatorLayout$d(d paramd)
  {
    super(paramd);
  }
  
  public CoordinatorLayout$d(ViewGroup.LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
  }
  
  public CoordinatorLayout$d(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    super(paramMarginLayoutParams);
  }
  
  public final void a(CoordinatorLayout.Behavior paramBehavior)
  {
    if (a != paramBehavior)
    {
      a = paramBehavior;
      j = null;
      b = true;
    }
  }
  
  final void a(boolean paramBoolean)
  {
    l = paramBoolean;
  }
  
  final boolean a()
  {
    if (a == null) {
      k = false;
    }
    return k;
  }
  
  final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView)
  {
    if (k) {
      return true;
    }
    boolean bool = k | false;
    k = bool;
    return bool;
  }
  
  final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
  {
    return (paramView2 == h) || ((a != null) && (a.a_(paramView2)));
  }
  
  final void b()
  {
    k = false;
  }
  
  final void b(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  final void c()
  {
    l = false;
  }
  
  final boolean d()
  {
    return l;
  }
  
  final boolean e()
  {
    return m;
  }
  
  final void f()
  {
    m = false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */