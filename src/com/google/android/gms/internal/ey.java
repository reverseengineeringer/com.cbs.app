package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.a.d;
import com.google.android.gms.a.f;
import com.google.android.gms.a.f.a;
import com.google.android.gms.ads.internal.purchase.e;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class ey
  extends f<eu>
{
  private static final ey a = new ey();
  
  private ey()
  {
    super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
  }
  
  public static et a(Activity paramActivity)
  {
    Intent localIntent;
    try
    {
      localIntent = paramActivity.getIntent();
      if (!localIntent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar")) {
        throw new ey.a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
      }
    }
    catch (ey.a paramActivity)
    {
      paramActivity.getMessage();
      b.a(5);
      return null;
    }
    if (localIntent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false))
    {
      b.a(3);
      return new e(paramActivity);
    }
    paramActivity = a.b(paramActivity);
    return paramActivity;
  }
  
  private et b(Activity paramActivity)
  {
    try
    {
      c localc = d.a(paramActivity);
      paramActivity = et.a.a(((eu)a(paramActivity)).a(localc));
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      b.a(5);
      return null;
    }
    catch (f.a paramActivity)
    {
      b.a(5);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */