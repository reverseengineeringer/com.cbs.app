package com.adobe.b.c.a.b.a.b;

import com.adobe.b.a.c;
import com.adobe.b.c.a.b.a.d.a.f;
import com.adobe.b.c.a.b.a.d.a.g;
import java.util.HashMap;
import java.util.Map;

final class a$13
  implements com.adobe.b.a.b
{
  a$13(a parama) {}
  
  public final Object call(Object paramObject)
  {
    synchronized (a.c(a))
    {
      paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
      c localc = a.b(a);
      String str = a.a(a);
      new StringBuilder("#_onApiQuantumEnd(interval=").append(a.a.a("reporting_interval")).append(")");
      localc.a(str);
      if (!a.a(a, "_onApiQuantumEnd")) {
        return null;
      }
      if (!a.d(a).a((HashMap)paramObject, new String[] { "playhead" })) {
        return null;
      }
    }
    a.m(a).a().a(((Double)((Map)paramObject).get("playhead")).doubleValue());
    a.a(a, (Map)paramObject);
    a.m(a).d().a(a.e.a());
    a.m(a).d().a(a.e.b());
    a.m(a).d().b(a.e.c());
    a.m(a).d().c(-a.e.d());
    a.a(a, a.m(a));
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */