package android.support.design.widget;

import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.view.View;

final class f
  implements e
{
  public final void a(View paramView, OnApplyWindowInsetsListener paramOnApplyWindowInsetsListener)
  {
    if (ViewCompat.getFitsSystemWindows(paramView))
    {
      ViewCompat.setOnApplyWindowInsetsListener(paramView, paramOnApplyWindowInsetsListener);
      paramView.setSystemUiVisibility(1280);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */