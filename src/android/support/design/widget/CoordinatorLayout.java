package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.NestedScrollingParent;
import android.support.v4.view.NestedScrollingParentHelper;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CoordinatorLayout
  extends ViewGroup
  implements NestedScrollingParent
{
  static final String a;
  static final Class<?>[] b;
  static final ThreadLocal<Map<String, Constructor<Behavior>>> c;
  static final Comparator<View> e;
  static final e f;
  final Comparator<View> d = new Comparator() {};
  private final List<View> g = new ArrayList();
  private final List<View> h = new ArrayList();
  private final List<View> i = new ArrayList();
  private final Rect j = new Rect();
  private final Rect k = new Rect();
  private final Rect l = new Rect();
  private final int[] m = new int[2];
  private boolean n;
  private int[] o;
  private View p;
  private View q;
  private View r;
  private e s;
  private boolean t;
  private WindowInsetsCompat u;
  private boolean v;
  private Drawable w;
  private ViewGroup.OnHierarchyChangeListener x;
  private final NestedScrollingParentHelper y = new NestedScrollingParentHelper(this);
  
  static
  {
    Object localObject = CoordinatorLayout.class.getPackage();
    if (localObject != null)
    {
      localObject = ((Package)localObject).getName();
      a = (String)localObject;
      if (Build.VERSION.SDK_INT < 21) {
        break label80;
      }
      e = new f();
    }
    for (f = new f();; f = null)
    {
      b = new Class[] { Context.class, AttributeSet.class };
      c = new ThreadLocal();
      return;
      localObject = null;
      break;
      label80:
      e = null;
    }
  }
  
  public CoordinatorLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CoordinatorLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.a(paramContext);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CoordinatorLayout, paramInt, R.style.Widget_Design_CoordinatorLayout);
    paramInt = paramAttributeSet.getResourceId(R.styleable.CoordinatorLayout_keylines, 0);
    if (paramInt != 0)
    {
      paramContext = paramContext.getResources();
      o = paramContext.getIntArray(paramInt);
      float f1 = getDisplayMetricsdensity;
      int i2 = o.length;
      paramInt = i1;
      while (paramInt < i2)
      {
        paramContext = o;
        paramContext[paramInt] = ((int)(paramContext[paramInt] * f1));
        paramInt += 1;
      }
    }
    w = paramAttributeSet.getDrawable(R.styleable.CoordinatorLayout_statusBarBackground);
    paramAttributeSet.recycle();
    if (f != null) {
      f.a(this, new a());
    }
    super.setOnHierarchyChangeListener(new c());
  }
  
  private int a(int paramInt)
  {
    if (o == null)
    {
      Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + paramInt);
      return 0;
    }
    if ((paramInt < 0) || (paramInt >= o.length))
    {
      Log.e("CoordinatorLayout", "Keyline index " + paramInt + " out of range for " + this);
      return 0;
    }
    return o[paramInt];
  }
  
  static Behavior a(Context paramContext, AttributeSet paramAttributeSet, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    String str;
    if (paramString.startsWith(".")) {
      str = paramContext.getPackageName() + paramString;
    }
    label225:
    for (;;)
    {
      try
      {
        paramString = (Map)c.get();
        if (paramString != null) {
          break label225;
        }
        paramString = new HashMap();
        c.set(paramString);
        Constructor localConstructor2 = (Constructor)paramString.get(str);
        Constructor localConstructor1 = localConstructor2;
        if (localConstructor2 == null)
        {
          localConstructor1 = Class.forName(str, true, paramContext.getClassLoader()).getConstructor(b);
          localConstructor1.setAccessible(true);
          paramString.put(str, localConstructor1);
        }
        paramContext = (Behavior)localConstructor1.newInstance(new Object[] { paramContext, paramAttributeSet });
        return paramContext;
      }
      catch (Exception paramContext)
      {
        throw new RuntimeException("Could not inflate Behavior subclass " + str, paramContext);
      }
      str = paramString;
      if (paramString.indexOf('.') < 0)
      {
        str = paramString;
        if (!TextUtils.isEmpty(a)) {
          str = a + '.' + paramString;
        }
      }
    }
  }
  
  private void a()
  {
    int i1 = 0;
    if (p != null)
    {
      Behavior localBehavior = p.getLayoutParams()).a;
      if (localBehavior != null)
      {
        long l1 = SystemClock.uptimeMillis();
        MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        localBehavior.b(this, p, localMotionEvent);
        localMotionEvent.recycle();
      }
      p = null;
    }
    int i2 = getChildCount();
    while (i1 < i2)
    {
      ((d)getChildAt(i1).getLayoutParams()).b();
      i1 += 1;
    }
  }
  
  private void a(View paramView, int paramInt, Rect paramRect1, Rect paramRect2)
  {
    d locald = (d)paramView.getLayoutParams();
    int i2 = c;
    int i1 = i2;
    if (i2 == 0) {
      i1 = 17;
    }
    int i5 = GravityCompat.getAbsoluteGravity(i1, paramInt);
    i1 = GravityCompat.getAbsoluteGravity(b(d), paramInt);
    int i3 = paramView.getMeasuredWidth();
    int i4 = paramView.getMeasuredHeight();
    switch (i1 & 0x7)
    {
    default: 
      paramInt = left;
      switch (i1 & 0x70)
      {
      default: 
        i1 = top;
        label138:
        i2 = paramInt;
        switch (i5 & 0x7)
        {
        default: 
          i2 = paramInt - i3;
        case 5: 
          label178:
          paramInt = i1;
          switch (i5 & 0x70)
          {
          }
          break;
        }
        break;
      }
      break;
    }
    for (paramInt = i1 - i4;; paramInt = i1 - i4 / 2)
    {
      i5 = getWidth();
      i1 = getHeight();
      i2 = Math.max(getPaddingLeft() + leftMargin, Math.min(i2, i5 - getPaddingRight() - i3 - rightMargin));
      paramInt = Math.max(getPaddingTop() + topMargin, Math.min(paramInt, i1 - getPaddingBottom() - i4 - bottomMargin));
      paramRect2.set(i2, paramInt, i2 + i3, paramInt + i4);
      return;
      paramInt = right;
      break;
      paramInt = left;
      paramInt = paramRect1.width() / 2 + paramInt;
      break;
      i1 = bottom;
      break label138;
      i1 = top + paramRect1.height() / 2;
      break label138;
      i2 = paramInt - i3 / 2;
      break label178;
    }
  }
  
  private void a(View paramView, boolean paramBoolean, Rect paramRect)
  {
    if ((paramView.isLayoutRequested()) || (paramView.getVisibility() == 8))
    {
      paramRect.set(0, 0, 0, 0);
      return;
    }
    if (paramBoolean)
    {
      t.a(this, paramView, paramRect);
      return;
    }
    paramRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
  }
  
  private boolean a(MotionEvent paramMotionEvent, int paramInt)
  {
    boolean bool1 = false;
    int i3 = 0;
    int i4 = MotionEventCompat.getActionMasked(paramMotionEvent);
    List localList = h;
    localList.clear();
    boolean bool2 = isChildrenDrawingOrderEnabled();
    int i5 = getChildCount();
    int i1 = i5 - 1;
    if (i1 >= 0)
    {
      if (bool2) {}
      for (i2 = getChildDrawingOrder(i5, i1);; i2 = i1)
      {
        localList.add(getChildAt(i2));
        i1 -= 1;
        break;
      }
    }
    if (e != null) {
      Collections.sort(localList, e);
    }
    i5 = localList.size();
    int i2 = 0;
    MotionEvent localMotionEvent = null;
    i1 = i3;
    View localView;
    d locald;
    Behavior localBehavior;
    if (i2 < i5)
    {
      localView = (View)localList.get(i2);
      locald = (d)localView.getLayoutParams();
      localBehavior = a;
      if (((bool1) || (i1 != 0)) && (i4 != 0))
      {
        if (localBehavior == null) {
          break label422;
        }
        if (localMotionEvent != null) {
          break label419;
        }
        long l1 = SystemClock.uptimeMillis();
        localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
        label199:
        switch (paramInt)
        {
        }
      }
    }
    label304:
    label409:
    label419:
    label422:
    for (;;)
    {
      i2 += 1;
      break;
      localBehavior.a(this, localView, localMotionEvent);
      continue;
      localBehavior.b(this, localView, localMotionEvent);
      continue;
      bool2 = bool1;
      if (!bool1)
      {
        bool2 = bool1;
        if (localBehavior == null) {}
      }
      boolean bool3;
      switch (paramInt)
      {
      default: 
        bool2 = bool1;
        if (bool1)
        {
          p = localView;
          bool2 = bool1;
        }
        bool1 = bool2;
        bool2 = locald.a();
        bool3 = locald.a(this, localView);
        if ((!bool3) || (bool2)) {
          break;
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        if (bool3)
        {
          bool2 = bool1;
          if (i1 == 0) {
            break label409;
          }
        }
        break;
        bool1 = localBehavior.a(this, localView, paramMotionEvent);
        break label304;
        bool1 = localBehavior.b(this, localView, paramMotionEvent);
        break label304;
      }
      bool2 = bool1;
      localList.clear();
      return bool2;
      break label199;
    }
  }
  
  private static int b(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388659;
    }
    return i1;
  }
  
  private static int c(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt == 0) {
      i1 = 8388661;
    }
    return i1;
  }
  
  private static d d(View paramView)
  {
    d locald = (d)paramView.getLayoutParams();
    View localView;
    if (!b)
    {
      Class localClass = paramView.getClass();
      paramView = null;
      for (;;)
      {
        localView = paramView;
        if (localClass == null) {
          break;
        }
        paramView = (b)localClass.getAnnotation(b.class);
        localView = paramView;
        if (paramView != null) {
          break;
        }
        localClass = localClass.getSuperclass();
      }
      if (localView == null) {}
    }
    try
    {
      locald.a((Behavior)localView.a().newInstance());
      b = true;
      return locald;
    }
    catch (Exception paramView)
    {
      for (;;)
      {
        Log.e("CoordinatorLayout", "Default behavior class " + localView.a().getName() + " could not be instantiated. Did you forget a default constructor?", paramView);
      }
    }
  }
  
  final void a(View paramView)
  {
    int i3 = g.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      View localView = (View)g.get(i2);
      if (localView == paramView) {
        i1 = 1;
      }
      for (;;)
      {
        i2 += 1;
        break;
        if (i1 != 0) {
          localView.getLayoutParams();
        }
      }
    }
  }
  
  public final void a(View paramView, int paramInt)
  {
    Object localObject = (d)paramView.getLayoutParams();
    if ((g == null) && (f != -1)) {}
    for (int i1 = 1; i1 != 0; i1 = 0) {
      throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
    }
    if (g != null)
    {
      localObject = g;
      paramView.getLayoutParams();
      localRect1 = j;
      localRect2 = k;
      t.a(this, (View)localObject, localRect1);
      a(paramView, paramInt, localRect1, localRect2);
      paramView.layout(left, top, right, bottom);
      return;
    }
    if (e >= 0)
    {
      int i2 = e;
      localObject = (d)paramView.getLayoutParams();
      int i7 = GravityCompat.getAbsoluteGravity(c(c), paramInt);
      int i6 = getWidth();
      int i5 = getHeight();
      int i3 = paramView.getMeasuredWidth();
      int i4 = paramView.getMeasuredHeight();
      i1 = i2;
      if (paramInt == 1) {
        i1 = i6 - i2;
      }
      paramInt = a(i1) - i3;
      switch (i7 & 0x7)
      {
      default: 
        switch (i7 & 0x70)
        {
        default: 
          i1 = 0;
        }
        break;
      }
      for (;;)
      {
        paramInt = Math.max(getPaddingLeft() + leftMargin, Math.min(paramInt, i6 - getPaddingRight() - i3 - rightMargin));
        i1 = Math.max(getPaddingTop() + topMargin, Math.min(i1, i5 - getPaddingBottom() - i4 - bottomMargin));
        paramView.layout(paramInt, i1, paramInt + i3, i1 + i4);
        return;
        paramInt += i3;
        break;
        paramInt += i3 / 2;
        break;
        i1 = i4 + 0;
        continue;
        i1 = i4 / 2 + 0;
      }
    }
    localObject = (d)paramView.getLayoutParams();
    Rect localRect1 = j;
    localRect1.set(getPaddingLeft() + leftMargin, getPaddingTop() + topMargin, getWidth() - getPaddingRight() - rightMargin, getHeight() - getPaddingBottom() - bottomMargin);
    if ((u != null) && (ViewCompat.getFitsSystemWindows(this)) && (!ViewCompat.getFitsSystemWindows(paramView)))
    {
      left += u.getSystemWindowInsetLeft();
      top += u.getSystemWindowInsetTop();
      right -= u.getSystemWindowInsetRight();
      bottom -= u.getSystemWindowInsetBottom();
    }
    Rect localRect2 = k;
    GravityCompat.apply(b(c), paramView.getMeasuredWidth(), paramView.getMeasuredHeight(), localRect1, localRect2, paramInt);
    paramView.layout(left, top, right, bottom);
  }
  
  public final void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  final void a(boolean paramBoolean)
  {
    int i3 = ViewCompat.getLayoutDirection(this);
    int i4 = g.size();
    int i1 = 0;
    while (i1 < i4)
    {
      View localView = (View)g.get(i1);
      Object localObject1 = (d)localView.getLayoutParams();
      int i2 = 0;
      Object localObject3;
      while (i2 < i1)
      {
        localObject2 = (View)g.get(i2);
        if (h == localObject2)
        {
          localObject2 = (d)localView.getLayoutParams();
          if (g != null)
          {
            localObject3 = j;
            Rect localRect1 = k;
            Rect localRect2 = l;
            t.a(this, g, (Rect)localObject3);
            a(localView, false, localRect1);
            a(localView, i3, (Rect)localObject3, localRect2);
            int i5 = left - left;
            int i6 = top - top;
            if (i5 != 0) {
              localView.offsetLeftAndRight(i5);
            }
            if (i6 != 0) {
              localView.offsetTopAndBottom(i6);
            }
            if ((i5 != 0) || (i6 != 0))
            {
              localObject3 = a;
              if (localObject3 != null) {
                ((Behavior)localObject3).b(this, localView, g);
              }
            }
          }
        }
        i2 += 1;
      }
      localObject1 = j;
      Object localObject2 = k;
      ((Rect)localObject1).set(getLayoutParamsi);
      a(localView, true, (Rect)localObject2);
      if (!((Rect)localObject1).equals(localObject2))
      {
        getLayoutParamsi.set((Rect)localObject2);
        i2 = i1 + 1;
        if (i2 < i4)
        {
          localObject1 = (View)g.get(i2);
          localObject2 = (d)((View)localObject1).getLayoutParams();
          localObject3 = a;
          if ((localObject3 != null) && (((Behavior)localObject3).a_(localView)))
          {
            if ((paramBoolean) || (!((d)localObject2).e())) {
              break label387;
            }
            ((d)localObject2).f();
          }
          for (;;)
          {
            i2 += 1;
            break;
            label387:
            ((Behavior)localObject3).b(this, (View)localObject1, localView);
            if (paramBoolean) {
              ((d)localObject2).b(false);
            }
          }
        }
      }
      i1 += 1;
    }
  }
  
  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    Rect localRect = j;
    t.a(this, paramView, localRect);
    return localRect.contains(paramInt1, paramInt2);
  }
  
  public final boolean a(View paramView1, View paramView2)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    Rect localRect;
    if (paramView1.getVisibility() == 0)
    {
      bool1 = bool2;
      if (paramView2.getVisibility() == 0)
      {
        localRect = j;
        if (paramView1.getParent() == this) {
          break label133;
        }
        bool1 = true;
        a(paramView1, bool1, localRect);
        paramView1 = k;
        if (paramView2.getParent() == this) {
          break label138;
        }
      }
    }
    label133:
    label138:
    for (bool1 = true;; bool1 = false)
    {
      a(paramView2, bool1, paramView1);
      bool1 = bool2;
      if (left <= right)
      {
        bool1 = bool2;
        if (top <= bottom)
        {
          bool1 = bool2;
          if (right >= left)
          {
            bool1 = bool2;
            if (bottom >= top) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
      bool1 = false;
      break;
    }
  }
  
  public final void b(View paramView)
  {
    int i3 = g.size();
    int i2 = 0;
    int i1 = 0;
    if (i2 < i3)
    {
      View localView = (View)g.get(i2);
      if (localView == paramView) {
        i1 = 1;
      }
      for (;;)
      {
        i2 += 1;
        break;
        if (i1 != 0)
        {
          d locald = (d)localView.getLayoutParams();
          Behavior localBehavior = a;
          if ((localBehavior != null) && (locald.a(this, localView, paramView))) {
            localBehavior.b(this, localView, paramView);
          }
        }
      }
    }
  }
  
  public final List<View> c(View paramView)
  {
    d locald = (d)paramView.getLayoutParams();
    List localList = i;
    localList.clear();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if ((localView != paramView) && (locald.a(this, paramView, localView))) {
        localList.add(localView);
      }
      i1 += 1;
    }
    return localList;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof d)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    paramView.getLayoutParams();
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  public int getNestedScrollAxes()
  {
    return y.getNestedScrollAxes();
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a();
    if (t)
    {
      if (s == null) {
        s = new e();
      }
      getViewTreeObserver().addOnPreDrawListener(s);
    }
    if ((u == null) && (ViewCompat.getFitsSystemWindows(this))) {
      ViewCompat.requestApplyInsets(this);
    }
    n = true;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
    if ((t) && (s != null)) {
      getViewTreeObserver().removeOnPreDrawListener(s);
    }
    if (r != null) {
      onStopNestedScroll(r);
    }
    n = false;
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((v) && (w != null)) {
      if (u == null) {
        break label61;
      }
    }
    label61:
    for (int i1 = u.getSystemWindowInsetTop();; i1 = 0)
    {
      if (i1 > 0)
      {
        w.setBounds(0, 0, getWidth(), i1);
        w.draw(paramCanvas);
      }
      return;
    }
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    if (i1 == 0) {
      a();
    }
    boolean bool = a(paramMotionEvent, 0);
    if ((i1 == 1) || (i1 == 3)) {
      a();
    }
    return bool;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = ViewCompat.getLayoutDirection(this);
    paramInt3 = g.size();
    paramInt1 = 0;
    while (paramInt1 < paramInt3)
    {
      View localView = (View)g.get(paramInt1);
      Behavior localBehavior = getLayoutParamsa;
      if ((localBehavior == null) || (!localBehavior.a(this, localView, paramInt2))) {
        a(localView, paramInt2);
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    g.clear();
    int i3 = getChildCount();
    int i2 = 0;
    Object localObject3;
    d locald;
    int i1;
    while (i2 < i3)
    {
      localObject3 = getChildAt(i2);
      locald = d((View)localObject3);
      if (f == -1)
      {
        h = null;
        g = null;
        g.add(localObject3);
        i2 += 1;
      }
      else
      {
        if (g != null)
        {
          if (g.getId() == f) {
            break label198;
          }
          i1 = 0;
          label108:
          if (i1 != 0) {}
        }
        else
        {
          g = findViewById(f);
          if (g == null) {
            break label337;
          }
          localObject2 = g;
          localObject1 = g.getParent();
          label151:
          if ((localObject1 == this) || (localObject1 == null)) {
            break label327;
          }
          if (localObject1 != localObject3) {
            break label300;
          }
          if (!isInEditMode()) {
            break label289;
          }
          h = null;
          g = null;
        }
        for (;;)
        {
          localObject1 = g;
          break;
          label198:
          localObject2 = g;
          for (localObject1 = g.getParent();; localObject1 = ((ViewParent)localObject1).getParent())
          {
            if (localObject1 == this) {
              break label277;
            }
            if ((localObject1 == null) || (localObject1 == localObject3))
            {
              h = null;
              g = null;
              i1 = 0;
              break;
            }
            if ((localObject1 instanceof View)) {
              localObject2 = (View)localObject1;
            }
          }
          label277:
          h = ((View)localObject2);
          i1 = 1;
          break label108;
          label289:
          throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
          label300:
          if ((localObject1 instanceof View)) {
            localObject2 = (View)localObject1;
          }
          localObject1 = ((ViewParent)localObject1).getParent();
          break label151;
          label327:
          h = ((View)localObject2);
          continue;
          label337:
          if (!isInEditMode()) {
            break label359;
          }
          h = null;
          g = null;
        }
        label359:
        throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + getResources().getResourceName(f) + " to anchor view " + localObject3);
      }
    }
    Object localObject1 = g;
    Object localObject2 = d;
    if ((localObject1 == null) || (((List)localObject1).size() < 2))
    {
      i3 = getChildCount();
      i2 = 0;
      label443:
      if (i2 >= i3) {
        break label1320;
      }
      localObject1 = getChildAt(i2);
      localObject2 = (d)((View)localObject1).getLayoutParams();
      if (g == null) {
        break label1130;
      }
      i1 = 1;
      label478:
      if (i1 == 0) {
        break label1188;
      }
    }
    label541:
    label580:
    label633:
    label650:
    label769:
    label1130:
    label1183:
    label1188:
    label1230:
    label1236:
    label1242:
    label1283:
    label1311:
    label1320:
    for (int i22 = 1;; i22 = 0)
    {
      int i10;
      int i11;
      int i12;
      int i13;
      int i7;
      int i6;
      int i4;
      int i5;
      int i8;
      int i9;
      int i20;
      if (i22 != t)
      {
        if (i22 != 0)
        {
          if (n)
          {
            if (s == null) {
              s = new e();
            }
            getViewTreeObserver().addOnPreDrawListener(s);
          }
          t = true;
        }
      }
      else
      {
        i10 = getPaddingLeft();
        i11 = getPaddingTop();
        i12 = getPaddingRight();
        i13 = getPaddingBottom();
        int i14 = ViewCompat.getLayoutDirection(this);
        if (i14 != 1) {
          break label1230;
        }
        i2 = 1;
        int i15 = View.MeasureSpec.getMode(paramInt1);
        int i16 = View.MeasureSpec.getSize(paramInt1);
        int i17 = View.MeasureSpec.getMode(paramInt2);
        int i18 = View.MeasureSpec.getSize(paramInt2);
        i7 = getSuggestedMinimumWidth();
        i6 = getSuggestedMinimumHeight();
        if ((u == null) || (!ViewCompat.getFitsSystemWindows(this))) {
          break label1236;
        }
        i3 = 1;
        int i19 = g.size();
        i4 = 0;
        i5 = 0;
        if (i4 >= i19) {
          break label1283;
        }
        localObject1 = (View)g.get(i4);
        localObject2 = (d)((View)localObject1).getLayoutParams();
        i8 = 0;
        i1 = i8;
        if (e >= 0)
        {
          i1 = i8;
          if (i15 != 0)
          {
            i9 = a(e);
            i20 = GravityCompat.getAbsoluteGravity(c(c), i14) & 0x7;
            if (((i20 != 3) || (i2 != 0)) && ((i20 != 5) || (i2 == 0))) {
              break label1242;
            }
            i1 = Math.max(0, i16 - i12 - i9);
          }
        }
        if ((i3 == 0) || (ViewCompat.getFitsSystemWindows((View)localObject1))) {
          break label1311;
        }
        i8 = u.getSystemWindowInsetLeft();
        int i21 = u.getSystemWindowInsetRight();
        i9 = u.getSystemWindowInsetTop();
        i20 = u.getSystemWindowInsetBottom();
        i8 = View.MeasureSpec.makeMeasureSpec(i16 - (i8 + i21), i15);
        i9 = View.MeasureSpec.makeMeasureSpec(i18 - (i9 + i20), i17);
      }
      for (;;)
      {
        localObject3 = a;
        if ((localObject3 == null) || (!((Behavior)localObject3).a(this, (View)localObject1, i8, i1, i9, 0))) {
          a((View)localObject1, i8, i1, i9, 0);
        }
        i7 = Math.max(i7, ((View)localObject1).getMeasuredWidth() + (i10 + i12) + leftMargin + rightMargin);
        i6 = Math.max(i6, ((View)localObject1).getMeasuredHeight() + (i11 + i13) + topMargin + bottomMargin);
        i5 = ViewCompat.combineMeasuredStates(i5, ViewCompat.getMeasuredState((View)localObject1));
        i4 += 1;
        break label650;
        localObject3 = new View[((List)localObject1).size()];
        ((List)localObject1).toArray((Object[])localObject3);
        i5 = localObject3.length;
        i1 = 0;
        while (i1 < i5)
        {
          i2 = i1 + 1;
          for (i3 = i1; i2 < i5; i3 = i4)
          {
            i4 = i3;
            if (((Comparator)localObject2).compare(localObject3[i2], localObject3[i3]) < 0) {
              i4 = i2;
            }
            i2 += 1;
          }
          if (i1 != i3)
          {
            locald = localObject3[i3];
            localObject3[i3] = localObject3[i1];
            localObject3[i1] = locald;
          }
          i1 += 1;
        }
        ((List)localObject1).clear();
        i1 = 0;
        while (i1 < i5)
        {
          ((List)localObject1).add(localObject3[i1]);
          i1 += 1;
        }
        break;
        i4 = getChildCount();
        i1 = 0;
        for (;;)
        {
          if (i1 >= i4) {
            break label1183;
          }
          localObject3 = getChildAt(i1);
          if ((localObject3 != localObject1) && (((d)localObject2).a(this, (View)localObject1, (View)localObject3)))
          {
            i1 = 1;
            break;
          }
          i1 += 1;
        }
        i1 = 0;
        break label478;
        i2 += 1;
        break label443;
        if ((n) && (s != null)) {
          getViewTreeObserver().removeOnPreDrawListener(s);
        }
        t = false;
        break label541;
        i2 = 0;
        break label580;
        i3 = 0;
        break label633;
        if ((i20 != 5) || (i2 != 0))
        {
          i1 = i8;
          if (i20 != 3) {
            break label769;
          }
          i1 = i8;
          if (i2 == 0) {
            break label769;
          }
        }
        i1 = Math.max(0, i9 - i10);
        break label769;
        setMeasuredDimension(ViewCompat.resolveSizeAndState(i7, paramInt1, 0xFF000000 & i5), ViewCompat.resolveSizeAndState(i6, paramInt2, i5 << 16));
        return;
        i9 = paramInt2;
        i8 = paramInt1;
      }
    }
  }
  
  public boolean onNestedFling(View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool = false;
    if (i1 < i2)
    {
      paramView = getChildAt(i1);
      Object localObject = (d)paramView.getLayoutParams();
      if (!((d)localObject).d()) {
        break label92;
      }
      localObject = a;
      if (localObject == null) {
        break label92;
      }
      bool = ((Behavior)localObject).a(this, paramView, paramFloat2, paramBoolean) | bool;
    }
    label92:
    for (;;)
    {
      i1 += 1;
      break;
      if (bool) {
        a(true);
      }
      return bool;
    }
  }
  
  public boolean onNestedPreFling(View paramView, float paramFloat1, float paramFloat2)
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      getChildAt(i1).getLayoutParams();
      i1 += 1;
    }
    return false;
  }
  
  public void onNestedPreScroll(View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    int i7 = getChildCount();
    int i4 = 0;
    int i3 = 0;
    int i1 = 0;
    int i2 = 0;
    label108:
    label125:
    int i5;
    if (i4 < i7)
    {
      paramView = getChildAt(i4);
      Object localObject = (d)paramView.getLayoutParams();
      if (!((d)localObject).d()) {
        break label224;
      }
      localObject = a;
      if (localObject == null) {
        break label224;
      }
      int[] arrayOfInt = m;
      m[1] = 0;
      arrayOfInt[0] = 0;
      ((Behavior)localObject).a(this, paramView, paramInt2, m);
      if (paramInt1 > 0)
      {
        i2 = Math.max(i2, m[0]);
        if (paramInt2 <= 0) {
          break label185;
        }
        i1 = Math.max(i1, m[1]);
        i5 = 1;
        i3 = i2;
        i2 = i1;
        i1 = i5;
      }
    }
    for (;;)
    {
      i5 = i4 + 1;
      i4 = i3;
      i3 = i1;
      i1 = i2;
      i2 = i4;
      i4 = i5;
      break;
      i2 = Math.min(i2, m[0]);
      break label108;
      label185:
      i1 = Math.min(i1, m[1]);
      break label125;
      paramArrayOfInt[0] = i2;
      paramArrayOfInt[1] = i1;
      if (i3 != 0) {
        a(true);
      }
      return;
      label224:
      i5 = i1;
      int i6 = i2;
      i1 = i3;
      i2 = i5;
      i3 = i6;
    }
  }
  
  public void onNestedScroll(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt3 = getChildCount();
    paramInt2 = 0;
    paramInt1 = 0;
    if (paramInt2 < paramInt3)
    {
      paramView = getChildAt(paramInt2);
      Object localObject = (d)paramView.getLayoutParams();
      if (!((d)localObject).d()) {
        break label79;
      }
      localObject = a;
      if (localObject == null) {
        break label79;
      }
      ((Behavior)localObject).b(this, paramView, paramInt4);
      paramInt1 = 1;
    }
    label79:
    for (;;)
    {
      paramInt2 += 1;
      break;
      if (paramInt1 != 0) {
        a(true);
      }
      return;
    }
  }
  
  public void onNestedScrollAccepted(View paramView1, View paramView2, int paramInt)
  {
    y.onNestedScrollAccepted(paramView1, paramView2, paramInt);
    q = paramView1;
    r = paramView2;
    int i1 = getChildCount();
    paramInt = 0;
    while (paramInt < i1)
    {
      getChildAt(paramInt).getLayoutParams();
      paramInt += 1;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    paramParcelable = a;
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      int i3 = localView.getId();
      Behavior localBehavior = da;
      if ((i3 != -1) && (localBehavior != null))
      {
        Parcelable localParcelable = (Parcelable)paramParcelable.get(i3);
        if (localParcelable != null) {
          localBehavior.a(this, localView, localParcelable);
        }
      }
      i1 += 1;
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    SparseArray localSparseArray = new SparseArray();
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      Object localObject = getChildAt(i1);
      int i3 = ((View)localObject).getId();
      Behavior localBehavior = getLayoutParamsa;
      if ((i3 != -1) && (localBehavior != null))
      {
        localObject = localBehavior.a(this, (View)localObject);
        if (localObject != null) {
          localSparseArray.append(i3, localObject);
        }
      }
      i1 += 1;
    }
    a = localSparseArray;
    return localSavedState;
  }
  
  public boolean onStartNestedScroll(View paramView1, View paramView2, int paramInt)
  {
    int i2 = getChildCount();
    int i1 = 0;
    boolean bool1 = false;
    if (i1 < i2)
    {
      paramView2 = getChildAt(i1);
      d locald = (d)paramView2.getLayoutParams();
      Behavior localBehavior = a;
      if (localBehavior != null)
      {
        boolean bool2 = localBehavior.a(this, paramView2, paramView1, paramInt);
        locald.a(bool2);
        bool1 |= bool2;
      }
      for (;;)
      {
        i1 += 1;
        break;
        locald.a(false);
      }
    }
    return bool1;
  }
  
  public void onStopNestedScroll(View paramView)
  {
    y.onStopNestedScroll(paramView);
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      d locald = (d)localView.getLayoutParams();
      if (locald.d())
      {
        Behavior localBehavior = a;
        if (localBehavior != null) {
          localBehavior.a(this, localView, paramView);
        }
        locald.c();
        locald.f();
      }
      i1 += 1;
    }
    q = null;
    r = null;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool2;
    if (p == null)
    {
      bool2 = a(paramMotionEvent, 1);
      if (!bool2) {}
    }
    for (;;)
    {
      Behavior localBehavior = p.getLayoutParams()).a;
      boolean bool1;
      if (localBehavior != null) {
        bool1 = localBehavior.b(this, p, paramMotionEvent);
      }
      for (;;)
      {
        if (p == null)
        {
          bool1 |= super.onTouchEvent(paramMotionEvent);
          paramMotionEvent = null;
        }
        for (;;)
        {
          if (paramMotionEvent != null) {
            paramMotionEvent.recycle();
          }
          if ((i1 == 1) || (i1 == 3)) {
            a();
          }
          return bool1;
          if (bool2)
          {
            long l1 = SystemClock.uptimeMillis();
            paramMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
            super.onTouchEvent(paramMotionEvent);
          }
          else
          {
            paramMotionEvent = null;
          }
        }
        bool1 = false;
        continue;
        bool1 = false;
      }
      bool2 = false;
    }
  }
  
  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    if (paramBoolean) {
      a();
    }
  }
  
  public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener paramOnHierarchyChangeListener)
  {
    x = paramOnHierarchyChangeListener;
  }
  
  public void setStatusBarBackground(Drawable paramDrawable)
  {
    w = paramDrawable;
    invalidate();
  }
  
  public void setStatusBarBackgroundColor(int paramInt)
  {
    setStatusBarBackground(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarBackgroundResource(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = ContextCompat.getDrawable(getContext(), paramInt);; localDrawable = null)
    {
      setStatusBarBackground(localDrawable);
      return;
    }
  }
  
  public static abstract class Behavior<V extends View>
  {
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet) {}
    
    public static WindowInsetsCompat a(WindowInsetsCompat paramWindowInsetsCompat)
    {
      return paramWindowInsetsCompat;
    }
    
    public Parcelable a(CoordinatorLayout paramCoordinatorLayout, V paramV)
    {
      return View.BaseSavedState.EMPTY_STATE;
    }
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt, int[] paramArrayOfInt) {}
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable) {}
    
    public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView) {}
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, float paramFloat, boolean paramBoolean)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt)
    {
      return false;
    }
    
    public boolean a_(View paramView)
    {
      return false;
    }
    
    public void b(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt) {}
    
    public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
    {
      return false;
    }
    
    public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
    {
      return false;
    }
  }
  
  protected static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {});
    SparseArray<Parcelable> a;
    
    public SavedState(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super();
      int j = paramParcel.readInt();
      int[] arrayOfInt = new int[j];
      paramParcel.readIntArray(arrayOfInt);
      paramParcel = paramParcel.readParcelableArray(paramClassLoader);
      a = new SparseArray(j);
      int i = 0;
      while (i < j)
      {
        a.append(arrayOfInt[i], paramParcel[i]);
        i += 1;
      }
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      int j = 0;
      super.writeToParcel(paramParcel, paramInt);
      if (a != null) {}
      int[] arrayOfInt;
      Parcelable[] arrayOfParcelable;
      for (int i = a.size();; i = 0)
      {
        paramParcel.writeInt(i);
        arrayOfInt = new int[i];
        arrayOfParcelable = new Parcelable[i];
        while (j < i)
        {
          arrayOfInt[j] = a.keyAt(j);
          arrayOfParcelable[j] = ((Parcelable)a.valueAt(j));
          j += 1;
        }
      }
      paramParcel.writeIntArray(arrayOfInt);
      paramParcel.writeParcelableArray(arrayOfParcelable, paramInt);
    }
  }
  
  final class a
    implements OnApplyWindowInsetsListener
  {
    a() {}
    
    public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
    {
      CoordinatorLayout.a(CoordinatorLayout.this, paramWindowInsetsCompat);
      return paramWindowInsetsCompat.consumeSystemWindowInsets();
    }
  }
  
  @Retention(RetentionPolicy.RUNTIME)
  public static @interface b
  {
    Class<? extends CoordinatorLayout.Behavior> a();
  }
  
  final class c
    implements ViewGroup.OnHierarchyChangeListener
  {
    c() {}
    
    public final void onChildViewAdded(View paramView1, View paramView2)
    {
      if (CoordinatorLayout.a(CoordinatorLayout.this) != null) {
        CoordinatorLayout.a(CoordinatorLayout.this).onChildViewAdded(paramView1, paramView2);
      }
    }
    
    public final void onChildViewRemoved(View paramView1, View paramView2)
    {
      a(paramView2);
      if (CoordinatorLayout.a(CoordinatorLayout.this) != null) {
        CoordinatorLayout.a(CoordinatorLayout.this).onChildViewRemoved(paramView1, paramView2);
      }
    }
  }
  
  public static final class d
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
    
    public d()
    {
      super(-2);
    }
    
    d(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
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
    
    public d(d paramd)
    {
      super();
    }
    
    public d(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public d(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
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
  
  final class e
    implements ViewTreeObserver.OnPreDrawListener
  {
    e() {}
    
    public final boolean onPreDraw()
    {
      a(false);
      return true;
    }
  }
  
  static final class f
    implements Comparator<View>
  {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */