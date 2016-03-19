package com.adobe.b.c.a.b.a.b;

import com.adobe.b.a.c;
import com.adobe.b.c.a.b.a.d.a.f;
import java.util.Map;

final class a$11
  implements com.adobe.b.a.b
{
  a$11(a parama) {}
  
  public final Object call(Object paramObject)
  {
    synchronized (a.c(a))
    {
      paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
      Object localObject = a.b(a);
      String str = a.a(a);
      new StringBuilder("#_onApiTrackInternalError(source=").append(((Map)paramObject).get("source")).append(", err_id=").append(((Map)paramObject).get("error_id")).append(")");
      ((c)localObject).a(str);
      a.a(a, (Map)paramObject);
      localObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "error", 0.0D, null, null);
      ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().b((String)((Map)paramObject).get("error_id"));
      ((com.adobe.b.c.a.b.a.d.b.b)localObject).a().c((String)((Map)paramObject).get("source"));
      a.a(a, (com.adobe.b.c.a.b.a.d.b.b)localObject);
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */