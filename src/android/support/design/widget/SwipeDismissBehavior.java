package android.support.design.widget;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.MotionEvent;
import android.view.View;

public class SwipeDismissBehavior<V extends View>
  extends CoordinatorLayout.Behavior<V>
{
  private ViewDragHelper a;
  private a b;
  private boolean c;
  private float d = 0.0F;
  private boolean e;
  private int f = 2;
  private float g = 0.5F;
  private float h = 0.0F;
  private float i = 0.5F;
  private final ViewDragHelper.Callback j = new ViewDragHelper.Callback()
  {
    private int b;
    
    public final int clampViewPositionHorizontal(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      int i;
      if (ViewCompat.getLayoutDirection(paramAnonymousView) == 1)
      {
        paramAnonymousInt2 = 1;
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 0) {
          break label72;
        }
        if (paramAnonymousInt2 == 0) {
          break label53;
        }
        paramAnonymousInt2 = b - paramAnonymousView.getWidth();
        i = b;
      }
      for (;;)
      {
        return SwipeDismissBehavior.a(paramAnonymousInt2, paramAnonymousInt1, i);
        paramAnonymousInt2 = 0;
        break;
        label53:
        paramAnonymousInt2 = b;
        i = b + paramAnonymousView.getWidth();
        continue;
        label72:
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) == 1)
        {
          if (paramAnonymousInt2 != 0)
          {
            paramAnonymousInt2 = b;
            i = b + paramAnonymousView.getWidth();
          }
          else
          {
            paramAnonymousInt2 = b - paramAnonymousView.getWidth();
            i = b;
          }
        }
        else
        {
          paramAnonymousInt2 = b - paramAnonymousView.getWidth();
          i = b + paramAnonymousView.getWidth();
        }
      }
    }
    
    public final int clampViewPositionVertical(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2)
    {
      return paramAnonymousView.getTop();
    }
    
    public final int getViewHorizontalDragRange(View paramAnonymousView)
    {
      return paramAnonymousView.getWidth();
    }
    
    public final void onViewCaptured(View paramAnonymousView, int paramAnonymousInt)
    {
      b = paramAnonymousView.getLeft();
    }
    
    public final void onViewDragStateChanged(int paramAnonymousInt)
    {
      if (SwipeDismissBehavior.a(SwipeDismissBehavior.this) != null) {
        SwipeDismissBehavior.a(SwipeDismissBehavior.this).a(paramAnonymousInt);
      }
    }
    
    public final void onViewPositionChanged(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
    {
      float f1 = b + paramAnonymousView.getWidth() * SwipeDismissBehavior.e(SwipeDismissBehavior.this);
      float f2 = b + paramAnonymousView.getWidth() * SwipeDismissBehavior.f(SwipeDismissBehavior.this);
      if (paramAnonymousInt1 <= f1)
      {
        ViewCompat.setAlpha(paramAnonymousView, 1.0F);
        return;
      }
      if (paramAnonymousInt1 >= f2)
      {
        ViewCompat.setAlpha(paramAnonymousView, 0.0F);
        return;
      }
      ViewCompat.setAlpha(paramAnonymousView, SwipeDismissBehavior.a(1.0F - SwipeDismissBehavior.a(f1, f2, paramAnonymousInt1)));
    }
    
    public final void onViewReleased(View paramAnonymousView, float paramAnonymousFloat1, float paramAnonymousFloat2)
    {
      boolean bool = true;
      int j = paramAnonymousView.getWidth();
      int i;
      if (paramAnonymousFloat1 != 0.0F) {
        if (ViewCompat.getLayoutDirection(paramAnonymousView) == 1)
        {
          i = 1;
          if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) != 2) {
            break label109;
          }
          i = 1;
          label40:
          if (i == 0) {
            break label285;
          }
          if (paramAnonymousView.getLeft() >= b) {
            break label273;
          }
          i = b - j;
          label65:
          if (!SwipeDismissBehavior.b(SwipeDismissBehavior.this).settleCapturedViewAt(i, paramAnonymousView.getTop())) {
            break label297;
          }
          ViewCompat.postOnAnimation(paramAnonymousView, new SwipeDismissBehavior.b(SwipeDismissBehavior.this, paramAnonymousView, bool));
        }
      }
      label109:
      label273:
      label285:
      label297:
      while ((!bool) || (SwipeDismissBehavior.a(SwipeDismissBehavior.this) == null))
      {
        return;
        i = 0;
        break;
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) == 0)
        {
          if (i != 0)
          {
            if (paramAnonymousFloat1 < 0.0F)
            {
              i = 1;
              break label40;
            }
            i = 0;
            break label40;
          }
          if (paramAnonymousFloat1 > 0.0F)
          {
            i = 1;
            break label40;
          }
          i = 0;
          break label40;
        }
        if (SwipeDismissBehavior.c(SwipeDismissBehavior.this) == 1)
        {
          if (i != 0)
          {
            if (paramAnonymousFloat1 > 0.0F)
            {
              i = 1;
              break label40;
            }
            i = 0;
            break label40;
          }
          if (paramAnonymousFloat1 < 0.0F)
          {
            i = 1;
            break label40;
          }
          i = 0;
          break label40;
          i = paramAnonymousView.getLeft();
          int k = b;
          int m = Math.round(paramAnonymousView.getWidth() * SwipeDismissBehavior.d(SwipeDismissBehavior.this));
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
      SwipeDismissBehavior.a(SwipeDismissBehavior.this).a();
    }
    
    public final boolean tryCaptureView(View paramAnonymousView, int paramAnonymousInt)
    {
      return b(paramAnonymousView);
    }
  };
  
  static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (paramFloat3 - paramFloat1) / (paramFloat2 - paramFloat1);
  }
  
  private static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return Math.min(Math.max(0.0F, paramFloat2), 1.0F);
  }
  
  public final void a()
  {
    f = 0;
  }
  
  public final void a(a parama)
  {
    b = parama;
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    switch (MotionEventCompat.getActionMasked(paramMotionEvent))
    {
    case 2: 
    default: 
      if (paramCoordinatorLayout.a(paramV, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        break;
      }
    }
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      do
      {
        if (!c) {
          break;
        }
        return false;
      } while (!c);
      c = false;
      return false;
    }
    if (a == null) {
      if (!e) {
        break label129;
      }
    }
    label129:
    for (paramCoordinatorLayout = ViewDragHelper.create(paramCoordinatorLayout, d, j);; paramCoordinatorLayout = ViewDragHelper.create(paramCoordinatorLayout, j))
    {
      a = paramCoordinatorLayout;
      return a.shouldInterceptTouchEvent(paramMotionEvent);
    }
  }
  
  public final void b()
  {
    h = b(0.0F, 0.1F, 1.0F);
  }
  
  public final boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    if (a != null)
    {
      a.processTouchEvent(paramMotionEvent);
      return true;
    }
    return false;
  }
  
  public boolean b(View paramView)
  {
    return true;
  }
  
  public final void c()
  {
    i = b(0.0F, 0.6F, 1.0F);
  }
  
  public final int d()
  {
    if (a != null) {
      return a.getViewDragState();
    }
    return 0;
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt);
  }
  
  private final class b
    implements Runnable
  {
    private final View b;
    private final boolean c;
    
    b(View paramView, boolean paramBoolean)
    {
      b = paramView;
      c = paramBoolean;
    }
    
    public final void run()
    {
      if ((SwipeDismissBehavior.b(SwipeDismissBehavior.this) != null) && (SwipeDismissBehavior.b(SwipeDismissBehavior.this).continueSettling(true))) {
        ViewCompat.postOnAnimation(b, this);
      }
      while ((!c) || (SwipeDismissBehavior.a(SwipeDismissBehavior.this) == null)) {
        return;
      }
      SwipeDismissBehavior.a(SwipeDismissBehavior.this).a();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.SwipeDismissBehavior
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */