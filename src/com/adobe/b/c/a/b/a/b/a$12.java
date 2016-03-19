package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a.b.a.d.a.k;
import java.util.HashMap;
import java.util.Map;

final class a$12
  implements com.adobe.b.a.b
{
  a$12(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    synchronized (a.c(a))
    {
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      a.b(a).a(a.a(a));
      if (!a.a(a, "_onApiAnalyticsStart")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "playhead" })) {
        return null;
      }
    }
    a.g.a((String)localMap.get("vid"));
    a.g.b((String)localMap.get("aid"));
    a.g.c((String)localMap.get("mid"));
    a.a(a, localMap);
    if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
    for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
    {
      paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "aa_start", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramObject);
      ((com.adobe.b.c.a.b.a.d.b.b)paramObject).b().a(null);
      ((com.adobe.b.c.a.b.a.d.b.b)paramObject).b().a("main");
      if ((!a.e(a)) && (((com.adobe.b.c.a.b.a.d.b.b)paramObject).b() != null)) {
        ((com.adobe.b.c.a.b.a.d.b.b)paramObject).b().a(null);
      }
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */