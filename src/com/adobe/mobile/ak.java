package com.adobe.mobile;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ak
{
  protected static void a(Map<String, Object> paramMap1, Map<String, Object> paramMap2, long paramLong)
  {
    if (!ap.b()) {}
    while (!af.a().b()) {
      return;
    }
    paramMap1 = new HashMap(paramMap1);
    paramMap1.putAll(am.f());
    long l = am.t();
    if (l > 0L) {
      paramMap1.put("a.TimeSinceLaunch", String.valueOf(l));
    }
    if (af.a().m() == ag.c) {
      paramMap1.put("a.privacy.mode", "unknown");
    }
    paramMap2 = new HashMap(paramMap2);
    if (af.a().s()) {
      paramMap2.putAll(ao.a().d());
    }
    if (am.n() != null) {
      paramMap2.put("aid", am.n());
    }
    if (am.d() != null) {
      paramMap2.put("vid", am.d());
    }
    paramMap2.put("ce", af.a().g());
    if (af.a().i()) {
      paramMap2.put("ts", Long.toString(paramLong));
    }
    paramMap2.put("t", am.h());
    Iterator localIterator = paramMap1.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      if (str == null)
      {
        localIterator.remove();
      }
      else if (str.startsWith("&&"))
      {
        paramMap2.put(str.substring(2), localEntry.getValue());
        localIterator.remove();
      }
    }
    ae.a(new HashMap(paramMap2), new HashMap(paramMap1), new HashMap(l.b()));
    paramMap2.put("c", am.a(paramMap1));
    paramMap1 = new StringBuilder(2048);
    paramMap1.append("ndh=1");
    am.a(paramMap2, paramMap1);
    am.c("Analytics - Attempting to send request parameters(%s)", new Object[] { paramMap1 });
    g.e().a(paramMap1.toString(), paramLong);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */