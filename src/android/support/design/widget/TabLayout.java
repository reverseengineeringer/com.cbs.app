package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.support.design.R.dimen;
import android.support.design.R.layout;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.app.ActionBar.Tab;
import android.support.v7.widget.TintManager;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public class TabLayout
  extends HorizontalScrollView
{
  private final ArrayList<c> a = new ArrayList();
  private c b;
  private final b c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private ColorStateList i;
  private float j;
  private float k;
  private final int l;
  private int m = Integer.MAX_VALUE;
  private final int n;
  private final int o;
  private final int p;
  private int q;
  private int r;
  private int s;
  private a t;
  private View.OnClickListener u;
  private q v;
  private q w;
  
  public TabLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TabLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.a(paramContext);
    setHorizontalScrollBarEnabled(false);
    c = new b(paramContext);
    addView(c, -2, -1);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.TabLayout, paramInt, R.style.Widget_Design_TabLayout);
    c.b(paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabIndicatorHeight, 0));
    c.a(paramAttributeSet.getColor(R.styleable.TabLayout_tabIndicatorColor, 0));
    paramInt = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPadding, 0);
    g = paramInt;
    f = paramInt;
    e = paramInt;
    d = paramInt;
    d = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingStart, d);
    e = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingTop, e);
    f = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingEnd, f);
    g = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabPaddingBottom, g);
    h = paramAttributeSet.getResourceId(R.styleable.TabLayout_tabTextAppearance, R.style.TextAppearance_Design_Tab);
    paramContext = paramContext.obtainStyledAttributes(h, R.styleable.TextAppearance);
    try
    {
      j = paramContext.getDimensionPixelSize(R.styleable.TextAppearance_android_textSize, 0);
      i = paramContext.getColorStateList(R.styleable.TextAppearance_android_textColor);
      paramContext.recycle();
      if (paramAttributeSet.hasValue(R.styleable.TabLayout_tabTextColor)) {
        i = paramAttributeSet.getColorStateList(R.styleable.TabLayout_tabTextColor);
      }
      if (paramAttributeSet.hasValue(R.styleable.TabLayout_tabSelectedTextColor))
      {
        paramInt = paramAttributeSet.getColor(R.styleable.TabLayout_tabSelectedTextColor, 0);
        i = a(i.getDefaultColor(), paramInt);
      }
      n = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMinWidth, -1);
      o = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabMaxWidth, -1);
      l = paramAttributeSet.getResourceId(R.styleable.TabLayout_tabBackground, 0);
      q = paramAttributeSet.getDimensionPixelSize(R.styleable.TabLayout_tabContentStart, 0);
      s = paramAttributeSet.getInt(R.styleable.TabLayout_tabMode, 1);
      r = paramAttributeSet.getInt(R.styleable.TabLayout_tabGravity, 0);
      paramAttributeSet.recycle();
      paramContext = getResources();
      k = paramContext.getDimensionPixelSize(R.dimen.design_tab_text_size_2line);
      p = paramContext.getDimensionPixelSize(R.dimen.design_tab_scrollable_min_width);
      b();
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  private int a(int paramInt, float paramFloat)
  {
    int i1 = 0;
    int i2 = 0;
    View localView2;
    View localView1;
    if (s == 0)
    {
      localView2 = c.getChildAt(paramInt);
      if (paramInt + 1 >= c.getChildCount()) {
        break label111;
      }
      localView1 = c.getChildAt(paramInt + 1);
      if (localView2 == null) {
        break label117;
      }
    }
    label111:
    label117:
    for (paramInt = localView2.getWidth();; paramInt = 0)
    {
      i1 = i2;
      if (localView1 != null) {
        i1 = localView1.getWidth();
      }
      i2 = localView2.getLeft();
      i1 = (int)((i1 + paramInt) * paramFloat * 0.5F) + i2 + localView2.getWidth() / 2 - getWidth() / 2;
      return i1;
      localView1 = null;
      break;
    }
  }
  
  private static ColorStateList a(int paramInt1, int paramInt2)
  {
    return new ColorStateList(new int[][] { SELECTED_STATE_SET, EMPTY_STATE_SET }, new int[] { paramInt2, paramInt1 });
  }
  
  private void a(c paramc, int paramInt)
  {
    paramc.a(paramInt);
    a.add(paramInt, paramc);
    int i1 = a.size();
    paramInt += 1;
    while (paramInt < i1)
    {
      ((c)a.get(paramInt)).a(paramInt);
      paramInt += 1;
    }
  }
  
  private void a(LinearLayout.LayoutParams paramLayoutParams)
  {
    if ((s == 1) && (r == 0))
    {
      width = 0;
      weight = 1.0F;
      return;
    }
    width = -2;
    weight = 0.0F;
  }
  
  private void a(boolean paramBoolean)
  {
    int i1 = 0;
    while (i1 < c.getChildCount())
    {
      View localView = c.getChildAt(i1);
      localView.setMinimumWidth(c());
      a((LinearLayout.LayoutParams)localView.getLayoutParams());
      if (paramBoolean) {
        localView.requestLayout();
      }
      i1 += 1;
    }
  }
  
  private void b()
  {
    if (s == 0) {}
    for (int i1 = Math.max(0, q - d);; i1 = 0)
    {
      ViewCompat.setPaddingRelative(c, i1, 0, 0, 0);
      switch (s)
      {
      }
      for (;;)
      {
        a(true);
        return;
        c.setGravity(1);
        continue;
        c.setGravity(8388611);
      }
    }
  }
  
  private void b(int paramInt)
  {
    e locale = (e)c.getChildAt(paramInt);
    if (locale != null) {
      locale.a();
    }
  }
  
  private int c()
  {
    if (n != -1) {
      return n;
    }
    if (s == 0) {
      return p;
    }
    return 0;
  }
  
  private int c(int paramInt)
  {
    return Math.round(getResourcesgetDisplayMetricsdensity * paramInt);
  }
  
  private void d(int paramInt)
  {
    int i3 = 0;
    if (paramInt == -1) {
      return;
    }
    b localb;
    int i4;
    if ((getWindowToken() != null) && (ViewCompat.isLaidOut(this)))
    {
      localb = c;
      i4 = localb.getChildCount();
      i1 = 0;
    }
    for (;;)
    {
      i2 = i3;
      if (i1 < i4)
      {
        if (localb.getChildAt(i1).getWidth() <= 0) {
          i2 = 1;
        }
      }
      else
      {
        if (i2 == 0) {
          break;
        }
        setScrollPosition(paramInt, 0.0F, true);
        return;
      }
      i1 += 1;
    }
    int i1 = getScrollX();
    int i2 = a(paramInt, 0.0F);
    if (i1 != i2)
    {
      if (v == null)
      {
        v = w.a();
        v.a(a.b);
        v.a(300);
        v.a(new q.c()
        {
          public final void a(q paramAnonymousq)
          {
            scrollTo(paramAnonymousq.c(), 0);
          }
        });
      }
      v.a(i1, i2);
      v.a();
    }
    c.a(paramInt, 300);
  }
  
  private void e(int paramInt)
  {
    int i2 = c.getChildCount();
    if ((paramInt < i2) && (!c.getChildAt(paramInt).isSelected()))
    {
      int i1 = 0;
      if (i1 < i2)
      {
        View localView = c.getChildAt(i1);
        if (i1 == paramInt) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          i1 += 1;
          break;
        }
      }
    }
  }
  
  public final int a()
  {
    if (b != null) {
      return b.c();
    }
    return -1;
  }
  
  public final c a(int paramInt)
  {
    return (c)a.get(paramInt);
  }
  
  final void a(c paramc)
  {
    a(paramc, true);
  }
  
  final void a(c paramc, boolean paramBoolean)
  {
    if (b == paramc)
    {
      if (b != null) {
        d(paramc.c());
      }
      return;
    }
    int i1;
    if (paramBoolean)
    {
      if (paramc == null) {
        break label110;
      }
      i1 = paramc.c();
      label37:
      if (i1 != -1) {
        e(i1);
      }
      if (((b != null) && (b.c() != -1)) || (i1 == -1)) {
        break label115;
      }
      setScrollPosition(i1, 0.0F, true);
    }
    for (;;)
    {
      b = paramc;
      if ((b == null) || (t == null)) {
        break;
      }
      t.a(b);
      return;
      label110:
      i1 = -1;
      break label37;
      label115:
      d(i1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 1;
    int i3 = a.size();
    int i1 = 0;
    Object localObject;
    if (i1 < i3)
    {
      localObject = (c)a.get(i1);
      if ((localObject == null) || (((c)localObject).b() == null) || (TextUtils.isEmpty(((c)localObject).d()))) {}
    }
    for (i1 = 1;; i1 = 0)
    {
      if (i1 != 0)
      {
        i1 = 72;
        label66:
        i1 = c(i1) + getPaddingTop() + getPaddingBottom();
        switch (View.MeasureSpec.getMode(paramInt2))
        {
        default: 
          label112:
          i1 = View.MeasureSpec.getSize(paramInt1);
          if (View.MeasureSpec.getMode(paramInt1) != 0)
          {
            if (o > 0)
            {
              i1 = o;
              label136:
              m = i1;
            }
          }
          else
          {
            super.onMeasure(paramInt1, paramInt2);
            if (getChildCount() == 1)
            {
              localObject = getChildAt(0);
              switch (s)
              {
              default: 
                paramInt1 = 0;
              }
            }
          }
          break;
        }
      }
      for (;;)
      {
        if (paramInt1 != 0)
        {
          paramInt1 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom(), getLayoutParamsheight);
          ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), paramInt1);
        }
        return;
        i1 += 1;
        break;
        i1 = 48;
        break label66;
        paramInt2 = View.MeasureSpec.makeMeasureSpec(Math.min(i1, View.MeasureSpec.getSize(paramInt2)), 1073741824);
        break label112;
        paramInt2 = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
        break label112;
        i1 -= c(56);
        break label136;
        if (((View)localObject).getMeasuredWidth() < getMeasuredWidth()) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
      }
      if (((View)localObject).getMeasuredWidth() != getMeasuredWidth()) {}
      for (paramInt1 = i2;; paramInt1 = 0) {
        break;
      }
    }
  }
  
  public void setOnTabSelectedListener(a parama)
  {
    t = parama;
  }
  
  public void setScrollPosition(int paramInt, float paramFloat, boolean paramBoolean)
  {
    if ((w != null) && (w.b())) {}
    do
    {
      do
      {
        return;
      } while ((paramInt < 0) || (paramInt >= c.getChildCount()));
      c.a(paramInt, paramFloat);
      scrollTo(a(paramInt, paramFloat), 0);
    } while (!paramBoolean);
    e(Math.round(paramInt + paramFloat));
  }
  
  public void setSelectedTabIndicatorColor(int paramInt)
  {
    c.a(paramInt);
  }
  
  public void setSelectedTabIndicatorHeight(int paramInt)
  {
    c.b(paramInt);
  }
  
  public void setTabGravity(int paramInt)
  {
    if (r != paramInt)
    {
      r = paramInt;
      b();
    }
  }
  
  public void setTabMode(int paramInt)
  {
    if (paramInt != s)
    {
      s = paramInt;
      b();
    }
  }
  
  public void setTabTextColors(int paramInt1, int paramInt2)
  {
    setTabTextColors(a(paramInt1, paramInt2));
  }
  
  public void setTabTextColors(ColorStateList paramColorStateList)
  {
    if (i != paramColorStateList)
    {
      i = paramColorStateList;
      int i1 = 0;
      int i2 = c.getChildCount();
      while (i1 < i2)
      {
        b(i1);
        i1 += 1;
      }
    }
  }
  
  public void setTabsFromPagerAdapter(PagerAdapter paramPagerAdapter)
  {
    c.removeAllViews();
    Object localObject = a.iterator();
    while (((Iterator)localObject).hasNext())
    {
      ((c)((Iterator)localObject).next()).a(-1);
      ((Iterator)localObject).remove();
    }
    b = null;
    int i1 = 0;
    int i2 = paramPagerAdapter.getCount();
    while (i1 < i2)
    {
      localObject = new c(this).a(paramPagerAdapter.getPageTitle(i1));
      boolean bool = a.isEmpty();
      if (c.a((c)localObject) != this) {
        throw new IllegalArgumentException("Tab belongs to a different TabLayout.");
      }
      e locale = new e(getContext(), (c)localObject);
      locale.setFocusable(true);
      locale.setMinimumWidth(c());
      if (u == null) {
        u = new View.OnClickListener()
        {
          public final void onClick(View paramAnonymousView)
          {
            ((TabLayout.e)paramAnonymousView).b().e();
          }
        };
      }
      locale.setOnClickListener(u);
      b localb = c;
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
      a(localLayoutParams);
      localb.addView(locale, localLayoutParams);
      if (bool) {
        locale.setSelected(true);
      }
      a((c)localObject, a.size());
      if (bool) {
        ((c)localObject).e();
      }
      i1 += 1;
    }
  }
  
  public void setupWithViewPager(ViewPager paramViewPager)
  {
    PagerAdapter localPagerAdapter = paramViewPager.getAdapter();
    if (localPagerAdapter == null) {
      throw new IllegalArgumentException("ViewPager does not have a PagerAdapter set");
    }
    setTabsFromPagerAdapter(localPagerAdapter);
    paramViewPager.addOnPageChangeListener(new d(this));
    setOnTabSelectedListener(new f(paramViewPager));
    if (localPagerAdapter.getCount() > 0)
    {
      int i1 = paramViewPager.getCurrentItem();
      if (a() != i1) {
        a(a(i1), true);
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(TabLayout.c paramc);
  }
  
  private final class b
    extends LinearLayout
  {
    private int b;
    private final Paint c;
    private int d = -1;
    private float e;
    private int f = -1;
    private int g = -1;
    private q h;
    
    b(Context paramContext)
    {
      super();
      setWillNotDraw(false);
      c = new Paint();
    }
    
    private void a()
    {
      View localView = getChildAt(d);
      int k;
      int i;
      float f1;
      float f2;
      float f3;
      if ((localView != null) && (localView.getWidth() > 0))
      {
        int m = localView.getLeft();
        k = localView.getRight();
        i = m;
        j = k;
        if (e > 0.0F)
        {
          i = m;
          j = k;
          if (d < getChildCount() - 1)
          {
            localView = getChildAt(d + 1);
            f1 = e;
            f2 = localView.getLeft();
            f3 = e;
            i = (int)(m * (1.0F - f3) + f1 * f2);
            f1 = e;
            f2 = localView.getRight();
            f3 = e;
          }
        }
      }
      for (int j = (int)(k * (1.0F - f3) + f2 * f1);; j = -1)
      {
        b(i, j);
        return;
        i = -1;
      }
    }
    
    private void b(int paramInt1, int paramInt2)
    {
      if ((paramInt1 != f) || (paramInt2 != g))
      {
        f = paramInt1;
        g = paramInt2;
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    final void a(int paramInt)
    {
      if (c.getColor() != paramInt)
      {
        c.setColor(paramInt);
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    final void a(int paramInt, float paramFloat)
    {
      d = paramInt;
      e = paramFloat;
      a();
    }
    
    final void a(final int paramInt1, int paramInt2)
    {
      final int i;
      Object localObject;
      final int k;
      final int m;
      final int j;
      if (ViewCompat.getLayoutDirection(this) == 1)
      {
        i = 1;
        localObject = getChildAt(paramInt1);
        k = ((View)localObject).getLeft();
        m = ((View)localObject).getRight();
        if (Math.abs(paramInt1 - d) > 1) {
          break label152;
        }
        i = f;
        j = g;
      }
      for (;;)
      {
        if ((i != k) || (j != m))
        {
          localObject = TabLayout.a(TabLayout.this, w.a());
          ((q)localObject).a(a.b);
          ((q)localObject).a(paramInt2);
          ((q)localObject).a(0.0F, 1.0F);
          ((q)localObject).a(new q.c()
          {
            public final void a(q paramAnonymousq)
            {
              float f = paramAnonymousq.f();
              TabLayout.b.a(TabLayout.b.this, a.a(i, k, f), a.a(j, m, f));
            }
          });
          ((q)localObject).a(new q.b()
          {
            public final void a()
            {
              TabLayout.b.a(TabLayout.b.this, paramInt1);
              TabLayout.b.a(TabLayout.b.this);
            }
            
            public final void b()
            {
              TabLayout.b.a(TabLayout.b.this, paramInt1);
              TabLayout.b.a(TabLayout.b.this);
            }
          });
          ((q)localObject).a();
          h = ((q)localObject);
        }
        return;
        i = 0;
        break;
        label152:
        j = TabLayout.b(TabLayout.this, 24);
        if (paramInt1 < d)
        {
          if (i == 0)
          {
            j = m + j;
            i = j;
          }
        }
        else if (i != 0)
        {
          j = m + j;
          i = j;
          continue;
        }
        j = k - j;
        i = j;
      }
    }
    
    final void b(int paramInt)
    {
      if (b != paramInt)
      {
        b = paramInt;
        ViewCompat.postInvalidateOnAnimation(this);
      }
    }
    
    public final void draw(Canvas paramCanvas)
    {
      super.draw(paramCanvas);
      if ((f >= 0) && (g > f)) {
        paramCanvas.drawRect(f, getHeight() - b, g, getHeight(), c);
      }
    }
    
    protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if ((h != null) && (h.b()))
      {
        h.e();
        long l = h.g();
        paramInt1 = d;
        float f1 = h.f();
        a(paramInt1, Math.round((float)l * (1.0F - f1)));
        return;
      }
      a();
    }
    
    protected final void onMeasure(int paramInt1, int paramInt2)
    {
      int m = 0;
      super.onMeasure(paramInt1, paramInt2);
      if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
        break label18;
      }
      label18:
      while ((TabLayout.j(TabLayout.this) != 1) || (TabLayout.m(TabLayout.this) != 1)) {
        return;
      }
      int n = getChildCount();
      int k = 0;
      int j = 0;
      label53:
      Object localObject;
      if (k < n)
      {
        localObject = getChildAt(k);
        if (((View)localObject).getVisibility() != 0) {
          break label237;
        }
      }
      label136:
      label222:
      label234:
      label237:
      for (int i = Math.max(j, ((View)localObject).getMeasuredWidth());; i = j)
      {
        k += 1;
        j = i;
        break label53;
        if (j <= 0) {
          break;
        }
        i = TabLayout.b(TabLayout.this, 16);
        if (j * n <= getMeasuredWidth() - i * 2)
        {
          k = 0;
          i = m;
          m = i;
          if (k >= n) {
            break label222;
          }
          localObject = (LinearLayout.LayoutParams)getChildAt(k).getLayoutParams();
          if ((width == j) && (weight == 0.0F)) {
            break label234;
          }
          width = j;
          weight = 0.0F;
          i = 1;
        }
        for (;;)
        {
          k += 1;
          break label136;
          TabLayout.n(TabLayout.this);
          TabLayout.o(TabLayout.this);
          m = 1;
          if (m == 0) {
            break;
          }
          super.onMeasure(paramInt1, paramInt2);
          return;
        }
      }
    }
  }
  
  public static final class c
  {
    private Drawable a;
    private CharSequence b;
    private CharSequence c;
    private int d = -1;
    private View e;
    private final TabLayout f;
    
    c(TabLayout paramTabLayout)
    {
      f = paramTabLayout;
    }
    
    public final c a(CharSequence paramCharSequence)
    {
      b = paramCharSequence;
      if (d >= 0) {
        TabLayout.a(f, d);
      }
      return this;
    }
    
    public final View a()
    {
      return e;
    }
    
    final void a(int paramInt)
    {
      d = paramInt;
    }
    
    public final Drawable b()
    {
      return a;
    }
    
    public final int c()
    {
      return d;
    }
    
    public final CharSequence d()
    {
      return b;
    }
    
    public final void e()
    {
      f.a(this);
    }
    
    public final CharSequence f()
    {
      return c;
    }
  }
  
  public static final class d
    implements ViewPager.OnPageChangeListener
  {
    private final WeakReference<TabLayout> a;
    private int b;
    private int c;
    
    public d(TabLayout paramTabLayout)
    {
      a = new WeakReference(paramTabLayout);
    }
    
    public final void onPageScrollStateChanged(int paramInt)
    {
      b = c;
      c = paramInt;
    }
    
    public final void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
    {
      boolean bool2 = true;
      TabLayout localTabLayout = (TabLayout)a.get();
      if (localTabLayout != null)
      {
        bool1 = bool2;
        if (c != 1) {
          if ((c != 2) || (b != 1)) {
            break label62;
          }
        }
      }
      label62:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localTabLayout.setScrollPosition(paramInt1, paramFloat, bool1);
        return;
      }
    }
    
    public final void onPageSelected(int paramInt)
    {
      TabLayout localTabLayout = (TabLayout)a.get();
      TabLayout.c localc;
      if ((localTabLayout != null) && (localTabLayout.a() != paramInt))
      {
        localc = localTabLayout.a(paramInt);
        if (c != 0) {
          break label47;
        }
      }
      label47:
      for (boolean bool = true;; bool = false)
      {
        localTabLayout.a(localc, bool);
        return;
      }
    }
  }
  
  final class e
    extends LinearLayout
    implements View.OnLongClickListener
  {
    private final TabLayout.c b;
    private TextView c;
    private ImageView d;
    private View e;
    private TextView f;
    private ImageView g;
    private int h = 2;
    
    public e(Context paramContext, TabLayout.c paramc)
    {
      super();
      b = paramc;
      if (TabLayout.a(TabLayout.this) != 0) {
        setBackgroundDrawable(TintManager.getDrawable(paramContext, TabLayout.a(TabLayout.this)));
      }
      ViewCompat.setPaddingRelative(this, TabLayout.b(TabLayout.this), TabLayout.c(TabLayout.this), TabLayout.d(TabLayout.this), TabLayout.e(TabLayout.this));
      setGravity(17);
      setOrientation(1);
      a();
    }
    
    private void a(TabLayout.c paramc, TextView paramTextView, ImageView paramImageView)
    {
      Drawable localDrawable = paramc.b();
      CharSequence localCharSequence = paramc.d();
      int i;
      if (paramImageView != null)
      {
        if (localDrawable != null)
        {
          paramImageView.setImageDrawable(localDrawable);
          paramImageView.setVisibility(0);
          setVisibility(0);
          paramImageView.setContentDescription(paramc.f());
        }
      }
      else
      {
        if (TextUtils.isEmpty(localCharSequence)) {
          break label178;
        }
        i = 1;
        label56:
        if (paramTextView != null)
        {
          if (i == 0) {
            break label184;
          }
          paramTextView.setText(localCharSequence);
          paramTextView.setContentDescription(paramc.f());
          paramTextView.setVisibility(0);
          setVisibility(0);
        }
        label89:
        if (paramImageView != null)
        {
          paramTextView = (ViewGroup.MarginLayoutParams)paramImageView.getLayoutParams();
          if ((i == 0) || (paramImageView.getVisibility() != 0)) {
            break label209;
          }
        }
      }
      label178:
      label184:
      label209:
      for (int j = TabLayout.b(TabLayout.this, 8);; j = 0)
      {
        if (j != bottomMargin)
        {
          bottomMargin = j;
          paramImageView.requestLayout();
        }
        if ((i == 0) && (!TextUtils.isEmpty(paramc.f())))
        {
          setOnLongClickListener(this);
          return;
          paramImageView.setVisibility(8);
          paramImageView.setImageDrawable(null);
          break;
          i = 0;
          break label56;
          paramTextView.setVisibility(8);
          paramTextView.setText(null);
          break label89;
        }
        setOnLongClickListener(null);
        setLongClickable(false);
        return;
      }
    }
    
    final void a()
    {
      TabLayout.c localc = b;
      Object localObject = localc.a();
      if (localObject != null)
      {
        ViewParent localViewParent = ((View)localObject).getParent();
        if (localViewParent != this)
        {
          if (localViewParent != null) {
            ((ViewGroup)localViewParent).removeView((View)localObject);
          }
          addView((View)localObject);
        }
        e = ((View)localObject);
        if (c != null) {
          c.setVisibility(8);
        }
        if (d != null)
        {
          d.setVisibility(8);
          d.setImageDrawable(null);
        }
        f = ((TextView)((View)localObject).findViewById(16908308));
        if (f != null) {
          h = TextViewCompat.getMaxLines(f);
        }
        g = ((ImageView)((View)localObject).findViewById(16908294));
        if (e != null) {
          break label310;
        }
        if (d == null)
        {
          localObject = (ImageView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_icon, this, false);
          addView((View)localObject, 0);
          d = ((ImageView)localObject);
        }
        if (c == null)
        {
          localObject = (TextView)LayoutInflater.from(getContext()).inflate(R.layout.design_layout_tab_text, this, false);
          addView((View)localObject);
          c = ((TextView)localObject);
          h = TextViewCompat.getMaxLines(c);
        }
        c.setTextAppearance(getContext(), TabLayout.k(TabLayout.this));
        if (TabLayout.l(TabLayout.this) != null) {
          c.setTextColor(TabLayout.l(TabLayout.this));
        }
        a(localc, c, d);
      }
      label310:
      while ((f == null) && (g == null))
      {
        return;
        if (e != null)
        {
          removeView(e);
          e = null;
        }
        f = null;
        g = null;
        break;
      }
      a(localc, f, g);
    }
    
    public final TabLayout.c b()
    {
      return b;
    }
    
    @TargetApi(14)
    public final void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ActionBar.Tab.class.getName());
    }
    
    @TargetApi(14)
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(ActionBar.Tab.class.getName());
    }
    
    public final boolean onLongClick(View paramView)
    {
      paramView = new int[2];
      getLocationOnScreen(paramView);
      Object localObject = getContext();
      int i = getWidth();
      int j = getHeight();
      int k = getResourcesgetDisplayMetricswidthPixels;
      localObject = Toast.makeText((Context)localObject, b.f(), 0);
      ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
      ((Toast)localObject).show();
      return true;
    }
    
    public final void onMeasure(int paramInt1, int paramInt2)
    {
      int k = 1;
      int j = View.MeasureSpec.getSize(paramInt1);
      int m = View.MeasureSpec.getMode(paramInt1);
      int n = TabLayout.f(TabLayout.this);
      int i = paramInt1;
      if (n > 0) {
        if (m != 0)
        {
          i = paramInt1;
          if (j <= n) {}
        }
        else
        {
          i = View.MeasureSpec.makeMeasureSpec(TabLayout.g(TabLayout.this), m);
        }
      }
      super.onMeasure(i, paramInt2);
      float f2;
      float f1;
      if (c != null)
      {
        getResources();
        f2 = TabLayout.h(TabLayout.this);
        j = h;
        if ((d == null) || (d.getVisibility() != 0)) {
          break label276;
        }
        paramInt1 = 1;
        f1 = f2;
      }
      for (;;)
      {
        f2 = c.getTextSize();
        m = c.getLineCount();
        j = TextViewCompat.getMaxLines(c);
        if ((f1 != f2) || ((j >= 0) && (paramInt1 != j)))
        {
          j = k;
          if (TabLayout.j(TabLayout.this) == 1)
          {
            j = k;
            if (f1 > f2)
            {
              j = k;
              if (m == 1)
              {
                Layout localLayout = c.getLayout();
                if (localLayout != null)
                {
                  j = k;
                  if (localLayout.getLineWidth(0) * (f1 / localLayout.getPaint().getTextSize()) <= localLayout.getWidth()) {}
                }
                else
                {
                  j = 0;
                }
              }
            }
          }
          if (j != 0)
          {
            c.setTextSize(0, f1);
            c.setMaxLines(paramInt1);
            super.onMeasure(i, paramInt2);
          }
        }
        return;
        label276:
        paramInt1 = j;
        f1 = f2;
        if (c != null)
        {
          paramInt1 = j;
          f1 = f2;
          if (c.getLineCount() > 1)
          {
            f1 = TabLayout.i(TabLayout.this);
            paramInt1 = j;
          }
        }
      }
    }
    
    public final void setSelected(boolean paramBoolean)
    {
      if (isSelected() != paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        super.setSelected(paramBoolean);
        if ((i != 0) && (paramBoolean))
        {
          sendAccessibilityEvent(4);
          if (c != null) {
            c.setSelected(paramBoolean);
          }
          if (d != null) {
            d.setSelected(paramBoolean);
          }
        }
        return;
      }
    }
  }
  
  public static final class f
    implements TabLayout.a
  {
    private final ViewPager a;
    
    public f(ViewPager paramViewPager)
    {
      a = paramViewPager;
    }
    
    public final void a(TabLayout.c paramc)
    {
      a.setCurrentItem(paramc.c());
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */