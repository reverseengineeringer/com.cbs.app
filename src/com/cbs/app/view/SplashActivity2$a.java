package com.cbs.app.view;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.LinearLayout;

final class SplashActivity2$a
  implements Animation.AnimationListener
{
  public SplashActivity2$a(SplashActivity2 paramSplashActivity2) {}
  
  public final void onAnimationEnd(Animation paramAnimation)
  {
    if (SplashActivity2.a(a))
    {
      paramAnimation = a.getSplashRootView();
      if (paramAnimation != null)
      {
        paramAnimation = paramAnimation.findViewById(2131689641);
        if ((paramAnimation != null) && ((paramAnimation instanceof LinearLayout))) {
          ((LinearLayout)paramAnimation).setVisibility(0);
        }
      }
      SplashActivity2.o(a);
    }
  }
  
  public final void onAnimationRepeat(Animation paramAnimation) {}
  
  public final void onAnimationStart(Animation paramAnimation) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */