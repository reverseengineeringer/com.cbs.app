package com.google.android.gms.ads.purchase;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.et;
import com.google.android.gms.internal.ey;

public class InAppPurchaseActivity
  extends Activity
{
  private et a;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    try
    {
      if (a != null) {
        a.a(paramInt1, paramInt2, paramIntent);
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ey.a(this);
    if (a == null)
    {
      b.a(5);
      finish();
      return;
    }
    try
    {
      a.a();
      return;
    }
    catch (RemoteException paramBundle)
    {
      b.a(5);
      finish();
    }
  }
  
  protected void onDestroy()
  {
    try
    {
      if (a != null) {
        a.b();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        b.a(5);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.purchase.InAppPurchaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */