package com.adobe.b.c.a.a;

import com.adobe.b.a.b;
import java.util.Map;

final class a$6
  implements b
{
  a$6(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (String)paramObject;
    Object localObject = ((String)paramObject).split("\\.");
    if (localObject.length < 2) {}
    do
    {
      do
      {
        do
        {
          return null;
          localObject = a.a.valueOf(localObject[0]);
          paramObject = ((String)paramObject).substring(((String)paramObject).indexOf(".") + 1);
        } while (localObject == null);
        switch (a.11.a[localObject.ordinal()])
        {
        default: 
          return null;
        case 1: 
          if (((String)paramObject).equals("*")) {
            return a.q(a);
          }
          break;
        }
      } while ((a.q(a) == null) || (!a.q(a).containsKey(paramObject)));
      return (String)a.q(a).get(paramObject);
      if (((String)paramObject).equals("*")) {
        return a.r(a);
      }
      return a.r(a).get(paramObject);
      if (((String)paramObject).equals("*")) {
        return a.s(a);
      }
    } while ((a.s(a) == null) || (!a.s(a).containsKey(paramObject)));
    return (String)a.s(a).get(paramObject);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.a.a.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */