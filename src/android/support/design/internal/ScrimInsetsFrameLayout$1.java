package android.support.design.internal;

import android.graphics.Rect;
import android.support.v4.view.OnApplyWindowInsetsListener;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.view.View;

final class ScrimInsetsFrameLayout$1
  implements OnApplyWindowInsetsListener
{
  ScrimInsetsFrameLayout$1(ScrimInsetsFrameLayout paramScrimInsetsFrameLayout) {}
  
  public final WindowInsetsCompat onApplyWindowInsets(View paramView, WindowInsetsCompat paramWindowInsetsCompat)
  {
    if (ScrimInsetsFrameLayout.a(a) == null) {
      ScrimInsetsFrameLayout.a(a, new Rect());
    }
    ScrimInsetsFrameLayout.a(a).set(paramWindowInsetsCompat.getSystemWindowInsetLeft(), paramWindowInsetsCompat.getSystemWindowInsetTop(), paramWindowInsetsCompat.getSystemWindowInsetRight(), paramWindowInsetsCompat.getSystemWindowInsetBottom());
    paramView = a;
    if ((ScrimInsetsFrameLayout.a(a).isEmpty()) || (ScrimInsetsFrameLayout.b(a) == null)) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setWillNotDraw(bool);
      ViewCompat.postInvalidateOnAnimation(a);
      return paramWindowInsetsCompat.consumeSystemWindowInsets();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.ScrimInsetsFrameLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */