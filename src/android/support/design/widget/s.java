package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.Interpolator;

final class s
  extends q.e
{
  final ValueAnimator a = new ValueAnimator();
  
  public final void a()
  {
    a.start();
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    a.setFloatValues(new float[] { paramFloat1, paramFloat2 });
  }
  
  public final void a(int paramInt)
  {
    a.setDuration(paramInt);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    a.setIntValues(new int[] { paramInt1, paramInt2 });
  }
  
  public final void a(final q.e.a parama)
  {
    a.addListener(new AnimatorListenerAdapter()
    {
      public final void onAnimationCancel(Animator paramAnonymousAnimator)
      {
        parama.b();
      }
      
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        parama.a();
      }
      
      public final void onAnimationStart(Animator paramAnonymousAnimator) {}
    });
  }
  
  public final void a(final q.e.b paramb)
  {
    a.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        paramb.a();
      }
    });
  }
  
  public final void a(Interpolator paramInterpolator)
  {
    a.setInterpolator(paramInterpolator);
  }
  
  public final boolean b()
  {
    return a.isRunning();
  }
  
  public final int c()
  {
    return ((Integer)a.getAnimatedValue()).intValue();
  }
  
  public final float d()
  {
    return ((Float)a.getAnimatedValue()).floatValue();
  }
  
  public final void e()
  {
    a.cancel();
  }
  
  public final float f()
  {
    return a.getAnimatedFraction();
  }
  
  public final long g()
  {
    return a.getDuration();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */