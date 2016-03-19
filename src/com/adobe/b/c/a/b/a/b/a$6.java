package com.adobe.b.c.a.b.a.b;

import java.util.HashMap;
import java.util.Map;

final class a$6
  implements com.adobe.b.a.b
{
  a$6(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    synchronized (a.c(a))
    {
      a.b(a).a(a.a(a));
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      if (!a.a(a, "_onApiAdComplete")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "playhead" })) {
        return null;
      }
    }
    if (a.b.a() != "ad")
    {
      a.b(a).c(a.a(a));
      return null;
    }
    if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
    for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
    {
      paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "complete", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramObject);
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
      a.b.a(null);
      a.b.a("main");
      a.b(a, a.b.b());
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */