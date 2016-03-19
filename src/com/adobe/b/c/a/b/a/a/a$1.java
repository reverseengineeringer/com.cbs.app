package com.adobe.b.c.a.b.a.a;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

final class a$1
  implements b
{
  a$1(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (Double)((Map)((com.adobe.b.a.a)paramObject).b()).get("check_status_interval");
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
      if (((Double)paramObject).doubleValue() > 600.0D)
      {
        localc = a.b;
        str = a.a;
        new StringBuilder("#_onCheckStatusComplete() - Interval value too large: ").append(paramObject);
        localc.c(str);
        a.a(600.0D);
        return null;
      }
      localc = a.b;
      str = a.a;
      new StringBuilder("#_onCheckStatusComplete() - Interval changed to: ").append(paramObject);
      localc.a(str);
      a.a(((Double)paramObject).doubleValue());
      return null;
    }
    a.b.c(a.a);
    a.a(60.0D);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.a.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */