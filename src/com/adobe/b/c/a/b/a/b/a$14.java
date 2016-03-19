package com.adobe.b.c.a.b.a.b;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

final class a$14
  implements b
{
  a$14(a parama) {}
  
  public final Object call(Object paramObject)
  {
    synchronized (a.c(a))
    {
      paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
      a.b(a, ((Boolean)((Map)paramObject).get("track_external_errors")).booleanValue());
      paramObject = a.b(a);
      String str = a.a(a);
      new StringBuilder("#_onNetworkCheckStatusComplete(track_ext_err=").append(a.l(a)).append(")");
      ((c)paramObject).a(str);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */