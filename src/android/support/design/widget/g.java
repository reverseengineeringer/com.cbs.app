package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.support.design.R.anim;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;

class g
  extends i
{
  Drawable a;
  Drawable b;
  b c;
  l d;
  private float j;
  private float k;
  private int l;
  private o m;
  private boolean n;
  
  g(View paramView, m paramm)
  {
    super(paramView, paramm);
    l = paramView.getResources().getInteger(17694720);
    m = new o();
    m.a(paramView);
    m.a(e, a(new b((byte)0)));
    m.a(f, a(new b((byte)0)));
    m.a(g, a(new c((byte)0)));
  }
  
  private Animation a(Animation paramAnimation)
  {
    paramAnimation.setInterpolator(a.b);
    paramAnimation.setDuration(l);
    return paramAnimation;
  }
  
  private static ColorStateList b(int paramInt)
  {
    return new ColorStateList(new int[][] { f, e, new int[0] }, new int[] { paramInt, paramInt, 0 });
  }
  
  private void j()
  {
    Rect localRect = new Rect();
    d.getPadding(localRect);
    i.a(left, top, right, bottom);
  }
  
  void a()
  {
    m.a();
  }
  
  void a(float paramFloat)
  {
    if ((j != paramFloat) && (d != null))
    {
      d.a(paramFloat, k + paramFloat);
      j = paramFloat;
      j();
    }
  }
  
  void a(int paramInt)
  {
    DrawableCompat.setTintList(b, b(paramInt));
  }
  
  final void a(ColorStateList paramColorStateList)
  {
    DrawableCompat.setTintList(a, paramColorStateList);
    if (c != null) {
      c.a(paramColorStateList);
    }
  }
  
  void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    a = DrawableCompat.wrap(i());
    DrawableCompat.setTintList(a, paramColorStateList);
    if (paramMode != null) {
      DrawableCompat.setTintMode(a, paramMode);
    }
    b = DrawableCompat.wrap(i());
    DrawableCompat.setTintList(b, b(paramInt1));
    DrawableCompat.setTintMode(b, PorterDuff.Mode.MULTIPLY);
    if (paramInt2 > 0) {
      c = a(paramInt2, paramColorStateList);
    }
    for (paramColorStateList = new Drawable[] { c, a, b };; paramColorStateList = new Drawable[] { a, b })
    {
      d = new l(h.getResources(), new LayerDrawable(paramColorStateList), i.a(), j, j + k);
      d.a();
      i.a(d);
      j();
      return;
      c = null;
    }
  }
  
  final void a(PorterDuff.Mode paramMode)
  {
    DrawableCompat.setTintMode(a, paramMode);
  }
  
  void a(int[] paramArrayOfInt)
  {
    m.a(paramArrayOfInt);
  }
  
  void b()
  {
    if ((n) || (h.getVisibility() != 0)) {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(h.getContext(), R.anim.design_fab_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(200L);
    localAnimation.setAnimationListener(new a.a()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        g.a(g.this, false);
        h.setVisibility(8);
      }
      
      public final void onAnimationStart(Animation paramAnonymousAnimation)
      {
        g.a(g.this, true);
      }
    });
    h.startAnimation(localAnimation);
  }
  
  void b(float paramFloat)
  {
    if ((k != paramFloat) && (d != null))
    {
      k = paramFloat;
      l locall = d;
      float f = j;
      locall.a(j, f + paramFloat);
      j();
    }
  }
  
  void c()
  {
    if ((h.getVisibility() != 0) || (n))
    {
      h.clearAnimation();
      h.setVisibility(0);
      Animation localAnimation = AnimationUtils.loadAnimation(h.getContext(), R.anim.design_fab_in);
      localAnimation.setDuration(200L);
      localAnimation.setInterpolator(a.b);
      localAnimation.setAnimationListener(new a.a()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
      });
      h.startAnimation(localAnimation);
    }
  }
  
  private abstract class a
    extends Animation
  {
    private float b;
    private float c;
    
    private a() {}
    
    protected abstract float a();
    
    protected void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      paramTransformation = d;
      paramTransformation.a(b + c * paramFloat, h);
    }
    
    public void reset()
    {
      super.reset();
      b = d.j;
      c = (a() - b);
    }
  }
  
  private final class b
    extends g.a
  {
    private b()
    {
      super((byte)0);
    }
    
    protected final float a()
    {
      return g.a(g.this) + g.b(g.this);
    }
  }
  
  private final class c
    extends g.a
  {
    private c()
    {
      super((byte)0);
    }
    
    protected final float a()
    {
      return g.a(g.this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */