package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;

final class h$1
  extends AnimatorListenerAdapter
{
  h$1(h paramh, i.a parama) {}
  
  public final void onAnimationCancel(Animator paramAnimator)
  {
    h.a(b, false);
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    h.a(b, false);
    b.h.setVisibility(8);
  }
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    h.a(b, true);
    b.h.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.h.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */