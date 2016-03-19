package com.cbs.app.view;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;

final class SplashActivity2$11
  implements Runnable
{
  SplashActivity2$11(SplashActivity2 paramSplashActivity2, int paramInt, View paramView1, View paramView2) {}
  
  public final void run()
  {
    final SplashActivity2 localSplashActivity2 = d;
    if (SplashActivity2.a(d)) {
      localSplashActivity2.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          TranslateAnimation localTranslateAnimation = new TranslateAnimation(0, 0.0F, 0, 0.0F, 1, 1.0F, 1, 0.0F);
          localTranslateAnimation.setDuration(450L);
          localTranslateAnimation.setAnimationListener(new Animation.AnimationListener()
          {
            public final void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              new Handler().postDelayed(new Runnable()
              {
                public final void run()
                {
                  if (SplashActivity2.a(d)) {
                    a.runOnUiThread(new Runnable()
                    {
                      public final void run()
                      {
                        int i = a;
                        SplashActivity2.a(d, i + 1);
                      }
                    });
                  }
                }
              }, 200L);
            }
            
            public final void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public final void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
          b.setVisibility(0);
          if (c != null) {
            c.startAnimation(localTranslateAnimation);
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */