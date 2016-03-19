package android.support.design.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

@TargetApi(21)
final class j
  extends h
{
  private Interpolator j;
  
  j(View paramView, m paramm)
  {
    super(paramView, paramm);
    if (!paramView.isInEditMode()) {
      j = AnimationUtils.loadInterpolator(h.getContext(), 17563661);
    }
  }
  
  private Animator a(Animator paramAnimator)
  {
    paramAnimator.setInterpolator(j);
    return paramAnimator;
  }
  
  final void a() {}
  
  public final void a(float paramFloat)
  {
    ViewCompat.setElevation(h, paramFloat);
  }
  
  final void a(int paramInt)
  {
    if ((b instanceof RippleDrawable))
    {
      ((RippleDrawable)b).setColor(ColorStateList.valueOf(paramInt));
      return;
    }
    super.a(paramInt);
  }
  
  final void a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    a = DrawableCompat.wrap(i());
    DrawableCompat.setTintList(a, paramColorStateList);
    if (paramMode != null) {
      DrawableCompat.setTintMode(a, paramMode);
    }
    if (paramInt2 > 0) {
      c = a(paramInt2, paramColorStateList);
    }
    for (paramColorStateList = new LayerDrawable(new Drawable[] { c, a });; paramColorStateList = a)
    {
      b = new RippleDrawable(ColorStateList.valueOf(paramInt1), paramColorStateList, null);
      i.a(b);
      i.a(0, 0, 0, 0);
      return;
      c = null;
    }
  }
  
  final void a(int[] paramArrayOfInt) {}
  
  final void b(float paramFloat)
  {
    StateListAnimator localStateListAnimator = new StateListAnimator();
    localStateListAnimator.addState(e, a(ObjectAnimator.ofFloat(h, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(f, a(ObjectAnimator.ofFloat(h, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(g, a(ObjectAnimator.ofFloat(h, "translationZ", new float[] { 0.0F })));
    h.setStateListAnimator(localStateListAnimator);
  }
  
  final boolean d()
  {
    return false;
  }
  
  final b h()
  {
    return new c();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */