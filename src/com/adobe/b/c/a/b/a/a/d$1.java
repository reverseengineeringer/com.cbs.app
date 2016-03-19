package com.adobe.b.c.a.b.a.a;

import com.adobe.b.a.a;
import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

final class d$1
  implements b
{
  d$1(d paramd) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (Double)((Map)((a)paramObject).b()).get("reporting_interval");
    c localc = a.b;
    String str = a.a;
    new StringBuilder("#_onCheckStatusComplete(interval=").append(paramObject).append(")");
    localc.a(str);
    if (paramObject != null)
    {
      if (((Double)paramObject).equals(a.c))
      {
        a.b.a(a.a);
        return null;
      }
      localc = a.b;
      str = a.a;
      new StringBuilder("#_onCheckStatusComplete() > Interval changed to: ").append(paramObject);
      localc.a(str);
      a.a(((Double)paramObject).doubleValue());
      return null;
    }
    a.b.c(a.a);
    a.a(10.0D);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.a.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */