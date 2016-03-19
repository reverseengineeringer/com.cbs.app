package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.View;

final class SwipeDismissBehavior$1
  extends ViewDragHelper.Callback
{
  private int b;
  
  SwipeDismissBehavior$1(SwipeDismissBehavior paramSwipeDismissBehavior) {}
  
  public final int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
  {
    int i;
    if (ViewCompat.getLayoutDirection(paramView) == 1)
    {
      paramInt2 = 1;
      if (SwipeDismissBehavior.c(a) != 0) {
        break label72;
      }
      if (paramInt2 == 0) {
        break label53;
      }
      paramInt2 = b - paramView.getWidth();
      i = b;
    }
    for (;;)
    {
      return SwipeDismissBehavior.a(paramInt2, paramInt1, i);
      paramInt2 = 0;
      break;
      label53:
      paramInt2 = b;
      i = b + paramView.getWidth();
      continue;
      label72:
      if (SwipeDismissBehavior.c(a) == 1)
      {
        if (paramInt2 != 0)
        {
          paramInt2 = b;
          i = b + paramView.getWidth();
        }
        else
        {
          paramInt2 = b - paramView.getWidth();
          i = b;
        }
      }
      else
      {
        paramInt2 = b - paramView.getWidth();
        i = b + paramView.getWidth();
      }
    }
  }
  
  public final int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }
  
  public final int getViewHorizontalDragRange(View paramView)
  {
    return paramView.getWidth();
  }
  
  public final void onViewCaptured(View paramView, int paramInt)
  {
    b = paramView.getLeft();
  }
  
  public final void onViewDragStateChanged(int paramInt)
  {
    if (SwipeDismissBehavior.a(a) != null) {
      SwipeDismissBehavior.a(a).a(paramInt);
    }
  }
  
  public final void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = b + paramView.getWidth() * SwipeDismissBehavior.e(a);
    float f2 = b + paramView.getWidth() * SwipeDismissBehavior.f(a);
    if (paramInt1 <= f1)
    {
      ViewCompat.setAlpha(paramView, 1.0F);
      return;
    }
    if (paramInt1 >= f2)
    {
      ViewCompat.setAlpha(paramView, 0.0F);
      return;
    }
    ViewCompat.setAlpha(paramView, SwipeDismissBehavior.a(1.0F - SwipeDismissBehavior.a(f1, f2, paramInt1)));
  }
  
  public final void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool = true;
    int j = paramView.getWidth();
    int i;
    if (paramFloat1 != 0.0F) {
      if (ViewCompat.getLayoutDirection(paramView) == 1)
      {
        i = 1;
        if (SwipeDismissBehavior.c(a) != 2) {
          break label109;
        }
        i = 1;
        label40:
        if (i == 0) {
          break label285;
        }
        if (paramView.getLeft() >= b) {
          break label273;
        }
        i = b - j;
        label65:
        if (!SwipeDismissBehavior.b(a).settleCapturedViewAt(i, paramView.getTop())) {
          break label297;
        }
        ViewCompat.postOnAnimation(paramView, new SwipeDismissBehavior.b(a, paramView, bool));
      }
    }
    label109:
    label273:
    label285:
    label297:
    while ((!bool) || (SwipeDismissBehavior.a(a) == null))
    {
      return;
      i = 0;
      break;
      if (SwipeDismissBehavior.c(a) == 0)
      {
        if (i != 0)
        {
          if (paramFloat1 < 0.0F)
          {
            i = 1;
            break label40;
          }
          i = 0;
          break label40;
        }
        if (paramFloat1 > 0.0F)
        {
          i = 1;
          break label40;
        }
        i = 0;
        break label40;
      }
      if (SwipeDismissBehavior.c(a) == 1)
      {
        if (i != 0)
        {
          if (paramFloat1 > 0.0F)
          {
            i = 1;
            break label40;
          }
          i = 0;
          break label40;
        }
        if (paramFloat1 < 0.0F)
        {
          i = 1;
          break label40;
        }
        i = 0;
        break label40;
        i = paramView.getLeft();
        int k = b;
        int m = Math.round(paramView.getWidth() * SwipeDismissBehavior.d(a));
        if (Math.abs(i - k) >= m)
        {
          i = 1;
          break label40;
        }
        i = 0;
        break label40;
      }
      i = 0;
      break label40;
      i = b + j;
      break label65;
      i = b;
      bool = false;
      break label65;
    }
    SwipeDismissBehavior.a(a).a();
  }
  
  public final boolean tryCaptureView(View paramView, int paramInt)
  {
    return a.b(paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.SwipeDismissBehavior.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */