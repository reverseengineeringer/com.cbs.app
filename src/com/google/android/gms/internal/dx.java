package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.a.e;
import com.google.ads.a.f;
import com.google.ads.a.g;
import com.google.ads.a.h;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

@fs
public final class dx<NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends g>
  extends dm.a
{
  private final com.google.ads.a.d<NETWORK_EXTRAS, SERVER_PARAMETERS> a;
  private final NETWORK_EXTRAS b;
  
  public dx(com.google.ads.a.d<NETWORK_EXTRAS, SERVER_PARAMETERS> paramd, NETWORK_EXTRAS paramNETWORK_EXTRAS)
  {
    a = paramd;
    b = paramNETWORK_EXTRAS;
  }
  
  private SERVER_PARAMETERS a(String paramString)
  {
    if (paramString != null) {
      try
      {
        localObject2 = new JSONObject(paramString);
        localObject1 = new HashMap(((JSONObject)localObject2).length());
        Iterator localIterator = ((JSONObject)localObject2).keys();
        for (;;)
        {
          paramString = (String)localObject1;
          if (!localIterator.hasNext()) {
            break;
          }
          paramString = (String)localIterator.next();
          ((Map)localObject1).put(paramString, ((JSONObject)localObject2).getString(paramString));
        }
        paramString = new HashMap(0);
      }
      catch (Throwable paramString)
      {
        b.a(5);
        throw new RemoteException();
      }
    }
    Object localObject2 = a.b();
    Object localObject1 = null;
    if (localObject2 != null)
    {
      localObject1 = (g)((Class)localObject2).newInstance();
      ((g)localObject1).a(paramString);
    }
    return (SERVER_PARAMETERS)localObject1;
  }
  
  public final c a()
  {
    if (!(a instanceof e))
    {
      new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName());
      b.a(5);
      throw new RemoteException();
    }
    try
    {
      c localc = com.google.android.gms.a.d.a(((e)a).c());
      return localc;
    }
    catch (Throwable localThrowable)
    {
      b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void a(c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, a parama, String paramString2) {}
  
  public final void a(c paramc, AdRequestParcel paramAdRequestParcel, String paramString, dn paramdn)
  {
    a(paramc, paramAdRequestParcel, paramString, null, paramdn);
  }
  
  public final void a(c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn)
  {
    if (!(a instanceof f))
    {
      new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName());
      b.a(5);
      throw new RemoteException();
    }
    b.a(3);
    try
    {
      new dy(paramdn);
      com.google.android.gms.a.d.a(paramc);
      int i = g;
      a(paramString1);
      ea.a(paramAdRequestParcel);
      return;
    }
    catch (Throwable paramc)
    {
      b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void a(c paramc, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList) {}
  
  public final void a(c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString, dn paramdn)
  {
    a(paramc, paramAdSizeParcel, paramAdRequestParcel, paramString, null, paramdn);
  }
  
  public final void a(c paramc, AdSizeParcel paramAdSizeParcel, AdRequestParcel paramAdRequestParcel, String paramString1, String paramString2, dn paramdn)
  {
    if (!(a instanceof e))
    {
      new StringBuilder("MediationAdapter is not a MediationBannerAdapter: ").append(a.getClass().getCanonicalName());
      b.a(5);
      throw new RemoteException();
    }
    b.a(3);
    try
    {
      new dy(paramdn);
      com.google.android.gms.a.d.a(paramc);
      int i = g;
      a(paramString1);
      ea.a(paramAdSizeParcel);
      ea.a(paramAdRequestParcel);
      return;
    }
    catch (Throwable paramc)
    {
      b.a(5);
      throw new RemoteException();
    }
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel, String paramString) {}
  
  public final void b()
  {
    if (!(a instanceof f))
    {
      new StringBuilder("MediationAdapter is not a MediationInterstitialAdapter: ").append(a.getClass().getCanonicalName());
      b.a(5);
      throw new RemoteException();
    }
    b.a(3);
  }
  
  public final void c() {}
  
  public final void d()
  {
    throw new RemoteException();
  }
  
  public final void e()
  {
    throw new RemoteException();
  }
  
  public final void f() {}
  
  public final boolean g()
  {
    return true;
  }
  
  public final dp h()
  {
    return null;
  }
  
  public final dq i()
  {
    return null;
  }
  
  public final Bundle j()
  {
    return new Bundle();
  }
  
  public final Bundle k()
  {
    return new Bundle();
  }
  
  public final Bundle l()
  {
    return new Bundle();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */