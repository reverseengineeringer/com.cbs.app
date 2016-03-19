package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.ads.a.a.a;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.List;

@fs
public final class dg
  implements dh.a
{
  private final String a;
  private final dl b;
  private final long c;
  private final dc d;
  private final AdRequestParcel e;
  private final AdSizeParcel f;
  private final Context g;
  private final Object h = new Object();
  private final VersionInfoParcel i;
  private final boolean j;
  private final NativeAdOptionsParcel k;
  private final List<String> l;
  private dm m;
  private int n = -2;
  private do o;
  
  public dg(Context paramContext, String paramString, dl paramdl, dd paramdd, dc paramdc, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, VersionInfoParcel paramVersionInfoParcel, boolean paramBoolean, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    g = paramContext;
    b = paramdl;
    d = paramdc;
    if ("com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString))
    {
      a = b();
      if (b == -1L) {
        break label124;
      }
    }
    label124:
    for (long l1 = b;; l1 = 10000L)
    {
      c = l1;
      e = paramAdRequestParcel;
      f = paramAdSizeParcel;
      i = paramVersionInfoParcel;
      j = paramBoolean;
      k = paramNativeAdOptionsParcel;
      l = paramList;
      return;
      a = paramString;
      break;
    }
  }
  
  private String b()
  {
    try
    {
      if (!TextUtils.isEmpty(d.e))
      {
        if (b.b(d.e)) {
          return "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter";
        }
        return "com.google.ads.mediation.customevent.CustomEventAdapter";
      }
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    return "com.google.ads.mediation.customevent.CustomEventAdapter";
  }
  
  private dm c()
  {
    new StringBuilder("Instantiating mediation adapter: ").append(a);
    com.google.android.gms.ads.internal.util.client.b.a(4);
    Object localObject = ax.ak;
    if (((Boolean)o.n().a((at)localObject)).booleanValue())
    {
      if ("com.google.ads.mediation.admob.AdMobAdapter".equals(a)) {
        return new ds(new a());
      }
      if ("com.google.ads.mediation.AdUrlAdapter".equals(a)) {
        return new ds(new com.google.ads.a.b());
      }
    }
    try
    {
      localObject = b.a(a);
      return (dm)localObject;
    }
    catch (RemoteException localRemoteException)
    {
      new StringBuilder("Could not instantiate mediation adapter: ").append(a);
      com.google.android.gms.ads.internal.util.client.b.a(3);
    }
    return null;
  }
  
  public final dh a(long paramLong1, long paramLong2)
  {
    for (;;)
    {
      long l4;
      long l3;
      synchronized (h)
      {
        long l1 = SystemClock.elapsedRealtime();
        df localdf1 = new df();
        gw.a.post(new dg.1(this, localdf1));
        long l2 = c;
        if (n != -2) {
          break;
        }
        l4 = SystemClock.elapsedRealtime();
        l3 = l2 - (l4 - l1);
        l4 = paramLong2 - (l4 - paramLong1);
        if ((l3 <= 0L) || (l4 <= 0L))
        {
          com.google.android.gms.ads.internal.util.client.b.a(4);
          n = 3;
        }
      }
      try
      {
        h.wait(Math.min(l3, l4));
      }
      catch (InterruptedException localInterruptedException)
      {
        n = -1;
      }
    }
    dh localdh = new dh(d, m, a, localdf2, n, o);
    return localdh;
  }
  
  public final void a()
  {
    synchronized (h)
    {
      try
      {
        if (m != null) {
          m.c();
        }
        n = -1;
        h.notify();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          com.google.android.gms.ads.internal.util.client.b.a(5);
        }
      }
    }
  }
  
  public final void a(int paramInt)
  {
    synchronized (h)
    {
      n = paramInt;
      h.notify();
      return;
    }
  }
  
  public final void a(do paramdo)
  {
    synchronized (h)
    {
      n = 0;
      o = paramdo;
      h.notify();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */