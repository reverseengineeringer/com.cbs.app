package com.cbs.app.view;

import android.app.Activity;
import android.view.View;

final class SplashActivity2$10
  implements Runnable
{
  SplashActivity2$10(SplashActivity2 paramSplashActivity2) {}
  
  public final void run()
  {
    int i = 0;
    for (;;)
    {
      if ((!SplashActivity2.k(a)) && (i < 10)) {}
      try
      {
        Thread.sleep(400L);
        i += 1;
        continue;
        final SplashActivity2 localSplashActivity2 = a;
        if (SplashActivity2.a(a)) {
          localSplashActivity2.runOnUiThread(new Runnable()
          {
            public final void run()
            {
              if (SplashActivity2.a(a))
              {
                View localView = localSplashActivity2.findViewById(2131689643);
                if (localView != null) {
                  localView.setVisibility(8);
                }
                localView = localSplashActivity2.findViewById(2131689644);
                if (localView != null) {
                  localView.setVisibility(0);
                }
                SplashActivity2.a(a, 0);
              }
            }
          });
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */