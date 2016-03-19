package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.GradientDrawable;
import android.support.design.R.color;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

abstract class i
{
  static final int[] e = { 16842919, 16842910 };
  static final int[] f = { 16842908, 16842910 };
  static final int[] g = new int[0];
  private ViewTreeObserver.OnPreDrawListener a;
  final View h;
  final m i;
  
  i(View paramView, m paramm)
  {
    h = paramView;
    i = paramm;
  }
  
  static GradientDrawable i()
  {
    GradientDrawable localGradientDrawable = new GradientDrawable();
    localGradientDrawable.setShape(1);
    localGradientDrawable.setColor(-1);
    return localGradientDrawable;
  }
  
  final b a(int paramInt, ColorStateList paramColorStateList)
  {
    Resources localResources = h.getResources();
    b localb = h();
    localb.a(localResources.getColor(R.color.design_fab_stroke_top_outer_color), localResources.getColor(R.color.design_fab_stroke_top_inner_color), localResources.getColor(R.color.design_fab_stroke_end_inner_color), localResources.getColor(R.color.design_fab_stroke_end_outer_color));
    localb.a(paramInt);
    localb.a(paramColorStateList);
    return localb;
  }
  
  abstract void a();
  
  abstract void a(float paramFloat);
  
  abstract void a(int paramInt);
  
  abstract void a(ColorStateList paramColorStateList);
  
  abstract void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2);
  
  abstract void a(PorterDuff.Mode paramMode);
  
  abstract void a(int[] paramArrayOfInt);
  
  abstract void b();
  
  abstract void b(float paramFloat);
  
  abstract void c();
  
  boolean d()
  {
    return false;
  }
  
  void e() {}
  
  final void f()
  {
    if (d())
    {
      if (a == null) {
        a = new ViewTreeObserver.OnPreDrawListener()
        {
          public final boolean onPreDraw()
          {
            e();
            return true;
          }
        };
      }
      h.getViewTreeObserver().addOnPreDrawListener(a);
    }
  }
  
  final void g()
  {
    if (a != null)
    {
      h.getViewTreeObserver().removeOnPreDrawListener(a);
      a = null;
    }
  }
  
  b h()
  {
    return new b();
  }
  
  static abstract interface a {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */