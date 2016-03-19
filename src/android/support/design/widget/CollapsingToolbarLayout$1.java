package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class CollapsingToolbarLayout$1
  implements OnApplyWindowInsetsListener
{
  CollapsingToolbarLayout$1(CollapsingToolbarLayout paramCollapsingToolbarLayout) {}
  
  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    CollapsingToolbarLayout.a(a, paramWindowInsetsCompat);
    a.requestLayout();
    return paramWindowInsetsCompat.consumeSystemWindowInsets();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.CollapsingToolbarLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */