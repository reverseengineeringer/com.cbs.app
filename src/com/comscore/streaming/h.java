package com.comscore.streaming;

import com.comscore.utils.n;
import java.util.HashMap;

public final class h
{
  private String[] a = { "ns_st_ci", "c3", "c4", "c6", "ns_st_st", "ns_st_pu", "ns_st_pr", "ns_st_ep", "ns_st_sn", "ns_st_en", "ns_st_ct" };
  private c b = new c();
  private long c = 0L;
  private long d = 0L;
  private int e = 0;
  private HashMap<String, String> f = null;
  private r g = r.a;
  private boolean h = false;
  
  public h()
  {
    b.a("ns_st_it", "r");
  }
  
  private HashMap<String, String> a(HashMap<String, String> paramHashMap)
  {
    paramHashMap = n.a(paramHashMap);
    String[] arrayOfString = a;
    int j = arrayOfString.length;
    int i = 0;
    if (i < j)
    {
      String str = arrayOfString[i];
      if (!paramHashMap.containsKey(str))
      {
        if (str != "ns_st_ci") {
          break label60;
        }
        paramHashMap.put(str, "0");
      }
      for (;;)
      {
        i += 1;
        break;
        label60:
        paramHashMap.put(str, "*null");
      }
    }
    return paramHashMap;
  }
  
  private void a(long paramLong)
  {
    if ((b.c() != g.a) && (b.c() != g.c)) {
      b.a(e.c, b(paramLong));
    }
    while (b.c() != g.c) {
      return;
    }
    b.a(e.c, d);
  }
  
  private void a(HashMap<String, String> paramHashMap, r paramr)
  {
    long l = System.currentTimeMillis();
    paramHashMap = a(n.a(paramHashMap));
    if (g == r.a) {
      g = paramr;
    }
    int i;
    int j;
    label98:
    int k;
    label106:
    boolean bool;
    if ((h) && (g == paramr))
    {
      HashMap localHashMap = a(n.a(paramHashMap));
      String[] arrayOfString = a;
      int m = arrayOfString.length;
      i = 0;
      if (i < m)
      {
        String str = arrayOfString[i];
        Object localObject = f;
        if (str != null) {
          if (localObject != null)
          {
            j = 1;
            if (localHashMap == null) {
              break label229;
            }
            k = 1;
            if ((k & j) == 0) {
              break label235;
            }
            localObject = (String)((HashMap)localObject).get(str);
            str = (String)localHashMap.get(str);
            if ((localObject == null) || (str == null)) {
              break label235;
            }
            bool = ((String)localObject).equals(str);
            label157:
            if (bool) {
              break label241;
            }
            i = 0;
            label164:
            if (i == 0) {
              break label253;
            }
            b.d().a(paramHashMap);
            if (b.c() != g.b)
            {
              c = l;
              b.a(e.a, d);
            }
          }
        }
      }
    }
    for (;;)
    {
      h = true;
      g = paramr;
      return;
      j = 0;
      break label98;
      label229:
      k = 0;
      break label106;
      label235:
      bool = false;
      break label157;
      label241:
      i += 1;
      break;
      i = 1;
      break label164;
      label253:
      a(l);
      e += 1;
      if (!paramHashMap.containsKey("ns_st_cn")) {
        paramHashMap.put("ns_st_cn", String.valueOf(e));
      }
      if (!paramHashMap.containsKey("ns_st_pn")) {
        paramHashMap.put("ns_st_pn", "1");
      }
      if (!paramHashMap.containsKey("ns_st_tp")) {
        paramHashMap.put("ns_st_tp", "0");
      }
      b.a(paramHashMap);
      f = paramHashMap;
      c = l;
      d = 0L;
      b.a(e.a, d);
    }
  }
  
  private long b(long paramLong)
  {
    if ((c > 0L) && (paramLong >= c)) {}
    for (d += paramLong - c;; d = 0L) {
      return d;
    }
  }
  
  private void b(HashMap<String, String> paramHashMap)
  {
    long l = System.currentTimeMillis();
    a(l);
    e += 1;
    paramHashMap = a(n.a(paramHashMap));
    if (!paramHashMap.containsKey("ns_st_cn")) {
      paramHashMap.put("ns_st_cn", String.valueOf(e));
    }
    if (!paramHashMap.containsKey("ns_st_pn")) {
      paramHashMap.put("ns_st_pn", "1");
    }
    if (!paramHashMap.containsKey("ns_st_tp")) {
      paramHashMap.put("ns_st_tp", "1");
    }
    if (!paramHashMap.containsKey("ns_st_ad")) {
      paramHashMap.put("ns_st_ad", "1");
    }
    b.a(paramHashMap);
    d = 0L;
    b.a(e.a, d);
    c = l;
    h = false;
  }
  
  public final void a()
  {
    long l = System.currentTimeMillis();
    b.a(e.b, b(l));
  }
  
  public final void a(a parama)
  {
    HashMap localHashMap = new HashMap();
    if (!localHashMap.containsKey("ns_st_ct")) {
      if (parama != null) {
        break label56;
      }
    }
    label56:
    for (parama = "v" + "a";; parama = "v" + parama.a())
    {
      localHashMap.put("ns_st_ct", parama);
      b(localHashMap);
      return;
    }
  }
  
  public final void a(HashMap<String, String> paramHashMap, b paramb)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(paramHashMap);
    if (!localHashMap.containsKey("ns_st_ct")) {
      if (paramb != null) {
        break label64;
      }
    }
    label64:
    for (paramHashMap = "v" + "c";; paramHashMap = "v" + paramb.a())
    {
      localHashMap.put("ns_st_ct", paramHashMap);
      a(localHashMap, r.c);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */