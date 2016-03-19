package com.cbs.app.view;

import android.app.Activity;
import android.view.View;

final class SplashActivity2$10$1
  implements Runnable
{
  SplashActivity2$10$1(SplashActivity2.10 param10, Activity paramActivity) {}
  
  public final void run()
  {
    if (SplashActivity2.a(b.a))
    {
      View localView = a.findViewById(2131689643);
      if (localView != null) {
        localView.setVisibility(8);
      }
      localView = a.findViewById(2131689644);
      if (localView != null) {
        localView.setVisibility(0);
      }
      SplashActivity2.a(b.a, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.10.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */