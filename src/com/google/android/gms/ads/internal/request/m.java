package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ci;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.cn;
import com.google.android.gms.internal.cx;
import com.google.android.gms.internal.cx.d;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.fz;
import com.google.android.gms.internal.ga;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.ju;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class m
  extends gr
{
  static final long a = TimeUnit.SECONDS.toMillis(10L);
  private static final Object b = new Object();
  private static boolean c = false;
  private static cx d = null;
  private static cj e = null;
  private static cn f = null;
  private static ci g = null;
  private final a.a h;
  private final AdRequestInfoParcel.a i;
  private final Object j = new Object();
  private final Context k;
  private cx.d l;
  
  public m(Context paramContext, AdRequestInfoParcel.a parama, a.a arg3)
  {
    super((byte)0);
    h = ???;
    k = paramContext;
    i = parama;
    synchronized (b)
    {
      if (!c)
      {
        f = new cn();
        e = new cj(paramContext.getApplicationContext(), j);
        g = new m.c();
        paramContext = k.getApplicationContext();
        parama = i.j;
        at localat = ax.b;
        d = new cx(paramContext, parama, (String)o.n().a(localat), new m.b(), new m.a());
        c = true;
      }
      return;
    }
  }
  
  private AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    Object localObject = UUID.randomUUID().toString();
    JSONObject localJSONObject = a(paramAdRequestInfoParcel, (String)localObject);
    if (localJSONObject == null) {
      paramAdRequestInfoParcel = new AdResponseParcel(0);
    }
    for (;;)
    {
      return paramAdRequestInfoParcel;
      long l1 = o.i().b();
      Future localFuture = f.a((String)localObject);
      com.google.android.gms.ads.internal.util.client.a.a.post(new m.2(this, localJSONObject, (String)localObject));
      long l2 = a;
      long l3 = o.i().b();
      try
      {
        localObject = (JSONObject)localFuture.get(l2 - (l3 - l1), TimeUnit.MILLISECONDS);
        if (localObject == null) {
          return new AdResponseParcel(-1);
        }
      }
      catch (CancellationException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(-1);
      }
      catch (TimeoutException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(2);
      }
      catch (ExecutionException paramAdRequestInfoParcel)
      {
        return new AdResponseParcel(0);
        localObject = fv.a(k, paramAdRequestInfoParcel, ((JSONObject)localObject).toString());
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (e == -3) {
          continue;
        }
        paramAdRequestInfoParcel = (AdRequestInfoParcel)localObject;
        if (!TextUtils.isEmpty(c)) {
          continue;
        }
        return new AdResponseParcel(3);
      }
      catch (InterruptedException paramAdRequestInfoParcel)
      {
        for (;;) {}
      }
    }
  }
  
  private JSONObject a(AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    Bundle localBundle = c.c.getBundle("sdk_less_server_data");
    String str = c.c.getString("sdk_less_network_id");
    if (localBundle == null) {}
    Object localObject1;
    Object localObject2;
    do
    {
      return null;
      localObject1 = k;
      localObject2 = o.k().a(k);
      at localat = ax.b;
      localObject1 = fv.a((Context)localObject1, paramAdRequestInfoParcel, (fz)localObject2, null, new aq((String)o.n().a(localat)), null, null, new ArrayList());
    } while (localObject1 == null);
    try
    {
      paramAdRequestInfoParcel = com.google.android.gms.ads.a.a.a(k);
      localObject2 = new HashMap();
      ((HashMap)localObject2).put("request_id", paramString);
      ((HashMap)localObject2).put("network_id", str);
      ((HashMap)localObject2).put("request_param", localObject1);
      ((HashMap)localObject2).put("data", localBundle);
      if (paramAdRequestInfoParcel != null)
      {
        ((HashMap)localObject2).put("adid", paramAdRequestInfoParcel.a());
        if (!paramAdRequestInfoParcel.b()) {
          break label222;
        }
        m = 1;
        ((HashMap)localObject2).put("lat", Integer.valueOf(m));
      }
    }
    catch (d paramAdRequestInfoParcel)
    {
      for (;;)
      {
        try
        {
          paramAdRequestInfoParcel = o.e().a((Map)localObject2);
          return paramAdRequestInfoParcel;
        }
        catch (JSONException paramAdRequestInfoParcel)
        {
          int m;
          return null;
        }
        paramAdRequestInfoParcel = paramAdRequestInfoParcel;
        b.a(5);
        paramAdRequestInfoParcel = null;
        continue;
        m = 0;
      }
    }
    catch (IOException paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (c paramAdRequestInfoParcel)
    {
      for (;;) {}
    }
    catch (IllegalStateException paramAdRequestInfoParcel)
    {
      label222:
      for (;;) {}
    }
  }
  
  protected static void a(aa paramaa)
  {
    paramaa.a("/loadAd", f);
    paramaa.a("/fetchHttpRequest", e);
    paramaa.a("/invalidRequest", g);
  }
  
  protected static void b(aa paramaa)
  {
    paramaa.b("/loadAd", f);
    paramaa.b("/fetchHttpRequest", e);
    paramaa.b("/invalidRequest", g);
  }
  
  public final void a()
  {
    b.a(3);
    Object localObject = new AdRequestInfoParcel(i, null, -1L);
    AdResponseParcel localAdResponseParcel = a((AdRequestInfoParcel)localObject);
    long l1 = o.i().b();
    localObject = new gk.a((AdRequestInfoParcel)localObject, localAdResponseParcel, null, null, e, l1, n, null);
    com.google.android.gms.ads.internal.util.client.a.a.post(new m.1(this, (gk.a)localObject));
  }
  
  public final void b()
  {
    synchronized (j)
    {
      com.google.android.gms.ads.internal.util.client.a.a.post(new m.3(this));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */