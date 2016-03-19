package com.cbs.app.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.cbs.app.view.utils.Util;

final class SplashActivity2$d
  implements Runnable
{
  int a;
  int b;
  Bitmap c;
  
  public SplashActivity2$d(SplashActivity2 paramSplashActivity2, int paramInt1, int paramInt2, Bitmap paramBitmap)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramBitmap;
  }
  
  public final void run()
  {
    Object localObject1 = d;
    Object localObject2;
    Object localObject3;
    int j;
    int i;
    if (SplashActivity2.a(d))
    {
      localObject2 = ((SplashActivity2)localObject1).findViewById(2131689640);
      if ((localObject2 != null) && ((localObject2 instanceof ImageView)))
      {
        localObject2 = (ImageView)localObject2;
        localObject3 = new RelativeLayout.LayoutParams(a, b);
        j = Util.b((Context)localObject1);
        i = Util.c((Context)localObject1);
        if ((!Util.e((Context)localObject1)) || (!Util.k((Context)localObject1))) {
          break label333;
        }
        i = Math.max(Math.min(j, i), i);
      }
    }
    label320:
    label333:
    for (;;)
    {
      j = i / 2 - b;
      if (j <= 0) {
        j = Util.a((Context)localObject1, 120.0D);
      }
      for (;;)
      {
        ((RelativeLayout.LayoutParams)localObject3).setMargins(0, j, 0, 0);
        ((RelativeLayout.LayoutParams)localObject3).addRule(14);
        ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
        ((ImageView)localObject2).setImageBitmap(c);
        localObject3 = ((SplashActivity2)localObject1).getSplashRootView();
        if (localObject3 != null)
        {
          Object localObject4 = ((View)localObject3).findViewById(2131689641);
          if ((localObject4 != null) && ((localObject4 instanceof LinearLayout)))
          {
            localObject4 = (LinearLayout)localObject4;
            RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, i - (j + b));
            localLayoutParams.addRule(3, 2131689640);
            localLayoutParams.setMargins(0, Util.a((Context)localObject1, 50.0D), 0, 0);
            ((LinearLayout)localObject4).setLayoutParams(localLayoutParams);
            ((LinearLayout)localObject4).setVisibility(8);
          }
          localObject3 = ((View)localObject3).findViewById(2131689643);
          if (localObject3 != null)
          {
            if (SplashActivity2.p(d) != null) {
              break label320;
            }
            ((View)localObject3).setVisibility(0);
          }
        }
        for (;;)
        {
          localObject1 = new TranslateAnimation(0.0F, 0.0F, Util.a((Context)localObject1, 120.0D), 0.0F);
          ((TranslateAnimation)localObject1).setDuration(800L);
          ((TranslateAnimation)localObject1).setAnimationListener(new SplashActivity2.a(d));
          ((ImageView)localObject2).startAnimation((Animation)localObject1);
          return;
          ((View)localObject3).setVisibility(8);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */