package com.adobe.b.c.a.b.a.c;

import com.adobe.b.a.b;
import com.adobe.b.c.a.b.a.d.a.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

final class a$1
  implements b
{
  a$1(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (HashMap)paramObject;
    if (a.a(a)) {}
    do
    {
      return null;
      paramObject = (com.adobe.b.c.a.b.a.d.b.a)((HashMap)paramObject).get("report");
      if (paramObject != null)
      {
        String str = ((com.adobe.b.c.a.b.a.d.b.a)paramObject).d().a();
        if (!a.b(a).containsKey(str)) {
          a.b(a).put(str, new ArrayList());
        }
        ((ArrayList)a.b(a).get(str)).add(paramObject);
      }
    } while (a.c(a));
    a.a(a, true);
    paramObject = new HashMap();
    ((HashMap)paramObject).put("reset", Boolean.valueOf(true));
    ((HashMap)paramObject).put("repeat_count", Integer.valueOf(1));
    a.d(a).a("clock:flush_filter.resume", paramObject);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.c.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */