package com.adobe.b.c.a.a;

import com.adobe.b.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

final class a$7
  implements b
{
  a$7(a parama, Map paramMap) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (ArrayList)paramObject;
    if ((paramObject == null) || (((ArrayList)paramObject).size() == 0)) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    Iterator localIterator = ((ArrayList)paramObject).iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (str.startsWith("meta."))
      {
        paramObject = str.split("meta\\.");
        localHashMap.put(str, ((b)a.get("meta")).call(paramObject[1]));
      }
      else
      {
        if (a.containsKey(str)) {}
        for (paramObject = ((b)a.get(str)).call(this);; paramObject = null)
        {
          localHashMap.put(str, paramObject);
          break;
        }
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.a.a.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */