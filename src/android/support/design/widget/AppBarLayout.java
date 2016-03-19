package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@CoordinatorLayout.b(a=Behavior.class)
public class AppBarLayout
  extends LinearLayout
{
  boolean a;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  private float e;
  private int f = 0;
  private WindowInsetsCompat g;
  private final List<a> h;
  
  public AppBarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AppBarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    p.a(paramContext);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout, 0, R.style.Widget_Design_AppBarLayout);
    e = paramContext.getDimensionPixelSize(R.styleable.AppBarLayout_elevation, 0);
    setBackgroundDrawable(paramContext.getDrawable(R.styleable.AppBarLayout_android_background));
    if (paramContext.hasValue(R.styleable.AppBarLayout_expanded)) {
      setExpanded(paramContext.getBoolean(R.styleable.AppBarLayout_expanded, false));
    }
    paramContext.recycle();
    w.a(this);
    h = new ArrayList();
    ViewCompat.setElevation(this, e);
    ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener()
    {
      public final WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
      {
        AppBarLayout.a(AppBarLayout.this, paramAnonymousWindowInsetsCompat);
        return paramAnonymousWindowInsetsCompat.consumeSystemWindowInsets();
      }
    });
  }
  
  private LayoutParams a(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  private static LayoutParams a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof LinearLayout.LayoutParams)) {
      return new LayoutParams((LinearLayout.LayoutParams)paramLayoutParams);
    }
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new LayoutParams(paramLayoutParams);
  }
  
  private void d()
  {
    b = -1;
    c = -1;
    d = -1;
  }
  
  private int e()
  {
    if (g != null) {
      return g.getSystemWindowInsetTop();
    }
    return 0;
  }
  
  public final int a()
  {
    if (b != -1) {
      return b;
    }
    int k = getChildCount();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      View localView = getChildAt(j);
      LayoutParams localLayoutParams = (LayoutParams)localView.getLayoutParams();
      int n = localView.getMeasuredHeight();
      int m = a;
      if ((m & 0x1) != 0)
      {
        int i1 = topMargin;
        i += bottomMargin + (n + i1);
        if ((m & 0x2) != 0) {
          i -= ViewCompat.getMinimumHeight(localView);
        }
      }
    }
    for (;;)
    {
      i = Math.max(0, i - e());
      b = i;
      return i;
      j += 1;
      break;
    }
  }
  
  public final void a(a parama)
  {
    if ((parama != null) && (!h.contains(parama))) {
      h.add(parama);
    }
  }
  
  final int b()
  {
    int j = 0;
    int i;
    int k;
    if (g != null)
    {
      i = g.getSystemWindowInsetTop();
      k = ViewCompat.getMinimumHeight(this);
      if (k == 0) {
        break label39;
      }
      j = k * 2 + i;
    }
    label39:
    do
    {
      return j;
      i = 0;
      break;
      k = getChildCount();
    } while (k <= 0);
    return ViewCompat.getMinimumHeight(getChildAt(k - 1)) * 2 + i;
  }
  
  public final void b(a parama)
  {
    if (parama != null) {
      h.remove(parama);
    }
  }
  
  public final float c()
  {
    return e;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    d();
    a = false;
    paramInt2 = getChildCount();
    paramInt1 = 0;
    for (;;)
    {
      if (paramInt1 < paramInt2)
      {
        if (getChildAtgetLayoutParamsb != null) {
          a = true;
        }
      }
      else {
        return;
      }
      paramInt1 += 1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    d();
  }
  
  public void setExpanded(boolean paramBoolean)
  {
    setExpanded(paramBoolean, ViewCompat.isLaidOut(this));
  }
  
  public void setExpanded(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i;
    if (paramBoolean1)
    {
      i = 1;
      if (!paramBoolean2) {
        break label31;
      }
    }
    label31:
    for (int j = 4;; j = 0)
    {
      f = (j | i);
      requestLayout();
      return;
      i = 2;
      break;
    }
  }
  
  public void setOrientation(int paramInt)
  {
    if (paramInt != 1) {
      throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }
    super.setOrientation(paramInt);
  }
  
  public void setTargetElevation(float paramFloat)
  {
    e = paramFloat;
  }
  
  public static class Behavior
    extends HeaderBehavior<AppBarLayout>
  {
    private int a;
    private boolean b;
    private boolean c;
    private q d;
    private int e = -1;
    private boolean f;
    private float g;
    private WeakReference<View> h;
    private a i;
    
    public Behavior() {}
    
    public Behavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
    }
    
    private void a(AppBarLayout paramAppBarLayout)
    {
      List localList = AppBarLayout.h(paramAppBarLayout);
      int k = localList.size();
      int j = 0;
      while (j < k)
      {
        AppBarLayout.a locala = (AppBarLayout.a)localList.get(j);
        if (locala != null) {
          locala.a(paramAppBarLayout, super.b());
        }
        j += 1;
      }
    }
    
    private void a(final CoordinatorLayout paramCoordinatorLayout, final AppBarLayout paramAppBarLayout, int paramInt)
    {
      int j = a();
      if (j == paramInt)
      {
        if ((d != null) && (d.b())) {
          d.e();
        }
        return;
      }
      if (d == null)
      {
        d = w.a();
        d.a(a.c);
        d.a(new q.c()
        {
          public final void a(q paramAnonymousq)
          {
            c(paramCoordinatorLayout, paramAppBarLayout, paramAnonymousq.c());
          }
        });
      }
      for (;;)
      {
        float f1 = Math.abs(j - paramInt) / getResourcesgetDisplayMetricsdensity;
        d.a(Math.round(f1 * 1000.0F / 300.0F));
        d.a(j, paramInt);
        d.a();
        return;
        d.e();
      }
    }
    
    final int a()
    {
      return super.b() + a;
    }
    
    protected static class SavedState
      extends View.BaseSavedState
    {
      public static final Parcelable.Creator<SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks() {});
      int a;
      float b;
      boolean c;
      
      public SavedState(Parcel paramParcel)
      {
        super();
        a = paramParcel.readInt();
        b = paramParcel.readFloat();
        if (paramParcel.readByte() != 0) {}
        for (boolean bool = true;; bool = false)
        {
          c = bool;
          return;
        }
      }
      
      public SavedState(Parcelable paramParcelable)
      {
        super();
      }
      
      public void writeToParcel(Parcel paramParcel, int paramInt)
      {
        super.writeToParcel(paramParcel, paramInt);
        paramParcel.writeInt(a);
        paramParcel.writeFloat(b);
        if (c) {}
        for (paramInt = 1;; paramInt = 0)
        {
          paramParcel.writeByte((byte)paramInt);
          return;
        }
      }
    }
    
    public static abstract class a
    {
      public abstract boolean a();
    }
  }
  
  public static class LayoutParams
    extends LinearLayout.LayoutParams
  {
    int a = 1;
    Interpolator b;
    
    public LayoutParams()
    {
      super(-2);
    }
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.AppBarLayout_LayoutParams);
      a = paramAttributeSet.getInt(R.styleable.AppBarLayout_LayoutParams_layout_scrollFlags, 0);
      if (paramAttributeSet.hasValue(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator)) {
        b = AnimationUtils.loadInterpolator(paramContext, paramAttributeSet.getResourceId(R.styleable.AppBarLayout_LayoutParams_layout_scrollInterpolator, 0));
      }
      paramAttributeSet.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
    {
      super();
    }
    
    public LayoutParams(LinearLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  public static class ScrollingViewBehavior
    extends HeaderScrollingViewBehavior
  {
    private int a;
    
    public ScrollingViewBehavior() {}
    
    public ScrollingViewBehavior(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.ScrollingViewBehavior_Params);
      a = paramContext.getDimensionPixelSize(R.styleable.ScrollingViewBehavior_Params_behavior_overlapTop, 0);
      paramContext.recycle();
    }
    
    private boolean c(View paramView)
    {
      boolean bool = false;
      CoordinatorLayout.Behavior localBehavior = getLayoutParamsa;
      int j;
      int k;
      int i;
      int m;
      if ((localBehavior instanceof AppBarLayout.Behavior))
      {
        j = ((AppBarLayout.Behavior)localBehavior).a();
        k = paramView.getHeight();
        if ((a == 0) || (!(paramView instanceof AppBarLayout))) {
          break label137;
        }
        paramView = (AppBarLayout)paramView;
        i = paramView.a();
        m = AppBarLayout.b(paramView);
        if ((m == 0) || (i + j > m)) {
          break label100;
        }
        i = 0;
      }
      for (;;)
      {
        super.a(k + j - i);
        bool = true;
        return bool;
        label100:
        i -= m;
        if (i != 0) {
          i = k.a(Math.round((j / i + 1.0F) * a), 0, a);
        } else {
          label137:
          i = a;
        }
      }
    }
    
    final View a(List<View> paramList)
    {
      int j = paramList.size();
      int i = 0;
      while (i < j)
      {
        View localView = (View)paramList.get(i);
        if ((localView instanceof AppBarLayout)) {
          return localView;
        }
        i += 1;
      }
      return null;
    }
    
    public final boolean a(CoordinatorLayout paramCoordinatorLayout, View paramView, int paramInt)
    {
      super.a(paramCoordinatorLayout, paramView, paramInt);
      paramCoordinatorLayout = paramCoordinatorLayout.c(paramView);
      int i = paramCoordinatorLayout.size();
      paramInt = 0;
      while ((paramInt < i) && (!c((View)paramCoordinatorLayout.get(paramInt)))) {
        paramInt += 1;
      }
      return true;
    }
    
    public final boolean a_(View paramView)
    {
      return paramView instanceof AppBarLayout;
    }
    
    final int b(View paramView)
    {
      if ((paramView instanceof AppBarLayout)) {
        return ((AppBarLayout)paramView).a();
      }
      return super.b(paramView);
    }
    
    public final boolean b(CoordinatorLayout paramCoordinatorLayout, View paramView1, View paramView2)
    {
      c(paramView2);
      return false;
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(AppBarLayout paramAppBarLayout, int paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.AppBarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */