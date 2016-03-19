package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.design.R.dimen;
import android.support.design.R.style;
import android.support.design.R.styleable;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageButton;

@CoordinatorLayout.b(a=Behavior.class)
public class FloatingActionButton
  extends ImageButton
{
  private ColorStateList a;
  private PorterDuff.Mode b;
  private int c;
  private int d;
  private int e;
  private int f;
  private final Rect g;
  private final i h;
  
  public FloatingActionButton(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    p.a(paramContext);
    g = new Rect();
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.FloatingActionButton, paramInt, R.style.Widget_Design_FloatingActionButton);
    a = paramAttributeSet.getColorStateList(R.styleable.FloatingActionButton_backgroundTint);
    float f1;
    float f2;
    switch (paramAttributeSet.getInt(R.styleable.FloatingActionButton_backgroundTintMode, -1))
    {
    default: 
      paramContext = null;
      b = paramContext;
      d = paramAttributeSet.getColor(R.styleable.FloatingActionButton_rippleColor, 0);
      e = paramAttributeSet.getInt(R.styleable.FloatingActionButton_fabSize, 0);
      c = paramAttributeSet.getDimensionPixelSize(R.styleable.FloatingActionButton_borderWidth, 0);
      f1 = paramAttributeSet.getDimension(R.styleable.FloatingActionButton_elevation, 0.0F);
      f2 = paramAttributeSet.getDimension(R.styleable.FloatingActionButton_pressedTranslationZ, 0.0F);
      paramAttributeSet.recycle();
      paramContext = new m()
      {
        public final float a()
        {
          return c() / 2.0F;
        }
        
        public final void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
        {
          FloatingActionButton.a(FloatingActionButton.this).set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4);
          setPadding(FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt1, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt2, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt3, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt4);
        }
        
        public final void a(Drawable paramAnonymousDrawable)
        {
          FloatingActionButton.a(FloatingActionButton.this, paramAnonymousDrawable);
        }
      };
      paramInt = Build.VERSION.SDK_INT;
      if (paramInt >= 21) {
        h = new j(this, paramContext);
      }
      break;
    }
    for (;;)
    {
      paramInt = (int)getResources().getDimension(R.dimen.design_fab_content_size);
      f = ((c() - paramInt) / 2);
      h.a(a, b, d, c);
      h.a(f1);
      h.b(f2);
      return;
      paramContext = PorterDuff.Mode.SRC_OVER;
      break;
      paramContext = PorterDuff.Mode.SRC_IN;
      break;
      paramContext = PorterDuff.Mode.SRC_ATOP;
      break;
      paramContext = PorterDuff.Mode.MULTIPLY;
      break;
      paramContext = PorterDuff.Mode.SCREEN;
      break;
      if (paramInt >= 12) {
        h = new h(this, paramContext);
      } else {
        h = new g(this, paramContext);
      }
    }
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0: 
    default: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  public final void a()
  {
    h.c();
  }
  
  public final void b()
  {
    h.b();
  }
  
  final int c()
  {
    switch (e)
    {
    default: 
      return getResources().getDimensionPixelSize(R.dimen.design_fab_size_normal);
    }
    return getResources().getDimensionPixelSize(R.dimen.design_fab_size_mini);
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    h.a(getDrawableState());
  }
  
  public ColorStateList getBackgroundTintList()
  {
    return a;
  }
  
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return b;
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    h.a();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    h.f();
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    h.g();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = c();
    paramInt1 = Math.min(a(i, paramInt1), a(i, paramInt2));
    setMeasuredDimension(g.left + paramInt1 + g.right, paramInt1 + g.top + g.bottom);
  }
  
  public void setBackgroundColor(int paramInt) {}
  
  public void setBackgroundDrawable(Drawable paramDrawable) {}
  
  public void setBackgroundResource(int paramInt) {}
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (a != paramColorStateList)
    {
      a = paramColorStateList;
      h.a(paramColorStateList);
    }
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (b != paramMode)
    {
      b = paramMode;
      h.a(paramMode);
    }
  }
  
  public void setRippleColor(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      h.a(paramInt);
    }
  }
  
  public static class Behavior
    extends CoordinatorLayout.Behavior<FloatingActionButton>
  {
    private static final boolean a;
    private q b;
    private float c;
    private Rect d;
    
    static
    {
      if (Build.VERSION.SDK_INT >= 11) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
    {
      if (getLayoutParamsf != paramAppBarLayout.getId()) {
        return false;
      }
      if (d == null) {
        d = new Rect();
      }
      Rect localRect = d;
      t.a(paramCoordinatorLayout, paramAppBarLayout, localRect);
      if (bottom <= paramAppBarLayout.b()) {
        paramFloatingActionButton.b();
      }
      for (;;)
      {
        return true;
        paramFloatingActionButton.a();
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */