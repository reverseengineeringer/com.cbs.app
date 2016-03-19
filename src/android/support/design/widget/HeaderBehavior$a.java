package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;

final class HeaderBehavior$a
  implements Runnable
{
  private final CoordinatorLayout b;
  private final V c;
  
  HeaderBehavior$a(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    b = paramV;
    View localView;
    c = localView;
  }
  
  public final void run()
  {
    if ((c != null) && (HeaderBehavior.a(a) != null) && (HeaderBehavior.a(a).computeScrollOffset()))
    {
      a.c(b, c, HeaderBehavior.a(a).getCurrY());
      ViewCompat.postOnAnimation(c, this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.HeaderBehavior.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */