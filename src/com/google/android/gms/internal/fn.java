package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.a;
import com.google.android.gms.ads.internal.formats.c;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.formats.h.a;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class fn
  implements Callable<gk>
{
  private static final long a = TimeUnit.SECONDS.toMillis(60L);
  private final Context b;
  private final ha c;
  private final com.google.android.gms.ads.internal.m d;
  private final m e;
  private final ab f;
  private final Object g = new Object();
  private final gk.a h;
  private boolean i;
  private int j;
  private List<String> k;
  
  public fn(Context paramContext, com.google.android.gms.ads.internal.m paramm, ab paramab, ha paramha, m paramm1, gk.a parama)
  {
    b = paramContext;
    d = paramm;
    c = paramha;
    f = paramab;
    h = parama;
    e = paramm1;
    i = false;
    j = -2;
    k = null;
  }
  
  private gk a(h.a parama)
  {
    for (;;)
    {
      synchronized (g)
      {
        int n = j;
        int m = n;
        if (parama == null)
        {
          m = n;
          if (j == -2) {
            m = 0;
          }
        }
        if (m != -2)
        {
          parama = null;
          return new gk(h.a.c, null, h.b.d, m, h.b.f, k, h.b.l, h.b.k, h.a.i, false, null, null, null, null, null, 0L, h.d, h.b.g, h.f, h.g, h.b.o, h.h, parama);
        }
      }
    }
  }
  
  private hj<c> a(JSONObject paramJSONObject, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {}
    double d1;
    for (String str = paramJSONObject.getString("url");; str = paramJSONObject.optString("url"))
    {
      d1 = paramJSONObject.optDouble("scale", 1.0D);
      if (!TextUtils.isEmpty(str)) {
        break;
      }
      a(0, paramBoolean1);
      return new hh(null);
    }
    if (paramBoolean2) {
      return new hh(new c(null, Uri.parse(str), d1));
    }
    return c.a(str, new fn.5(this, paramBoolean1, d1, str));
  }
  
  private static Integer a(JSONObject paramJSONObject, String paramString)
  {
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject(paramString);
      int m = Color.rgb(paramJSONObject.getInt("r"), paramJSONObject.getInt("g"), paramJSONObject.getInt("b"));
      return Integer.valueOf(m);
    }
    catch (JSONException paramJSONObject) {}
    return null;
  }
  
  private gk b()
  {
    try
    {
      if (!a()) {
        break label179;
      }
      localObject2 = null;
      if (!a()) {
        break label346;
      }
      localObject3 = null;
      label20:
      if (a()) {
        break label731;
      }
      localObject1 = ((JSONObject)localObject3).getString("template_id");
      if (h.a.z == null) {
        break label721;
      }
      bool1 = h.a.z.b;
    }
    catch (CancellationException localCancellationException)
    {
      Object localObject2;
      Object localObject3;
      Object localObject1;
      if (i) {
        break label589;
      }
      a(0);
      return a(null);
      localObject4 = b(((JSONObject)localObject3).getJSONObject("tracking_urls_and_actions"), "impression_tracking_urls");
      if (localObject4 != null) {
        break label678;
      }
      for (localObject4 = null;; localObject4 = Arrays.asList((Object[])localObject4))
      {
        k = ((List)localObject4);
        locala = localCancellationException.a(this, (JSONObject)localObject3);
        locala.a(new h(b, d, (aa)localObject2, e, (JSONObject)localObject3, locala, h.a.k));
        break;
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        b.a(5);
      }
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;)
      {
        b.a(5);
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;)
      {
        label179:
        label346:
        label589:
        label678:
        continue;
        label714:
        str = "http:";
        continue;
        label721:
        boolean bool1 = false;
        continue;
        boolean bool2 = false;
      }
    }
    if (h.a.z != null)
    {
      bool2 = h.a.z.d;
      if ("2".equals(localObject1)) {
        localObject1 = new fo(bool1, bool2);
      }
    }
    for (;;)
    {
      Object localObject4;
      if (a())
      {
        localObject1 = null;
        if ((localObject1 instanceof f))
        {
          localObject4 = (f)localObject1;
          localObject3 = new fn.b(this);
          localObject4 = new fn.3(this, (f)localObject4);
          a = ((ci)localObject4);
          ((aa)localObject2).a("/nativeAdCustomClick", (ci)localObject4);
        }
        return a((h.a)localObject1);
        localObject1 = ax.Z;
        localObject2 = (String)o.n().a((at)localObject1);
        if (h.b.b.indexOf("https") != 0) {
          break label714;
        }
        localObject1 = "https:";
        localObject1 = (String)localObject1 + (String)localObject2;
        localObject2 = f;
        localObject3 = b;
        localObject4 = h.a.k;
        m localm = e;
        hg localhg = new hg();
        gw.a.post(new ab.1((ab)localObject2, (Context)localObject3, (VersionInfoParcel)localObject4, localhg, localm, (String)localObject1));
        localObject2 = (aa)localhg.get(a, TimeUnit.MILLISECONDS);
        ((aa)localObject2).a(d, d, d, d);
        break;
        localObject1 = new hg();
        localObject3 = new fn.b(this);
        localObject4 = new fn.1(this, (aa)localObject2, (fn.b)localObject3, (hg)localObject1);
        a = ((ci)localObject4);
        ((aa)localObject2).a("/nativeAdPreProcess", (ci)localObject4);
        ((aa)localObject2).a("google.afma.nativeAds.preProcessJsonGmsg", new JSONObject(h.b.c));
        localObject3 = (JSONObject)((hg)localObject1).get(a, TimeUnit.MILLISECONDS);
        break label20;
        if ("1".equals(localObject1))
        {
          localObject1 = new fp(bool1, bool2);
          continue;
        }
        if ("3".equals(localObject1))
        {
          localObject1 = ((JSONObject)localObject3).getString("custom_template_id");
          localObject4 = new hg();
          gw.a.post(new fn.2(this, (hg)localObject4, (String)localObject1));
          if (((hg)localObject4).get(a, TimeUnit.MILLISECONDS) != null)
          {
            localObject1 = new fq(bool1);
            continue;
          }
          b.a("No handler for custom template: " + ((JSONObject)localObject3).getString("custom_template_id"));
          break label731;
        }
        a(0);
        break label731;
      }
      h.a locala;
      label731:
      String str = null;
    }
  }
  
  private static String[] b(JSONObject paramJSONObject, String paramString)
  {
    paramJSONObject = paramJSONObject.optJSONArray(paramString);
    if (paramJSONObject == null) {
      return null;
    }
    paramString = new String[paramJSONObject.length()];
    int m = 0;
    while (m < paramJSONObject.length())
    {
      paramString[m] = paramJSONObject.getString(m);
      m += 1;
    }
    return paramString;
  }
  
  public final hj<a> a(JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject.optJSONObject("attribution");
    if (localJSONObject == null) {
      return new hh(null);
    }
    Object localObject1 = localJSONObject.optString("text");
    int m = localJSONObject.optInt("text_size", -1);
    Object localObject2 = a(localJSONObject, "text_color");
    Integer localInteger = a(localJSONObject, "bg_color");
    int n = localJSONObject.optInt("animation_ms", 1000);
    int i1 = localJSONObject.optInt("presentation_ms", 4000);
    paramJSONObject = new ArrayList();
    if (localJSONObject.optJSONArray("images") != null) {
      paramJSONObject = a(localJSONObject, "images", false, false, true);
    }
    for (;;)
    {
      paramJSONObject = hi.a(paramJSONObject);
      localObject1 = new fn.4(this, (String)localObject1, localInteger, (Integer)localObject2, m, i1, n);
      localObject2 = new hg();
      paramJSONObject.a(new hi.1((hg)localObject2, (hi.a)localObject1, paramJSONObject));
      return (hj<a>)localObject2;
      paramJSONObject.add(a(localJSONObject, "image", false, false));
    }
  }
  
  public final hj<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {}
    for (paramJSONObject = paramJSONObject.getJSONObject(paramString);; paramJSONObject = paramJSONObject.optJSONObject(paramString))
    {
      paramString = paramJSONObject;
      if (paramJSONObject == null) {
        paramString = new JSONObject();
      }
      return a(paramString, paramBoolean1, paramBoolean2);
    }
  }
  
  public final List<hj<c>> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {}
    ArrayList localArrayList;
    for (paramJSONObject = paramJSONObject.getJSONArray(paramString);; paramJSONObject = paramJSONObject.optJSONArray(paramString))
    {
      localArrayList = new ArrayList();
      if ((paramJSONObject != null) && (paramJSONObject.length() != 0)) {
        break;
      }
      a(0, paramBoolean1);
      return localArrayList;
    }
    if (paramBoolean3) {}
    for (int m = paramJSONObject.length();; m = 1)
    {
      int n = 0;
      while (n < m)
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(n);
        paramString = localJSONObject;
        if (localJSONObject == null) {
          paramString = new JSONObject();
        }
        localArrayList.add(a(paramString, paramBoolean1, paramBoolean2));
        n += 1;
      }
    }
    return localArrayList;
  }
  
  public final Future<c> a(JSONObject paramJSONObject, String paramString, boolean paramBoolean)
  {
    paramString = paramJSONObject.getJSONObject(paramString);
    boolean bool = paramString.optBoolean("require", true);
    paramJSONObject = paramString;
    if (paramString == null) {
      paramJSONObject = new JSONObject();
    }
    return a(paramJSONObject, bool, paramBoolean);
  }
  
  public final void a(int paramInt)
  {
    synchronized (g)
    {
      i = true;
      j = paramInt;
      return;
    }
  }
  
  public final void a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      a(paramInt);
    }
  }
  
  public final boolean a()
  {
    synchronized (g)
    {
      boolean bool = i;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */