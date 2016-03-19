package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a.b.a.d.a.h;
import com.adobe.b.c.a.b.a.d.a.i;
import com.adobe.b.c.a.b.a.d.a.j;
import java.util.HashMap;
import java.util.Map;

final class a$20
  implements com.adobe.b.a.b
{
  a$20(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    synchronized (a.c(a))
    {
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      paramObject = a.b(a);
      String str = a.a(a);
      new StringBuilder("#_onApiVideoStart(id=").append(localMap.get("videoId")).append(", name=").append(localMap.get("videoName")).append(", length=").append(localMap.get("videoLength")).append(", type=").append(localMap.get("streamType")).append(", playerName=").append(localMap.get("playerName")).append(")");
      ((com.adobe.b.a.c)paramObject).a(str);
      if (!a.a(a, "_onApiVideoStart")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "videoId", "streamType", "videoLength", "playhead", "playerName" })) {
        return null;
      }
    }
    a.f.a((String)localMap.get("rsid"));
    a.f.b((String)localMap.get("trackingServer"));
    a.f.a((Boolean)localMap.get("useSsl"));
    a.h.a((String)localMap.get("ovp"));
    a.h.b((String)localMap.get("sdk"));
    a.h.c((String)localMap.get("channel"));
    a.h.e((String)localMap.get("version"));
    a.h.a(((Integer)localMap.get("apiLvl")).longValue());
    a.b(a, (String)localMap.get("videoId"));
    a.h.d((String)localMap.get("playerName"));
    a.b.b(a.h(a));
    a.b.a(((Double)localMap.get("videoLength")).doubleValue());
    a.b.a("main");
    a.b.c((String)localMap.get("publisher"));
    a.d.a((String)localMap.get("streamType"));
    a.c.a(a.a());
    a.a(a, localMap);
    if ((localMap.get("_eventData") != null) && ((localMap.get("_eventData") instanceof HashMap))) {}
    for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
    {
      paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "start", ((Double)localMap.get("playhead")).doubleValue(), localMap.get("metaVideo"), (com.adobe.b.a.b)paramObject);
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */