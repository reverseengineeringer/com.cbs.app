package android.support.design.widget;

import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;

public class FloatingActionButton$Behavior
  extends CoordinatorLayout.Behavior<FloatingActionButton>
{
  private static final boolean a;
  private q b;
  private float c;
  private Rect d;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
  {
    if (getLayoutParamsf != paramAppBarLayout.getId()) {
      return false;
    }
    if (d == null) {
      d = new Rect();
    }
    Rect localRect = d;
    t.a(paramCoordinatorLayout, paramAppBarLayout, localRect);
    if (bottom <= paramAppBarLayout.b()) {
      paramFloatingActionButton.b();
    }
    for (;;)
    {
      return true;
      paramFloatingActionButton.a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton.Behavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */