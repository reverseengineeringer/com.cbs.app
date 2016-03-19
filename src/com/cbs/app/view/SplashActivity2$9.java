package com.cbs.app.view;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.cbs.app.manager.StatusManager;

final class SplashActivity2$9
  implements DialogInterface.OnClickListener
{
  SplashActivity2$9(SplashActivity2 paramSplashActivity2) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (SplashActivity2.j(a))
    {
      if (a.c)
      {
        if (a.a)
        {
          a.getHomeData();
          return;
        }
        a.getTonightData();
        return;
      }
      a.getUserStatus();
      return;
    }
    StatusManager.a(a, a.g);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */