package android.support.design.widget;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class Snackbar$8
  implements Animation.AnimationListener
{
  Snackbar$8(Snackbar paramSnackbar) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (Snackbar.e(a) != null) {
      Snackbar.e(a);
    }
    n.a().b(Snackbar.b(a));
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */