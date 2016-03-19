package com.comscore.streaming;

import com.comscore.utils.n;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class d
{
  HashMap<String, String> a = new HashMap();
  private int b;
  private int c;
  private long d;
  private long e;
  private long f;
  private long g;
  private String h;
  
  public d()
  {
    a(null);
  }
  
  private void a(String paramString, HashMap<String, String> paramHashMap)
  {
    paramHashMap = (String)paramHashMap.get(paramString);
    if (paramHashMap != null) {
      a.put(paramString, paramHashMap);
    }
  }
  
  protected final HashMap<String, String> a(e parame, HashMap<String, String> paramHashMap)
  {
    if (n.g(h)) {
      h = "1";
    }
    paramHashMap.put("ns_st_cn", h);
    paramHashMap.put("ns_st_bt", String.valueOf(c()));
    if ((parame == e.a) || (parame == null)) {
      paramHashMap.put("ns_st_sq", String.valueOf(c));
    }
    if ((parame == e.b) || (parame == e.c) || (parame == e.e) || (parame == e.f) || (parame == null))
    {
      paramHashMap.put("ns_st_pt", String.valueOf(d()));
      paramHashMap.put("ns_st_pc", String.valueOf(b));
    }
    paramHashMap.putAll(a);
    return paramHashMap;
  }
  
  protected final void a()
  {
    b += 1;
  }
  
  protected final void a(long paramLong)
  {
    d = paramLong;
  }
  
  public final void a(HashMap<String, String> paramHashMap)
  {
    b(paramHashMap);
  }
  
  protected final void a(HashMap<String, String> paramHashMap, g paramg)
  {
    String str = (String)paramHashMap.get("ns_st_cn");
    if (str != null)
    {
      h = str;
      paramHashMap.remove("ns_st_cn");
    }
    str = (String)paramHashMap.get("ns_st_bt");
    if (str != null) {}
    try
    {
      d = Long.parseLong(str);
      paramHashMap.remove("ns_st_bt");
      a("ns_st_cl", paramHashMap);
      a("ns_st_pn", paramHashMap);
      a("ns_st_tp", paramHashMap);
      a("ns_st_ub", paramHashMap);
      a("ns_st_br", paramHashMap);
      if ((paramg == g.b) || (paramg == null))
      {
        str = (String)paramHashMap.get("ns_st_sq");
        if (str == null) {}
      }
      try
      {
        c = Integer.parseInt(str);
        paramHashMap.remove("ns_st_sq");
        if (paramg != g.d)
        {
          str = (String)paramHashMap.get("ns_st_pt");
          if (str == null) {}
        }
        try
        {
          f = Long.parseLong(str);
          paramHashMap.remove("ns_st_pt");
          if ((paramg == g.c) || (paramg == g.a) || (paramg == null))
          {
            paramg = (String)paramHashMap.get("ns_st_pc");
            if (paramg == null) {}
          }
          try
          {
            b = Integer.parseInt(paramg);
            paramHashMap.remove("ns_st_pc");
            return;
          }
          catch (NumberFormatException paramHashMap) {}
        }
        catch (NumberFormatException localNumberFormatException1)
        {
          for (;;) {}
        }
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        for (;;) {}
      }
    }
    catch (NumberFormatException localNumberFormatException3)
    {
      for (;;) {}
    }
  }
  
  public final void a(Set<String> paramSet)
  {
    HashMap localHashMap;
    Iterator localIterator;
    if ((paramSet != null) && (!paramSet.isEmpty()))
    {
      localHashMap = a;
      localIterator = localHashMap.keySet().iterator();
    }
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!paramSet.contains(str))
      {
        localHashMap.remove(str);
        continue;
        a.clear();
      }
    }
    if (!a.containsKey("ns_st_cl")) {
      a.put("ns_st_cl", "0");
    }
    if (!a.containsKey("ns_st_pn")) {
      a.put("ns_st_pn", "1");
    }
    if (!a.containsKey("ns_st_tp")) {
      a.put("ns_st_tp", "1");
    }
    b = 0;
    c = 0;
    d = 0L;
    e = -1L;
    f = 0L;
    g = -1L;
  }
  
  protected final void b()
  {
    c += 1;
  }
  
  protected final void b(long paramLong)
  {
    f = paramLong;
  }
  
  protected final void b(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap != null) {
      a.putAll(paramHashMap);
    }
    a(a, null);
  }
  
  protected final long c()
  {
    long l2 = d;
    long l1 = l2;
    if (e >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - e);
    }
    return l1;
  }
  
  protected final void c(long paramLong)
  {
    g = paramLong;
  }
  
  protected final long d()
  {
    long l2 = f;
    long l1 = l2;
    if (g >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - g);
    }
    return l1;
  }
  
  protected final void d(long paramLong)
  {
    e = paramLong;
  }
  
  public final long e()
  {
    return g;
  }
  
  protected final long f()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */