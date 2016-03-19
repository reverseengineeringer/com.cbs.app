package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class Snackbar$7
  extends ViewPropertyAnimatorListenerAdapter
{
  Snackbar$7(Snackbar paramSnackbar) {}
  
  public final void onAnimationEnd(View paramView)
  {
    if (Snackbar.e(a) != null) {
      Snackbar.e(a);
    }
    n.a().b(Snackbar.b(a));
  }
  
  public final void onAnimationStart(View paramView)
  {
    Snackbar.d(a).b();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */