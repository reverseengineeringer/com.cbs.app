package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

final class f$25
  implements b
{
  f$25(f paramf, Map paramMap1, Map paramMap2) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (ArrayList)paramObject;
    if ((paramObject == null) || (((ArrayList)paramObject).size() == 0)) {
      return null;
    }
    a.clear();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = ((ArrayList)paramObject).iterator();
    if (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (b.containsKey(str)) {}
      for (paramObject = ((b)b.get(str)).call(this);; paramObject = null)
      {
        localHashMap.put(str, paramObject);
        break;
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.25
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */