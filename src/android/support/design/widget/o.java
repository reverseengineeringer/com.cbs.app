package android.support.design.widget;

import android.util.StateSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class o
{
  private final ArrayList<a> a = new ArrayList();
  private a b = null;
  private Animation c = null;
  private WeakReference<View> d;
  private Animation.AnimationListener e = new Animation.AnimationListener()
  {
    public final void onAnimationEnd(Animation paramAnonymousAnimation)
    {
      if (o.a(o.this) == paramAnonymousAnimation) {
        o.b(o.this);
      }
    }
    
    public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
    
    public final void onAnimationStart(Animation paramAnonymousAnimation) {}
  };
  
  private View b()
  {
    if (d == null) {
      return null;
    }
    return (View)d.get();
  }
  
  public final void a()
  {
    if (c != null)
    {
      View localView = b();
      if ((localView != null) && (localView.getAnimation() == c)) {
        localView.clearAnimation();
      }
    }
  }
  
  final void a(View paramView)
  {
    View localView = b();
    if (localView == paramView) {}
    do
    {
      return;
      if (localView != null)
      {
        localView = b();
        int j = a.size();
        int i = 0;
        while (i < j)
        {
          Animation localAnimation = a.get(i)).b;
          if (localView.getAnimation() == localAnimation) {
            localView.clearAnimation();
          }
          i += 1;
        }
        d = null;
        b = null;
        c = null;
      }
    } while (paramView == null);
    d = new WeakReference(paramView);
  }
  
  final void a(int[] paramArrayOfInt)
  {
    int j = a.size();
    int i = 0;
    Object localObject;
    if (i < j)
    {
      localObject = (a)a.get(i);
      if (!StateSet.stateSetMatches(a, paramArrayOfInt)) {}
    }
    for (paramArrayOfInt = (int[])localObject;; paramArrayOfInt = null)
    {
      if (paramArrayOfInt == b) {}
      do
      {
        do
        {
          return;
          i += 1;
          break;
          if ((b != null) && (c != null))
          {
            localObject = b();
            if ((localObject != null) && (((View)localObject).getAnimation() == c)) {
              ((View)localObject).clearAnimation();
            }
            c = null;
          }
          b = paramArrayOfInt;
          localObject = (View)d.get();
        } while ((paramArrayOfInt == null) || (localObject == null) || (((View)localObject).getVisibility() != 0));
        c = b;
        paramArrayOfInt = b();
      } while (paramArrayOfInt == null);
      paramArrayOfInt.startAnimation(c);
      return;
    }
  }
  
  public final void a(int[] paramArrayOfInt, Animation paramAnimation)
  {
    paramArrayOfInt = new a(paramArrayOfInt, paramAnimation, (byte)0);
    paramAnimation.setAnimationListener(e);
    a.add(paramArrayOfInt);
  }
  
  static final class a
  {
    final int[] a;
    final Animation b;
    
    private a(int[] paramArrayOfInt, Animation paramAnimation)
    {
      a = paramArrayOfInt;
      b = paramAnimation;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */