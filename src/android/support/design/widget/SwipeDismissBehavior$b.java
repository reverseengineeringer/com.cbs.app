package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.view.View;

final class SwipeDismissBehavior$b
  implements Runnable
{
  private final View b;
  private final boolean c;
  
  SwipeDismissBehavior$b(SwipeDismissBehavior paramSwipeDismissBehavior, View paramView, boolean paramBoolean)
  {
    b = paramView;
    c = paramBoolean;
  }
  
  public final void run()
  {
    if ((SwipeDismissBehavior.b(a) != null) && (SwipeDismissBehavior.b(a).continueSettling(true))) {
      ViewCompat.postOnAnimation(b, this);
    }
    while ((!c) || (SwipeDismissBehavior.a(a) == null)) {
      return;
    }
    SwipeDismissBehavior.a(a).a();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.SwipeDismissBehavior.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */