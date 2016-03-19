package com.comscore.streaming;

import com.comscore.utils.b.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class c
{
  protected com.comscore.a.b a;
  private HashMap<String, String> b;
  private String c = null;
  private long d;
  private long e;
  private g f = null;
  private int g;
  private f h = null;
  private Runnable i = null;
  private boolean j = true;
  private Runnable k;
  private n l = null;
  private Runnable m;
  private long n;
  private int o;
  private long p;
  private boolean q;
  private g r;
  private String s;
  private String t;
  private HashMap<String, String> u;
  private List<Object> v;
  private List<HashMap<String, Long>> w;
  private int x;
  private int y;
  
  public c()
  {
    com.comscore.utils.b.a(this, "StreamSense()");
    a = com.comscore.a.k.g();
    b = new HashMap();
    g = 1;
    f = g.a;
    h = new f();
    i = null;
    j = true;
    m = null;
    o = 0;
    g();
    k = null;
    l = null;
    q = false;
    r = null;
    e = 0L;
    x = 1200000;
    y = 500;
    v = new ArrayList();
    ArrayList localArrayList = new ArrayList();
    HashMap localHashMap = new HashMap();
    localHashMap.put("playingtime", Long.valueOf(60000L));
    localHashMap.put("interval", Long.valueOf(10000L));
    localArrayList.add(localHashMap);
    localHashMap = new HashMap();
    localHashMap.put("playingtime", null);
    localHashMap.put("interval", Long.valueOf(60000L));
    localArrayList.add(localHashMap);
    w = localArrayList;
    if (a.U())
    {
      com.comscore.utils.b.a(this, "Reset()");
      h.a(null);
      h.e();
      h.a(System.currentTimeMillis() + "_1");
      h.a().a(null);
      b.clear();
      g = 1;
      o = 0;
      f();
      g();
      h();
      j();
      k();
      f = g.a;
      d = -1L;
      r = null;
      s = "android_puppet";
      t = "4.1508.28";
      u = null;
    }
  }
  
  private long a(long paramLong)
  {
    Iterator localIterator = w.iterator();
    while (localIterator.hasNext())
    {
      HashMap localHashMap = (HashMap)localIterator.next();
      Long localLong = (Long)localHashMap.get("playingtime");
      if ((localLong == null) || (paramLong < localLong.longValue())) {
        return ((Long)localHashMap.get("interval")).longValue();
      }
    }
    return 0L;
  }
  
  private HashMap<String, String> a(e parame, HashMap<String, String> paramHashMap)
  {
    if (!a.U()) {
      new HashMap();
    }
    com.comscore.utils.b.a(this, "createMeasurementLabels(" + parame + ")");
    HashMap localHashMap = new HashMap();
    if (paramHashMap != null) {
      localHashMap.putAll(paramHashMap);
    }
    if (!localHashMap.containsKey("ns_ts")) {
      localHashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
    }
    if ((parame != null) && (!localHashMap.containsKey("ns_st_ev"))) {
      localHashMap.put("ns_st_ev", parame.toString());
    }
    localHashMap.putAll(b);
    if (!a.U()) {
      new HashMap();
    }
    for (;;)
    {
      h.a(parame, localHashMap);
      h.a().a(parame, localHashMap);
      if (!localHashMap.containsKey("ns_st_mp")) {
        localHashMap.put("ns_st_mp", s);
      }
      if (!localHashMap.containsKey("ns_st_mv")) {
        localHashMap.put("ns_st_mv", t);
      }
      if (!localHashMap.containsKey("ns_st_ub")) {
        localHashMap.put("ns_st_ub", "0");
      }
      if (!localHashMap.containsKey("ns_st_br")) {
        localHashMap.put("ns_st_br", "0");
      }
      if (!localHashMap.containsKey("ns_st_pn")) {
        localHashMap.put("ns_st_pn", "1");
      }
      if (!localHashMap.containsKey("ns_st_tp")) {
        localHashMap.put("ns_st_tp", "1");
      }
      if (!localHashMap.containsKey("ns_st_it")) {
        localHashMap.put("ns_st_it", "c");
      }
      localHashMap.put("ns_st_sv", "4.1508.28");
      return localHashMap;
      localHashMap.put("ns_st_ec", String.valueOf(g));
      if (!localHashMap.containsKey("ns_st_po"))
      {
        long l2 = e;
        long l3 = c(localHashMap);
        long l1;
        if ((parame != e.a) && (parame != e.e) && (parame != e.f))
        {
          l1 = l2;
          if (parame == null)
          {
            l1 = l2;
            if (f != g.b) {}
          }
        }
        else
        {
          l1 = l2 + (l3 - h.a().e());
        }
        localHashMap.put("ns_st_po", String.valueOf(l1));
      }
      if (parame == e.f)
      {
        localHashMap.put("ns_st_hc", String.valueOf(o));
        localHashMap.put("ns_st_pe", "1");
      }
    }
  }
  
  private void a(g paramg, HashMap<String, String> paramHashMap)
  {
    if (!a.U()) {}
    for (;;)
    {
      return;
      com.comscore.utils.b.a(this, "transitionTo(" + paramg + ", " + paramHashMap + ")");
      k();
      int i1;
      label65:
      Object localObject;
      long l1;
      if ((paramg != null) && (f != paramg))
      {
        i1 = 1;
        if (i1 == 0) {
          break label393;
        }
        c(paramHashMap);
        localObject = f;
        if (a.U())
        {
          com.comscore.utils.b.a(this, "onExit(" + localObject + ", " + paramHashMap + ")");
          l1 = c(paramHashMap);
          if (localObject != g.b) {
            break label395;
          }
          h.a(l1);
          f();
          h();
        }
        label158:
        if (a.U())
        {
          com.comscore.utils.b.a(this, "onEnter(" + paramg + ", " + paramHashMap + ")");
          l1 = c(paramHashMap);
          e = b(paramHashMap);
          if (paramg != g.b) {
            break label453;
          }
          e();
          if (a.U())
          {
            com.comscore.utils.b.a(this, "Starting keep alive timer");
            h();
            k = new k(this);
            a.h().a(k, x, true, x);
          }
          h.a().c(l1);
          if (b(paramg))
          {
            h.a().b();
            if (h.b() <= 0) {
              h.a(1);
            }
          }
        }
      }
      for (;;)
      {
        if (a.U())
        {
          f = paramg;
          d = System.currentTimeMillis();
        }
        localObject = v.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((Iterator)localObject).next();
        }
        i1 = 0;
        break label65;
        label393:
        break;
        label395:
        if (localObject == g.d)
        {
          h.b(l1);
          j();
          break label158;
        }
        if (localObject != g.a) {
          break label158;
        }
        h.a().a(h.a().a.keySet());
        break label158;
        label453:
        if (paramg == g.c)
        {
          if (b(paramg)) {
            h.c();
          }
        }
        else if (paramg == g.d)
        {
          h.a().d(l1);
          if ((j) && (a.U()))
          {
            j();
            if ((j) && (b(g.c)))
            {
              i = new i(this);
              a.h().a(i, y);
            }
          }
        }
        else if (paramg == g.a)
        {
          g();
        }
      }
      if (a.U())
      {
        localObject = (String)paramHashMap.get("ns_st_mp");
        if (localObject != null)
        {
          s = ((String)localObject);
          paramHashMap.remove("ns_st_mp");
        }
        localObject = (String)paramHashMap.get("ns_st_mv");
        if (localObject != null)
        {
          t = ((String)localObject);
          paramHashMap.remove("ns_st_mv");
        }
        localObject = (String)paramHashMap.get("ns_st_ec");
        if (localObject == null) {}
      }
      try
      {
        g = Integer.parseInt((String)localObject);
        paramHashMap.remove("ns_st_ec");
        h.a(paramHashMap, paramg);
        h.a().a(paramHashMap, paramg);
        paramg = a(paramg.a(), paramHashMap);
        paramg.putAll(paramHashMap);
        if (!b(f)) {
          continue;
        }
        a(paramg, true);
        r = f;
        g += 1;
        return;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
  
  private void a(HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (!a.U()) {}
    for (;;)
    {
      return;
      com.comscore.utils.b.a(this, "dispatch(" + paramHashMap + ", " + paramBoolean + ")");
      if ((paramBoolean) && (a.U()))
      {
        u = a(f.a(), null);
        u.putAll(paramHashMap);
      }
      Object localObject = a.A();
      String str1 = a.H();
      String str2 = a.D();
      if ((localObject == null) || (str1 == null) || (str1.length() == 0) || (str2 == null) || (str2.length() == 0)) {}
      for (int i1 = 1; i1 == 0; i1 = 0)
      {
        localObject = c;
        a.h().a(new m(this, paramHashMap, (String)localObject), true);
        return;
      }
    }
  }
  
  private boolean a(g paramg)
  {
    if (!a.U()) {}
    while ((paramg != g.b) && (paramg != g.c)) {
      return false;
    }
    return true;
  }
  
  private static long b(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap.containsKey("ns_st_po")) {
      try
      {
        long l1 = Long.valueOf((String)paramHashMap.get("ns_st_po")).longValue();
        return l1;
      }
      catch (NumberFormatException paramHashMap) {}
    }
    return -1L;
  }
  
  private boolean b(g paramg)
  {
    if ((paramg == g.c) && ((r == g.a) || (r == null))) {}
    while ((paramg == g.d) || (r == paramg)) {
      return false;
    }
    return true;
  }
  
  private static long c(HashMap<String, String> paramHashMap)
  {
    if (paramHashMap.containsKey("ns_ts")) {
      try
      {
        long l1 = Long.valueOf((String)paramHashMap.get("ns_ts")).longValue();
        return l1;
      }
      catch (NumberFormatException paramHashMap) {}
    }
    return -1L;
  }
  
  private void e()
  {
    if (!a.U()) {}
    for (;;)
    {
      return;
      i();
      if (w != null)
      {
        long l1;
        if (n >= 0L)
        {
          l1 = n;
          com.comscore.utils.b.a(this, "Resuming heart beat timer. Next event in " + l1 + " ms");
        }
        while (l1 > 0L)
        {
          p = (System.currentTimeMillis() + l1);
          m = new j(this);
          a.h().a(m, l1);
          return;
          l1 = a(h.a().d());
          com.comscore.utils.b.a(this, "Starting heart beat timer. Next event in " + l1 + " ms");
        }
      }
    }
  }
  
  private void f()
  {
    if (!a.U()) {
      return;
    }
    com.comscore.utils.b.a(this, "Pausing heartbeat timer.");
    i();
    n = (p - System.currentTimeMillis());
    p = -1L;
  }
  
  private void g()
  {
    if (!a.U()) {
      return;
    }
    com.comscore.utils.b.a(this, "Resetting heartbeat timer.");
    n = -1L;
    p = -1L;
    o = 0;
  }
  
  private void h()
  {
    if (!a.U()) {}
    do
    {
      return;
      com.comscore.utils.b.a(this, "stopKeepAliveTask()");
    } while (k == null);
    a.h().b(k);
    k = null;
  }
  
  private void i()
  {
    if (!a.U()) {}
    do
    {
      return;
      com.comscore.utils.b.a(this, "releaseHeartBeatTask()");
    } while (m == null);
    a.h().b(m);
    m = null;
  }
  
  private void j()
  {
    if (!a.U()) {}
    do
    {
      return;
      com.comscore.utils.b.a(this, "stopPausedOnBufferingTask()");
    } while (i == null);
    a.h().b(i);
    i = null;
  }
  
  private void k()
  {
    if (!a.U()) {}
    do
    {
      return;
      com.comscore.utils.b.a(this, "stopDelayedTransitionTask()");
    } while (l == null);
    a.h().b(l);
    l = null;
  }
  
  public final Boolean a(HashMap<String, String> paramHashMap)
  {
    Boolean localBoolean;
    if (!a.U()) {
      localBoolean = Boolean.FALSE;
    }
    do
    {
      return localBoolean;
      localBoolean = Boolean.FALSE;
    } while (f != g.a);
    h.a().a(null);
    h.a().b(com.comscore.utils.n.a(paramHashMap));
    return Boolean.TRUE;
  }
  
  protected final void a()
  {
    if (!a.U()) {
      return;
    }
    com.comscore.utils.b.a(this, "Firing heart beat");
    o += 1;
    a(a(e.f, null), true);
    n = -1L;
    e();
  }
  
  public final void a(e parame, long paramLong)
  {
    a(parame, new HashMap(), paramLong);
  }
  
  public final void a(e parame, HashMap<String, String> paramHashMap, long paramLong)
  {
    if (!a.U()) {
      return;
    }
    com.comscore.utils.b.a(this, "notify(" + parame + ", " + paramHashMap + ")");
    g localg;
    if (parame == e.a) {
      localg = g.b;
    }
    for (;;)
    {
      paramHashMap = com.comscore.utils.n.a(paramHashMap);
      if ((a.U()) && (c(paramHashMap) < 0L)) {
        paramHashMap.put("ns_ts", String.valueOf(System.currentTimeMillis()));
      }
      if (!paramHashMap.containsKey("ns_st_po")) {
        paramHashMap.put("ns_st_po", String.valueOf(paramLong));
      }
      if ((parame != e.a) && (parame != e.b) && (parame != e.d) && (parame != e.c)) {
        break label343;
      }
      if ((!q) || (!a(f)) || (!a(localg)) || ((f == g.b) && (localg == g.c) && (l == null))) {
        break label335;
      }
      if (!a.U()) {
        break;
      }
      com.comscore.utils.b.a(this, "transitionTo(" + localg + ", " + paramHashMap + ", 500)");
      k();
      l = new l(this, localg, paramHashMap);
      a.h().a(l, 500L);
      return;
      if (parame == e.b) {
        localg = g.c;
      } else if (parame == e.d) {
        localg = g.d;
      } else if (parame == e.c) {
        localg = g.a;
      } else {
        localg = null;
      }
    }
    label335:
    a(localg, paramHashMap);
    return;
    label343:
    parame = a(parame, paramHashMap);
    parame.putAll(paramHashMap);
    a(parame, false);
    g += 1;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (!a.U()) {
      return;
    }
    b.put(paramString1, paramString2);
  }
  
  protected final void b()
  {
    if (!a.U()) {
      return;
    }
    com.comscore.utils.b.a(this, "Firing keep alive");
    a(a(e.e, null), true);
    g += 1;
  }
  
  public final g c()
  {
    return f;
  }
  
  public final d d()
  {
    return h.a();
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */