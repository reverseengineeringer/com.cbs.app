package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.a.d;
import com.google.android.gms.ads.b.e;
import com.google.android.gms.ads.b.g;
import com.google.android.gms.ads.b.i;
import com.google.android.gms.ads.b.j;
import com.google.android.gms.ads.b.k;
import com.google.android.gms.ads.f;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

@fs
public final class ds
  extends dm.a
{
  private final com.google.android.gms.ads.b.b a;
  private dt b;
  
  public ds(com.google.android.gms.ads.b.b paramb)
  {
    a = paramb;
  }
  
  private Bundle a(String paramString1, int paramInt, String paramString2)
  {
    new StringBuilder("Server parameters: ").append(paramString1);
    com.google.android.gms.ads.internal.util.client.b.a(5);
    Bundle localBundle;
    try
    {
      localBundle = new Bundle();
      if (paramString1 != null)
      {
        paramString1 = new JSONObject(paramString1);
        localBundle = new Bundle();
        Iterator localIterator = paramString1.keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localBundle.putString(str, paramString1.getString(str));
        }
      }
      if (!(a instanceof com.google.ads.a.a.a)) {
        break label134;
      }
    }
    catch (Throwable paramString1)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    localBundle.putString("adJson", paramString2);
    localBundle.putInt("tagForChildDirectedTreatment", paramInt);
    label134:
    return localBundle;
  }
  
  public final com.google.android.gms.a.c a()
  {
    if (!(a instanceof com.google.android.gms.ads.b.c))
    {
      new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    try
    {
      com.google.android.gms.a.c localc = d.a(((com.google.android.gms.ads.b.c)a).d());
      return localc;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, com.google.android.gms.ads.internal.reward.mediation.client.a parama, String paramString2)
  {
    if (!(a instanceof com.google.android.gms.ads.c.a.a))
    {
      new StringBuilder("MediationAdapter is not a MediationRewardedVideoAdAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.c.a.a locala = (com.google.android.gms.ads.c.a.a)a;
        if (e != null)
        {
          paramString1 = new HashSet(e);
          if (b == -1L)
          {
            localDate = null;
            new dr(localDate, d, paramString1, k, f, g);
            if (m != null) {
              m.getBundle(locala.getClass().getName());
            }
            d.a(paramc);
            new com.google.android.gms.ads.internal.reward.mediation.client.b(parama);
            a(paramString2, g, null);
            return;
          }
          Date localDate = new Date(b);
          continue;
        }
        paramString1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        throw new RemoteException();
      }
    }
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdRequestParcel paramAdRequestParcel, String paramString, dn paramdn)
  {
    a(paramc, paramAdRequestParcel, paramString, null, paramdn);
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn)
  {
    if (!(a instanceof e))
    {
      new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    for (;;)
    {
      try
      {
        e locale = (e)a;
        if (e == null) {
          break label222;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dr((Date)localObject2, d, (Set)localObject1, k, f, g);
          if (m != null)
          {
            localObject1 = m.getBundle(locale.getClass().getName());
            locale.a((Context)d.a(paramc), new dt(paramdn), a(paramString1, g, paramString2), (com.google.android.gms.ads.b.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        throw new RemoteException();
      }
      continue;
      label222:
      Object localObject1 = null;
    }
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    if (!(a instanceof g))
    {
      new StringBuilder("MediationAdapter is not a MediationNativeAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    for (;;)
    {
      try
      {
        g localg = (g)a;
        if (e == null) {
          break label229;
        }
        localHashSet = new HashSet(e);
        Date localDate;
        if (b == -1L)
        {
          localDate = null;
          paramList = new dw(localDate, d, localHashSet, k, f, g, paramNativeAdOptionsParcel, paramList);
          if (m != null)
          {
            paramNativeAdOptionsParcel = m.getBundle(localg.getClass().getName());
            b = new dt(paramdn);
            localg.a((Context)d.a(paramc), b, a(paramString1, g, paramString2), paramList, paramNativeAdOptionsParcel);
          }
        }
        else
        {
          localDate = new Date(b);
          continue;
        }
        paramNativeAdOptionsParcel = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        throw new RemoteException();
      }
      continue;
      label229:
      HashSet localHashSet = null;
    }
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, dn paramdn)
  {
    a(paramc, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramdn);
  }
  
  public final void a(com.google.android.gms.a.c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn)
  {
    if (!(a instanceof com.google.android.gms.ads.b.c))
    {
      new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.b.c localc = (com.google.android.gms.ads.b.c)a;
        if (e == null) {
          break label238;
        }
        localObject1 = new HashSet(e);
        Object localObject2;
        if (b == -1L)
        {
          localObject2 = null;
          localObject2 = new dr((Date)localObject2, d, (Set)localObject1, k, f, g);
          if (m != null)
          {
            localObject1 = m.getBundle(localc.getClass().getName());
            localc.a((Context)d.a(paramc), new dt(paramdn), a(paramString1, g, paramString2), f.a(f, c, b), (com.google.android.gms.ads.b.a)localObject2, (Bundle)localObject1);
          }
        }
        else
        {
          localObject2 = new Date(b);
          continue;
        }
        localObject1 = null;
      }
      catch (Throwable paramc)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        throw new RemoteException();
      }
      continue;
      label238:
      Object localObject1 = null;
    }
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel, String paramString)
  {
    Date localDate = null;
    if (!(a instanceof com.google.android.gms.ads.c.a.a))
    {
      new StringBuilder("MediationAdapter is not a MediationRewardedVideoAdAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    for (;;)
    {
      try
      {
        com.google.android.gms.ads.c.a.a locala = (com.google.android.gms.ads.c.a.a)a;
        if (e != null)
        {
          localHashSet = new HashSet(e);
          if (b == -1L)
          {
            new dr(localDate, d, localHashSet, k, f, g);
            if (m != null) {
              m.getBundle(locala.getClass().getName());
            }
            a(paramString, g, null);
            return;
          }
          localDate = new Date(b);
          continue;
        }
        HashSet localHashSet = null;
      }
      catch (Throwable paramAdRequestParcel)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        throw new RemoteException();
      }
    }
  }
  
  public final void b()
  {
    if (!(a instanceof e))
    {
      new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    try
    {
      ((e)a).e();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void c()
  {
    try
    {
      a.a();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void d()
  {
    try
    {
      a.b();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void e()
  {
    try
    {
      a.c();
      return;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void f()
  {
    if (!(a instanceof com.google.android.gms.ads.c.a.a))
    {
      new StringBuilder("MediationAdapter is not a MediationRewardedVideoAdAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
  }
  
  public final boolean g()
  {
    if (!(a instanceof com.google.android.gms.ads.c.a.a))
    {
      new StringBuilder("MediationAdapter is not a MediationRewardedVideoAdAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
    com.google.android.gms.ads.internal.util.client.b.a(3);
    try
    {
      boolean bool = ((com.google.android.gms.ads.c.a.a)a).d();
      return bool;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      throw new RemoteException();
    }
  }
  
  public final dp h()
  {
    i locali = b.o();
    if ((locali instanceof j)) {
      return new du((j)locali);
    }
    return null;
  }
  
  public final dq i()
  {
    i locali = b.o();
    if ((locali instanceof k)) {
      return new dv((k)locali);
    }
    return null;
  }
  
  public final Bundle j()
  {
    if (!(a instanceof id))
    {
      new StringBuilder("MediationAdapter is not a v2 MediationBannerAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      return new Bundle();
    }
    return ((id)a).e();
  }
  
  public final Bundle k()
  {
    if (!(a instanceof ie))
    {
      new StringBuilder("MediationAdapter is not a v2 MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName());
      com.google.android.gms.ads.internal.util.client.b.a(5);
      return new Bundle();
    }
    return ((ie)a).d();
  }
  
  public final Bundle l()
  {
    return new Bundle();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */