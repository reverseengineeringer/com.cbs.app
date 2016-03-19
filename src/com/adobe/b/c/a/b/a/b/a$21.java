package com.adobe.b.c.a.b.a.b;

import java.util.HashMap;
import java.util.Map;

final class a$21
  implements com.adobe.b.a.b
{
  a$21(a parama) {}
  
  public final Object call(Object paramObject)
  {
    for (;;)
    {
      synchronized (a.c(a))
      {
        paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
        a.b(a).a(a.a(a));
        if (!a.a(a, "_onApiVideoComplete")) {
          return null;
        }
        if ((((Map)paramObject).get("_eventData") != null) && ((((Map)paramObject).get("_eventData") instanceof HashMap)))
        {
          paramObject = (com.adobe.b.a.b)((HashMap)((Map)paramObject).get("_eventData")).get("callback");
          paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "complete", a.b.c(), null, (com.adobe.b.a.b)paramObject);
          a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
          a.i(a);
          return null;
        }
      }
      paramObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */