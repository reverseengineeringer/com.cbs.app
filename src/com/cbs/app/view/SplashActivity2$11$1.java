package com.cbs.app.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;

final class SplashActivity2$11$1
  implements Runnable
{
  SplashActivity2$11$1(SplashActivity2.11 param11, Activity paramActivity) {}
  
  public final void run()
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0, 0.0F, 0, 0.0F, 1, 1.0F, 1, 0.0F);
    localTranslateAnimation.setDuration(450L);
    localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            if (SplashActivity2.a(b.d)) {
              a.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  int i = b.a;
                  SplashActivity2.a(b.d, i + 1);
                }
              });
            }
          }
        }, 200L);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    b.b.setVisibility(0);
    if (b.c != null) {
      b.c.startAnimation(localTranslateAnimation);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.11.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */