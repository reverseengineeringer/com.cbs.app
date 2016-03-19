package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.a.d;
import com.google.android.gms.a.f;
import com.google.android.gms.a.f.a;
import com.google.android.gms.ads.internal.util.client.b;

@fs
public final class ej
  extends f<el>
{
  private static final ej a = new ej();
  
  private ej()
  {
    super("com.google.android.gms.ads.AdOverlayCreatorImpl");
  }
  
  public static ek a(Activity paramActivity)
  {
    Intent localIntent;
    try
    {
      localIntent = paramActivity.getIntent();
      if (!localIntent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
        throw new ej.a("Ad overlay requires the useClientJar flag in intent extras.");
      }
    }
    catch (ej.a paramActivity)
    {
      paramActivity.getMessage();
      b.a(5);
      return null;
    }
    if (localIntent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false))
    {
      b.a(3);
      return new com.google.android.gms.ads.internal.overlay.c(paramActivity);
    }
    paramActivity = a.b(paramActivity);
    return paramActivity;
  }
  
  private ek b(Activity paramActivity)
  {
    try
    {
      com.google.android.gms.a.c localc = d.a(paramActivity);
      paramActivity = ek.a.a(((el)a(paramActivity)).a(localc));
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
 * Qualified Name:     com.google.android.gms.internal.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */