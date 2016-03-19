package com.adobe.b.c.a.b.a.c;

import com.adobe.b.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class a$2
  implements b
{
  a$2(a parama) {}
  
  public final Object call(Object paramObject)
  {
    if (a.a(a)) {
      return null;
    }
    paramObject = a.b(a).keySet().iterator();
    while (((Iterator)paramObject).hasNext())
    {
      localObject = (String)((Iterator)paramObject).next();
      localObject = a.c(a.b(a.a((ArrayList)a.b(a).get(localObject))));
      a.a(a, (ArrayList)localObject);
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        com.adobe.b.c.a.b.a.d.b.a locala = (com.adobe.b.c.a.b.a.d.b.a)((Iterator)localObject).next();
        HashMap localHashMap = new HashMap();
        localHashMap.put("report", locala);
        a.d(a).a(new com.adobe.b.a.a("filter:data_available", localHashMap));
      }
    }
    a.b(a).clear();
    Object localObject = (String)a.d(a).a("session_id");
    if (a.e(a).containsKey(localObject)) {}
    for (paramObject = (HashMap)a.e(a).get(localObject);; paramObject = new HashMap())
    {
      a.e(a).clear();
      a.e(a).put(localObject, paramObject);
      a.a(a, false);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.c.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */