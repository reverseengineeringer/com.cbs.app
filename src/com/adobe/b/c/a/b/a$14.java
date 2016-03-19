package com.adobe.b.c.a.b;

import com.adobe.b.a.b;
import java.util.HashMap;

final class a$14
  implements b
{
  a$14(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (com.adobe.b.a.a)paramObject;
    a.a(a, (com.adobe.b.c.a)((com.adobe.b.a.a)paramObject).b());
    paramObject = new HashMap();
    ((HashMap)paramObject).put("source", "sourceErrorHeartbeat");
    ((HashMap)paramObject).put("error_id", a.a(a).a() + "|" + a.a(a).b());
    a.c(a).a(new com.adobe.b.a.a(a.u(), paramObject));
    paramObject = new HashMap();
    ((HashMap)paramObject).put("reset", Boolean.valueOf(true));
    a.c(a).a("clock:reporting.pause", paramObject);
    a.b(a, "error", a.a(a));
    if (a.b(a) != null) {
      a.b(a).onError(a.a(a));
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */