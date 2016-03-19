package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

final class Snackbar$9
  extends ViewPropertyAnimatorListenerAdapter
{
  Snackbar$9(Snackbar paramSnackbar, int paramInt) {}
  
  public final void onAnimationEnd(View paramView)
  {
    Snackbar.a(b, a);
  }
  
  public final void onAnimationStart(View paramView)
  {
    Snackbar.d(b).c();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */