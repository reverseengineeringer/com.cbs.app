package com.adobe.b.c.b.a;

import com.adobe.b.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

final class a$6
  implements b
{
  a$6(a parama, Map paramMap) {}
  
  public final Object call(Object paramObject)
  {
    String str = null;
    Iterator localIterator = null;
    paramObject = (ArrayList)paramObject;
    Object localObject = localIterator;
    if (paramObject != null)
    {
      if (((ArrayList)paramObject).size() <= 0) {
        localObject = localIterator;
      }
    }
    else {
      return localObject;
    }
    localIterator = ((ArrayList)paramObject).iterator();
    paramObject = str;
    for (;;)
    {
      localObject = paramObject;
      if (!localIterator.hasNext()) {
        break;
      }
      str = (String)localIterator.next();
      localObject = paramObject;
      if (paramObject == null) {
        localObject = new HashMap();
      }
      paramObject = localObject;
      if (str.startsWith("is_paused"))
      {
        String[] arrayOfString = str.split("is_paused.");
        paramObject = localObject;
        if (arrayOfString.length > 0)
        {
          ((Map)localObject).put(str, ((b)a.get("is_paused")).call(arrayOfString[1]));
          paramObject = localObject;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b.a.a.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */