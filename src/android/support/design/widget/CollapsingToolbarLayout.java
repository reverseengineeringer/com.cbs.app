package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.support.design.R.id;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class CollapsingToolbarLayout
  extends FrameLayout
{
  private boolean a = true;
  private int b;
  private Toolbar c;
  private View d;
  private int e;
  private int f;
  private int g;
  private int h;
  private final Rect i = new Rect();
  private final d j;
  private boolean k;
  private boolean l;
  private Drawable m;
  private Drawable n;
  private int o;
  private boolean p;
  private q q;
  private AppBarLayout.a r;
  private int s;
  private WindowInsetsCompat t;
  
  public CollapsingToolbarLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CollapsingToolbarLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.a(paramContext);
    j = new d(this);
    j.a(a.c);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingToolbarLayout, paramInt, R.style.Widget_Design_CollapsingToolbar);
    j.c(paramContext.getInt(R.styleable.CollapsingToolbarLayout_expandedTitleGravity, 8388691));
    j.d(paramContext.getInt(R.styleable.CollapsingToolbarLayout_collapsedTitleGravity, 8388627));
    paramInt = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMargin, 0);
    h = paramInt;
    g = paramInt;
    f = paramInt;
    e = paramInt;
    int i1;
    if (ViewCompat.getLayoutDirection(this) == 1)
    {
      paramInt = 1;
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart))
      {
        i1 = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginStart, 0);
        if (paramInt == 0) {
          break label391;
        }
        g = i1;
      }
      label163:
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd))
      {
        i1 = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginEnd, 0);
        if (paramInt == 0) {
          break label400;
        }
        e = i1;
      }
    }
    for (;;)
    {
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop)) {
        f = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginTop, 0);
      }
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom)) {
        h = paramContext.getDimensionPixelSize(R.styleable.CollapsingToolbarLayout_expandedTitleMarginBottom, 0);
      }
      k = paramContext.getBoolean(R.styleable.CollapsingToolbarLayout_titleEnabled, true);
      setTitle(paramContext.getText(R.styleable.CollapsingToolbarLayout_title));
      j.f(R.style.TextAppearance_Design_CollapsingToolbar_Expanded);
      j.e(R.style.TextAppearance_AppCompat_Widget_ActionBar_Title);
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance)) {
        j.f(paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_expandedTitleTextAppearance, 0));
      }
      if (paramContext.hasValue(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance)) {
        j.e(paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_collapsedTitleTextAppearance, 0));
      }
      setContentScrim(paramContext.getDrawable(R.styleable.CollapsingToolbarLayout_contentScrim));
      setStatusBarScrim(paramContext.getDrawable(R.styleable.CollapsingToolbarLayout_statusBarScrim));
      b = paramContext.getResourceId(R.styleable.CollapsingToolbarLayout_toolbarId, -1);
      paramContext.recycle();
      setWillNotDraw(false);
      ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener()
      {
        public final WindowInsetsCompat onApplyWindowInsets(View paramAnonymousView, WindowInsetsCompat paramAnonymousWindowInsetsCompat)
        {
          CollapsingToolbarLayout.a(CollapsingToolbarLayout.this, paramAnonymousWindowInsetsCompat);
          requestLayout();
          return paramAnonymousWindowInsetsCompat.consumeSystemWindowInsets();
        }
      });
      return;
      paramInt = 0;
      break;
      label391:
      e = i1;
      break label163;
      label400:
      g = i1;
    }
  }
  
  private void a()
  {
    if (!a) {
      return;
    }
    int i2 = getChildCount();
    int i1 = 0;
    Object localObject1 = null;
    Object localObject2;
    if (i1 < i2)
    {
      localObject2 = getChildAt(i1);
      if ((localObject2 instanceof Toolbar)) {
        if (b != -1) {
          if (b == ((View)localObject2).getId()) {
            localObject2 = (Toolbar)localObject2;
          }
        }
      }
    }
    for (;;)
    {
      label64:
      if (localObject2 == null)
      {
        label69:
        c = ((Toolbar)localObject1);
        b();
        a = false;
        return;
        if (localObject1 != null) {
          break label117;
        }
        localObject1 = (Toolbar)localObject2;
      }
      label117:
      for (;;)
      {
        i1 += 1;
        break;
        localObject2 = (Toolbar)localObject2;
        break label64;
        localObject1 = localObject2;
        break label69;
      }
      localObject2 = null;
    }
  }
  
  private void a(int paramInt)
  {
    if (paramInt != o)
    {
      if ((m != null) && (c != null)) {
        ViewCompat.postInvalidateOnAnimation(c);
      }
      o = paramInt;
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  private static v b(View paramView)
  {
    v localv2 = (v)paramView.getTag(R.id.view_offset_helper);
    v localv1 = localv2;
    if (localv2 == null)
    {
      localv1 = new v(paramView);
      paramView.setTag(R.id.view_offset_helper, localv1);
    }
    return localv1;
  }
  
  private void b()
  {
    if ((!k) && (d != null))
    {
      ViewParent localViewParent = d.getParent();
      if ((localViewParent instanceof ViewGroup)) {
        ((ViewGroup)localViewParent).removeView(d);
      }
    }
    if ((k) && (c != null))
    {
      if (d == null) {
        d = new View(getContext());
      }
      if (d.getParent() == null) {
        c.addView(d, -1, -1);
      }
    }
  }
  
  private LayoutParams c()
  {
    return new LayoutParams(super.generateDefaultLayoutParams());
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LayoutParams;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    a();
    if ((c == null) && (m != null) && (o > 0))
    {
      m.mutate().setAlpha(o);
      m.draw(paramCanvas);
    }
    if ((k) && (l)) {
      j.a(paramCanvas);
    }
    if ((n != null) && (o > 0)) {
      if (t == null) {
        break label153;
      }
    }
    label153:
    for (int i1 = t.getSystemWindowInsetTop();; i1 = 0)
    {
      if (i1 > 0)
      {
        n.setBounds(0, -s, getWidth(), i1 - s);
        n.mutate().setAlpha(o);
        n.draw(paramCanvas);
      }
      return;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    a();
    if ((paramView == c) && (m != null) && (o > 0))
    {
      m.mutate().setAlpha(o);
      m.draw(paramCanvas);
    }
    return super.drawChild(paramCanvas, paramView, paramLong);
  }
  
  public FrameLayout.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if ((localViewParent instanceof AppBarLayout))
    {
      if (r == null) {
        r = new a((byte)0);
      }
      ((AppBarLayout)localViewParent).a(r);
    }
  }
  
  protected void onDetachedFromWindow()
  {
    ViewParent localViewParent = getParent();
    if ((r != null) && ((localViewParent instanceof AppBarLayout))) {
      ((AppBarLayout)localViewParent).b(r);
    }
    super.onDetachedFromWindow();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((k) && (d != null))
    {
      l = d.isShown();
      if (l)
      {
        t.a(this, d, i);
        j.b(i.left, paramInt4 - i.height(), i.right, paramInt4);
        j.a(e, i.bottom + f, paramInt3 - paramInt1 - g, paramInt4 - paramInt2 - h);
        j.d();
      }
    }
    paramInt1 = 0;
    paramInt2 = getChildCount();
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      if ((t != null) && (!ViewCompat.getFitsSystemWindows(localView)))
      {
        paramInt3 = t.getSystemWindowInsetTop();
        if (localView.getTop() < paramInt3) {
          localView.offsetTopAndBottom(paramInt3);
        }
      }
      b(localView).a();
      paramInt1 += 1;
    }
    if (c != null)
    {
      if ((k) && (TextUtils.isEmpty(j.e()))) {
        j.a(c.getTitle());
      }
      setMinimumHeight(c.getHeight());
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    a();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (m != null) {
      m.setBounds(0, 0, paramInt1, paramInt2);
    }
  }
  
  public void setCollapsedTitleGravity(int paramInt)
  {
    j.d(paramInt);
  }
  
  public void setCollapsedTitleTextAppearance(int paramInt)
  {
    j.e(paramInt);
  }
  
  public void setCollapsedTitleTextColor(int paramInt)
  {
    j.a(paramInt);
  }
  
  public void setCollapsedTitleTypeface(Typeface paramTypeface)
  {
    j.a(paramTypeface);
  }
  
  public void setContentScrim(Drawable paramDrawable)
  {
    if (m != paramDrawable)
    {
      if (m != null) {
        m.setCallback(null);
      }
      if (paramDrawable == null) {
        break label67;
      }
      m = paramDrawable.mutate();
      paramDrawable.setBounds(0, 0, getWidth(), getHeight());
      paramDrawable.setCallback(this);
      paramDrawable.setAlpha(o);
    }
    for (;;)
    {
      ViewCompat.postInvalidateOnAnimation(this);
      return;
      label67:
      m = null;
    }
  }
  
  public void setContentScrimColor(int paramInt)
  {
    setContentScrim(new ColorDrawable(paramInt));
  }
  
  public void setContentScrimResource(int paramInt)
  {
    setContentScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setExpandedTitleColor(int paramInt)
  {
    j.b(paramInt);
  }
  
  public void setExpandedTitleGravity(int paramInt)
  {
    j.c(paramInt);
  }
  
  public void setExpandedTitleTextAppearance(int paramInt)
  {
    j.f(paramInt);
  }
  
  public void setExpandedTitleTypeface(Typeface paramTypeface)
  {
    j.b(paramTypeface);
  }
  
  public void setScrimsShown(boolean paramBoolean)
  {
    if ((ViewCompat.isLaidOut(this)) && (!isInEditMode())) {}
    for (boolean bool = true;; bool = false)
    {
      setScrimsShown(paramBoolean, bool);
      return;
    }
  }
  
  public void setScrimsShown(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i1 = 255;
    if (p != paramBoolean1)
    {
      if (!paramBoolean2) {
        break label123;
      }
      if (!paramBoolean1) {
        break label98;
      }
      a();
      if (q != null) {
        break label103;
      }
      q = w.a();
      q.a(600);
      q.a(a.b);
      q.a(new q.c()
      {
        public final void a(q paramAnonymousq)
        {
          CollapsingToolbarLayout.a(CollapsingToolbarLayout.this, paramAnonymousq.c());
        }
      });
    }
    for (;;)
    {
      q.a(o, i1);
      q.a();
      p = paramBoolean1;
      return;
      label98:
      i1 = 0;
      break;
      label103:
      if (q.b()) {
        q.e();
      }
    }
    label123:
    if (paramBoolean1) {}
    for (;;)
    {
      a(i1);
      break;
      i1 = 0;
    }
  }
  
  public void setStatusBarScrim(Drawable paramDrawable)
  {
    if (n != paramDrawable)
    {
      if (n != null) {
        n.setCallback(null);
      }
      n = paramDrawable;
      paramDrawable.setCallback(this);
      paramDrawable.mutate().setAlpha(o);
      ViewCompat.postInvalidateOnAnimation(this);
    }
  }
  
  public void setStatusBarScrimColor(int paramInt)
  {
    setStatusBarScrim(new ColorDrawable(paramInt));
  }
  
  public void setStatusBarScrimResource(int paramInt)
  {
    setStatusBarScrim(ContextCompat.getDrawable(getContext(), paramInt));
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    j.a(paramCharSequence);
  }
  
  public void setTitleEnabled(boolean paramBoolean)
  {
    if (paramBoolean != k)
    {
      k = paramBoolean;
      b();
      requestLayout();
    }
  }
  
  public static class LayoutParams
    extends FrameLayout.LayoutParams
  {
    int a = 0;
    float b = 0.5F;
    
    public LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CollapsingAppBarLayout_LayoutParams);
      a = paramContext.getInt(R.styleable.CollapsingAppBarLayout_LayoutParams_layout_collapseMode, 0);
      b = paramContext.getFloat(R.styleable.CollapsingAppBarLayout_LayoutParams_layout_collapseParallaxMultiplier, 0.5F);
      paramContext.recycle();
    }
    
    public LayoutParams(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public LayoutParams(FrameLayout.LayoutParams paramLayoutParams)
    {
      super();
    }
  }
  
  private final class a
    implements AppBarLayout.a
  {
    private a() {}
    
    public final void a(AppBarLayout paramAppBarLayout, int paramInt)
    {
      boolean bool = false;
      CollapsingToolbarLayout.b(CollapsingToolbarLayout.this, paramInt);
      int i;
      int k;
      label52:
      Object localObject;
      CollapsingToolbarLayout.LayoutParams localLayoutParams;
      v localv;
      if (CollapsingToolbarLayout.a(CollapsingToolbarLayout.this) != null)
      {
        i = CollapsingToolbarLayout.a(CollapsingToolbarLayout.this).getSystemWindowInsetTop();
        k = paramAppBarLayout.a();
        m = getChildCount();
        j = 0;
        if (j >= m) {
          break label185;
        }
        localObject = getChildAt(j);
        localLayoutParams = (CollapsingToolbarLayout.LayoutParams)((View)localObject).getLayoutParams();
        localv = CollapsingToolbarLayout.a((View)localObject);
        switch (a)
        {
        }
      }
      for (;;)
      {
        j += 1;
        break label52;
        i = 0;
        break;
        if (getHeight() - i + paramInt >= ((View)localObject).getHeight())
        {
          localv.a(-paramInt);
          continue;
          float f = -paramInt;
          localv.a(Math.round(b * f));
        }
      }
      label185:
      if ((CollapsingToolbarLayout.b(CollapsingToolbarLayout.this) != null) || (CollapsingToolbarLayout.c(CollapsingToolbarLayout.this) != null))
      {
        localObject = CollapsingToolbarLayout.this;
        if (getHeight() + paramInt < ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this) * 2 + i) {
          bool = true;
        }
        ((CollapsingToolbarLayout)localObject).setScrimsShown(bool);
      }
      if ((CollapsingToolbarLayout.c(CollapsingToolbarLayout.this) != null) && (i > 0)) {
        ViewCompat.postInvalidateOnAnimation(CollapsingToolbarLayout.this);
      }
      int j = getHeight();
      int m = ViewCompat.getMinimumHeight(CollapsingToolbarLayout.this);
      CollapsingToolbarLayout.d(CollapsingToolbarLayout.this).b(Math.abs(paramInt) / (j - m - i));
      if (Math.abs(paramInt) == k)
      {
        ViewCompat.setElevation(paramAppBarLayout, paramAppBarLayout.c());
        return;
      }
      ViewCompat.setElevation(paramAppBarLayout, 0.0F);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */