package android.support.design.widget;

import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.ViewParent;

final class v
{
  private final View a;
  private int b;
  private int c;
  private int d;
  private int e;
  
  public v(View paramView)
  {
    a = paramView;
  }
  
  private static void a(View paramView)
  {
    float f = ViewCompat.getTranslationX(paramView);
    ViewCompat.setTranslationY(paramView, 1.0F + f);
    ViewCompat.setTranslationY(paramView, f);
  }
  
  private void c()
  {
    ViewCompat.offsetTopAndBottom(a, d - (a.getTop() - b));
    ViewCompat.offsetLeftAndRight(a, e - (a.getLeft() - c));
    if (Build.VERSION.SDK_INT < 23)
    {
      a(a);
      ViewParent localViewParent = a.getParent();
      if ((localViewParent instanceof View)) {
        a((View)localViewParent);
      }
    }
  }
  
  public final void a()
  {
    b = a.getTop();
    c = a.getLeft();
    c();
  }
  
  public final boolean a(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      c();
      return true;
    }
    return false;
  }
  
  public final int b()
  {
    return d;
  }
  
  public final boolean b(int paramInt)
  {
    if (e != paramInt)
    {
      e = paramInt;
      c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */