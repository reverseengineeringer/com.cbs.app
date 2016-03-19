package com.cbs.app.view;

import android.app.Activity;
import android.os.Handler;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class SplashActivity2$11$1$1
  implements Animation.AnimationListener
{
  SplashActivity2$11$1$1(SplashActivity2.11.1 param1) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    new Handler().postDelayed(new Runnable()
    {
      public final void run()
      {
        if (SplashActivity2.a(a.b.d)) {
          a.a.runOnUiThread(new Runnable()
          {
            public final void run()
            {
              int i = a.b.a;
              SplashActivity2.a(a.b.d, i + 1);
            }
          });
        }
      }
    }, 200L);
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.11.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */