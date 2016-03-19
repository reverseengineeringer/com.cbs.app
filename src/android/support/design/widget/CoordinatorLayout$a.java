package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class CoordinatorLayout$a
  implements OnApplyWindowInsetsListener
{
  CoordinatorLayout$a(CoordinatorLayout paramCoordinatorLayout) {}
  
  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    CoordinatorLayout.a(a, paramWindowInsetsCompat);
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CoordinatorLayout.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */