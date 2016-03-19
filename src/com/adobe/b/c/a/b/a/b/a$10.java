package com.adobe.b.c.a.b.a.b;

import com.adobe.b.a.c;
import com.adobe.b.c.a.b.a.d.a.f;
import java.util.HashMap;
import java.util.Map;

final class a$10
  implements com.adobe.b.a.b
{
  a$10(a parama) {}
  
  public final Object call(Object paramObject)
  {
    for (;;)
    {
      Map localMap;
      synchronized (a.c(a))
      {
        localMap = (Map)((com.adobe.b.a.a)paramObject).b();
        if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
          break label280;
        }
        paramObject = (HashMap)localMap.get("_eventData");
        localObject = (com.adobe.b.a.b)((HashMap)paramObject).get("callback");
        if (paramObject != null)
        {
          c localc = a.b(a);
          String str = a.a(a);
          new StringBuilder("#_onApiTrackError(source=").append(((HashMap)paramObject).get("source")).append(", err_id=").append(((HashMap)paramObject).get("error_id")).append(")");
          localc.a(str);
        }
        if (!a.g(a))
        {
          a.b(a).c(a.a(a));
          return null;
        }
        if ((!a.l(a)) && (!((HashMap)paramObject).get("source").equals("sourceErrorSDK"))) {
          return null;
        }
      }
      a.a(a, localMap);
      Object localObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "error", 0.0D, null, (com.adobe.b.a.b)localObject);
      ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().b((String)((HashMap)paramObject).get("error_id"));
      ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().c((String)((HashMap)paramObject).get("source"));
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)localObject);
      return null;
      label280:
      localObject = null;
      paramObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */