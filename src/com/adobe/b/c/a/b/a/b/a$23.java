package com.adobe.b.c.a.b.a.b;

import com.adobe.b.a.c;
import java.util.HashMap;
import java.util.Map;

final class a$23
  implements com.adobe.b.a.b
{
  a$23(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    synchronized (a.c(a))
    {
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      a.b(a).a(a.a(a));
      if (!a.a(a, "_onApiPause")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "playhead" })) {
        return null;
      }
    }
    a.a(a, localMap);
    if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
    for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
    {
      paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "pause", ((Double)localMap.get("playhead")).doubleValue(), null, (com.adobe.b.a.b)paramObject);
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */