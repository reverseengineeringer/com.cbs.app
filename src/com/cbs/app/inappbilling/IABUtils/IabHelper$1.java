package com.cbs.app.inappbilling.IABUtils;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import com.android.vending.billing.IInAppBillingService.Stub;

final class IabHelper$1
  implements ServiceConnection
{
  IabHelper$1(IabHelper paramIabHelper, IabHelper.OnIabSetupFinishedListener paramOnIabSetupFinishedListener) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (b.d) {}
    do
    {
      return;
      b.i = IInAppBillingService.Stub.a(paramIBinder);
      paramComponentName = b.h.getPackageName();
      try
      {
        int i = b.i.a(3, paramComponentName, "inapp");
        if (i != 0)
        {
          if (a != null) {
            a.a(new IabResult(i, "Error checking for billing v3 support."));
          }
          b.e = false;
          return;
        }
      }
      catch (RemoteException paramComponentName)
      {
        if (a != null) {
          a.a(new IabResult(64535, "RemoteException while setting up in-app billing."));
        }
        paramComponentName.printStackTrace();
        return;
      }
      if (b.i.a(3, paramComponentName, "subs") == 0) {
        b.e = true;
      }
      b.c = true;
    } while (a == null);
    a.a(new IabResult(0, "Setup successful."));
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    b.i = null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.IabHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */