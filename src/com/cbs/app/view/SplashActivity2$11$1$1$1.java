package com.cbs.app.view;

import android.app.Activity;

final class SplashActivity2$11$1$1$1
  implements Runnable
{
  SplashActivity2$11$1$1$1(SplashActivity2.11.1.1 param1) {}
  
  public final void run()
  {
    if (SplashActivity2.a(a.a.b.d)) {
      a.a.a.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          int i = a.a.b.a;
          SplashActivity2.a(a.a.b.d, i + 1);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.11.1.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */