package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.a.c;
import com.google.android.gms.a.f.a;
import com.google.android.gms.ads.internal.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.fs;

@fs
public final class h
  extends com.google.android.gms.a.f<v>
{
  public h()
  {
    super("com.google.android.gms.ads.AdManagerCreatorImpl");
  }
  
  private u a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dk paramdk, int paramInt)
  {
    try
    {
      c localc = com.google.android.gms.a.d.a(paramContext);
      paramContext = u.a.a(((v)a(paramContext)).a(localc, paramAdSizeParcel, paramString, paramdk, 8115000, paramInt));
      return paramContext;
    }
    catch (RemoteException paramContext)
    {
      b.a(3);
      return null;
    }
    catch (f.a paramContext)
    {
      for (;;) {}
    }
  }
  
  public final u a(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dk paramdk)
  {
    n.a();
    Object localObject;
    if (a.b(paramContext))
    {
      u localu = a(paramContext, paramAdSizeParcel, paramString, paramdk, 1);
      localObject = localu;
      if (localu != null) {}
    }
    else
    {
      b.a(3);
      localObject = new com.google.android.gms.ads.internal.f(paramContext, paramAdSizeParcel, paramString, paramdk, new VersionInfoParcel(), com.google.android.gms.ads.internal.d.a());
    }
    return (u)localObject;
  }
  
  public final u b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dk paramdk)
  {
    n.a();
    Object localObject;
    if (a.b(paramContext))
    {
      u localu = a(paramContext, paramAdSizeParcel, paramString, paramdk, 2);
      localObject = localu;
      if (localu != null) {}
    }
    else
    {
      b.a(5);
      localObject = new k(paramContext, paramAdSizeParcel, paramString, paramdk, new VersionInfoParcel(), com.google.android.gms.ads.internal.d.a());
    }
    return (u)localObject;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */