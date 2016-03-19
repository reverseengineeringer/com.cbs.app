package com.github.amlcurran.showcaseview.a;

import android.graphics.Point;
import android.view.View;

public final class b
  implements a
{
  private final View b;
  
  public b(View paramView)
  {
    b = paramView;
  }
  
  public final Point a()
  {
    int[] arrayOfInt = new int[2];
    b.getLocationInWindow(arrayOfInt);
    return new Point(arrayOfInt[0] + b.getWidth() / 2, arrayOfInt[1] + b.getHeight() / 2);
  }
}

/* Location:
 * Qualified Name:     com.github.amlcurran.showcaseview.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */