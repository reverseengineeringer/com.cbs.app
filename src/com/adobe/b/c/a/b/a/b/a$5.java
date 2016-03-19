package com.adobe.b.c.a.b.a.b;

import java.util.HashMap;
import java.util.Map;

final class a$5
  implements com.adobe.b.a.b
{
  a$5(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    Object localObject;
    synchronized (a.c(a))
    {
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      paramObject = a.b(a);
      localObject = a.a(a);
      new StringBuilder("#_onApiAdStart(id=").append(localMap.get("adId")).append(", player_name=").append(localMap.get("podPlayerName")).append(", parent_name=").append(a.b.b()).append(", pod_pos=").append(localMap.get("adPosition")).append(")");
      ((com.adobe.b.a.c)paramObject).a((String)localObject);
      if (!a.a(a, "_onApiAdStart")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "playhead", "podPosition", "podPlayerName", "adId", "adPosition" })) {
        return null;
      }
    }
    a.b(a, (String)localMap.get("adId"));
    paramObject = new com.adobe.b.c.a.b.a.d.a.a();
    ((com.adobe.b.c.a.b.a.d.a.a)paramObject).a(a.h(a));
    ((com.adobe.b.c.a.b.a.d.a.a)paramObject).c((String)localMap.get("podPlayerName"));
    ((com.adobe.b.c.a.b.a.d.a.a)paramObject).d(com.adobe.b.b.a.a(a.b.b()) + "_" + localMap.get("podPosition"));
    ((com.adobe.b.c.a.b.a.d.a.a)paramObject).e(localMap.get("adPosition").toString());
    ((com.adobe.b.c.a.b.a.d.a.a)paramObject).b(a.a());
    a.b.a((com.adobe.b.c.a.b.a.d.a.a)paramObject);
    a.b.a("ad");
    a.a(a, localMap);
    if (localMap.get("metaVideo") != null) {}
    for (paramObject = new HashMap((HashMap)localMap.get("metaVideo"));; paramObject = null)
    {
      localObject = paramObject;
      if (localMap.get("metaAd") != null)
      {
        localObject = (HashMap)localMap.get("metaAd");
        if (paramObject != null)
        {
          ((HashMap)paramObject).putAll((Map)localObject);
          localObject = paramObject;
        }
      }
      else
      {
        if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
          break label528;
        }
      }
      label528:
      for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
      {
        paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "start", ((Double)localMap.get("playhead")).doubleValue(), localObject, (com.adobe.b.a.b)paramObject);
        a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
        return null;
        localObject = (HashMap)((HashMap)localObject).clone();
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */