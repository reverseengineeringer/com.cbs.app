package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@fs
public final class fx
{
  private String a;
  private String b;
  private String c;
  private List<String> d;
  private String e;
  private String f;
  private List<String> g;
  private long h = -1L;
  private boolean i = false;
  private final long j = -1L;
  private List<String> k;
  private long l = -1L;
  private int m = -1;
  private boolean n = false;
  private boolean o = false;
  private boolean p = false;
  private boolean q = true;
  private int r = 0;
  private String s = "";
  private boolean t = false;
  private final AdRequestInfoParcel u;
  
  public fx(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    u = paramAdRequestInfoParcel;
  }
  
  private static String a(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      return (String)paramMap.get(0);
    }
    return null;
  }
  
  private static long b(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      try
      {
        float f1 = Float.parseFloat(paramMap);
        return (f1 * 1000.0F);
      }
      catch (NumberFormatException localNumberFormatException)
      {
        new StringBuilder("Could not parse float from ").append(paramString).append(" header: ").append(paramMap);
        b.a(5);
      }
    }
    return -1L;
  }
  
  private static List<String> c(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    if ((paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = (String)paramMap.get(0);
      if (paramMap != null) {
        return Arrays.asList(paramMap.trim().split("\\s+"));
      }
    }
    return null;
  }
  
  private static boolean d(Map<String, List<String>> paramMap, String paramString)
  {
    paramMap = (List)paramMap.get(paramString);
    return (paramMap != null) && (!paramMap.isEmpty()) && (Boolean.valueOf((String)paramMap.get(0)).booleanValue());
  }
  
  public final AdResponseParcel a(long paramLong)
  {
    return new AdResponseParcel(u, b, c, d, g, h, i, k, l, m, a, paramLong, e, f, n, o, p, q, r, s, t);
  }
  
  public final void a(String paramString1, Map<String, List<String>> paramMap, String paramString2)
  {
    b = paramString1;
    c = paramString2;
    a(paramMap);
  }
  
  public final void a(Map<String, List<String>> paramMap)
  {
    a = a(paramMap, "X-Afma-Ad-Size");
    Object localObject = c(paramMap, "X-Afma-Click-Tracking-Urls");
    if (localObject != null) {
      d = ((List)localObject);
    }
    localObject = (List)paramMap.get("X-Afma-Debug-Dialog");
    if ((localObject != null) && (!((List)localObject).isEmpty())) {
      e = ((String)((List)localObject).get(0));
    }
    localObject = c(paramMap, "X-Afma-Tracking-Urls");
    if (localObject != null) {
      g = ((List)localObject);
    }
    long l1 = b(paramMap, "X-Afma-Interstitial-Timeout");
    if (l1 != -1L) {
      h = l1;
    }
    i |= d(paramMap, "X-Afma-Mediation");
    localObject = c(paramMap, "X-Afma-Manual-Tracking-Urls");
    if (localObject != null) {
      k = ((List)localObject);
    }
    l1 = b(paramMap, "X-Afma-Refresh-Rate");
    if (l1 != -1L) {
      l = l1;
    }
    localObject = (List)paramMap.get("X-Afma-Orientation");
    label391:
    String str;
    if ((localObject != null) && (!((List)localObject).isEmpty()))
    {
      localObject = (String)((List)localObject).get(0);
      if ("portrait".equalsIgnoreCase((String)localObject)) {
        m = o.g().b();
      }
    }
    else
    {
      f = a(paramMap, "X-Afma-ActiveView");
      localObject = (List)paramMap.get("X-Afma-Use-HTTPS");
      if ((localObject != null) && (!((List)localObject).isEmpty())) {
        p = Boolean.valueOf((String)((List)localObject).get(0)).booleanValue();
      }
      n |= d(paramMap, "X-Afma-Custom-Rendering-Allowed");
      o = "native".equals(a(paramMap, "X-Afma-Ad-Format"));
      localObject = (List)paramMap.get("X-Afma-Content-Url-Opted-Out");
      if ((localObject != null) && (!((List)localObject).isEmpty())) {
        q = Boolean.valueOf((String)((List)localObject).get(0)).booleanValue();
      }
      localObject = c(paramMap, "X-Afma-OAuth-Token-Status");
      r = 0;
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        if (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          if (!"Clear".equalsIgnoreCase(str)) {
            break label521;
          }
        }
      }
    }
    for (r = 1;; r = 0)
    {
      localObject = (List)paramMap.get("X-Afma-Gws-Query-Id");
      if ((localObject != null) && (!((List)localObject).isEmpty())) {
        s = ((String)((List)localObject).get(0));
      }
      paramMap = a(paramMap, "X-Afma-Fluid");
      if ((paramMap != null) && (paramMap.equals("height"))) {
        t = true;
      }
      return;
      if (!"landscape".equalsIgnoreCase((String)localObject)) {
        break;
      }
      m = o.g().a();
      break;
      label521:
      if (!"No-Op".equalsIgnoreCase(str)) {
        break label391;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */