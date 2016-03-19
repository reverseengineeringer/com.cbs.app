package com.comscore.streaming;

import com.comscore.utils.b;
import java.util.HashMap;
import java.util.Set;

public final class f
{
  private d a = null;
  private String b;
  private int c;
  private int d;
  private int e;
  private long f;
  private long g;
  private HashMap<String, String> h = new HashMap();
  private int i;
  private boolean j = false;
  
  public f()
  {
    a(null);
  }
  
  private long f()
  {
    long l2 = f;
    long l1 = l2;
    if (a.f() >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - a.f());
    }
    return l1;
  }
  
  private long g()
  {
    long l2 = g;
    long l1 = l2;
    if (a.e() >= 0L) {
      l1 = l2 + (System.currentTimeMillis() - a.e());
    }
    return l1;
  }
  
  public final d a()
  {
    return a;
  }
  
  protected final HashMap<String, String> a(e parame, HashMap<String, String> paramHashMap)
  {
    paramHashMap.put("ns_st_bp", String.valueOf(f()));
    paramHashMap.put("ns_st_sp", String.valueOf(c));
    paramHashMap.put("ns_st_id", String.valueOf(b));
    if (e > 0) {
      paramHashMap.put("ns_st_bc", String.valueOf(e));
    }
    if ((parame == e.b) || (parame == e.c) || (parame == e.e) || (parame == e.f) || (parame == null))
    {
      paramHashMap.put("ns_st_pa", String.valueOf(g()));
      paramHashMap.put("ns_st_pp", String.valueOf(d));
    }
    if (((parame == e.a) || (parame == null)) && (!j))
    {
      paramHashMap.put("ns_st_pb", "1");
      j = true;
    }
    paramHashMap.putAll(h);
    return paramHashMap;
  }
  
  protected final void a(int paramInt)
  {
    c = 1;
  }
  
  protected final void a(long paramLong)
  {
    b.a(this, "addPlaybackTime(" + paramLong + ")");
    if (a.e() >= 0L)
    {
      long l = paramLong - a.e();
      a.c(-1L);
      a.b(a.d() + l);
      g = (g() + l);
      b.a(this, "addPlaybackTime(" + paramLong + ") ->" + l);
    }
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  protected final void a(HashMap<String, String> paramHashMap, g paramg)
  {
    String str = (String)paramHashMap.get("ns_st_sp");
    if (str != null) {}
    try
    {
      c = Integer.parseInt(str);
      paramHashMap.remove("ns_st_sp");
      str = (String)paramHashMap.get("ns_st_bc");
      if (str != null) {}
      try
      {
        e = Integer.parseInt(str);
        paramHashMap.remove("ns_st_bc");
        str = (String)paramHashMap.get("ns_st_bp");
        if (str != null) {}
        try
        {
          f = Long.parseLong(str);
          paramHashMap.remove("ns_st_bp");
          str = (String)paramHashMap.get("ns_st_id");
          if (str != null)
          {
            b = str;
            paramHashMap.remove("ns_st_id");
          }
          if (paramg != g.d)
          {
            str = (String)paramHashMap.get("ns_st_pa");
            if (str == null) {}
          }
          try
          {
            g = Long.parseLong(str);
            paramHashMap.remove("ns_st_pa");
            if ((paramg == g.c) || (paramg == g.a) || (paramg == null))
            {
              paramg = (String)paramHashMap.get("ns_st_pp");
              if (paramg == null) {}
            }
            try
            {
              d = Integer.parseInt(paramg);
              paramHashMap.remove("ns_st_pp");
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
    catch (NumberFormatException localNumberFormatException4)
    {
      for (;;) {}
    }
  }
  
  public final void a(Set<String> paramSet)
  {
    h.clear();
    b = (System.currentTimeMillis() + "_" + i);
    f = 0L;
    g = 0L;
    d = 0;
    c = 0;
    e = 0;
    j = false;
  }
  
  protected final int b()
  {
    return c;
  }
  
  protected final void b(long paramLong)
  {
    b.a(this, "addBufferingTime(" + paramLong + ")");
    if (a.f() >= 0L)
    {
      long l = paramLong - a.f();
      a.d(-1L);
      a.a(a.c() + l);
      f = (f() + l);
      b.a(this, "addBufferingTime(" + paramLong + ") ->" + l);
    }
  }
  
  protected final void c()
  {
    d += 1;
    a.a();
  }
  
  protected final void d()
  {
    e += 1;
  }
  
  protected final void e()
  {
    i = 0;
  }
}

/* Location:
 * Qualified Name:     com.comscore.streaming.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */