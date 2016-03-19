package com.adobe.b.c.a.b.a.e;

import com.adobe.b.a.c;
import com.adobe.b.a.f;
import com.adobe.b.a.f.a;
import com.adobe.b.a.f.b;
import java.util.Date;
import java.util.Map;

final class a$3
  implements com.adobe.b.a.b
{
  a$3(a parama) {}
  
  public final Object call(Object paramObject)
  {
    if (!a.d(a))
    {
      a.b(a).c(a.a(a));
      return null;
    }
    if (a.h(a) == null)
    {
      a.b(a).c(a.a(a));
      return null;
    }
    Object localObject1 = new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        paramAnonymousObject = (String)((Map)((com.adobe.b.a.a)paramAnonymousObject).b()).get("server_response");
        if ((paramAnonymousObject != null) && (!((String)paramAnonymousObject).equals("")))
        {
          paramAnonymousObject = new b((String)paramAnonymousObject, a.b(a)).a();
          if (paramAnonymousObject != null) {
            a.i(a).a(new com.adobe.b.a.a("net:check_status_complete", paramAnonymousObject));
          }
        }
        for (;;)
        {
          return null;
          a.b(a).c(a.a(a));
          continue;
          a.b(a).c(a.a(a));
        }
      }
    };
    Object localObject2 = new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        a.b(a).c(a.a(a));
        return null;
      }
    };
    paramObject = a.h(a).replaceAll("[^a-zA-Z0-9]+", "-").toLowerCase();
    paramObject = a.j(a) + (String)paramObject + ".xml?r=" + new Date().getTime();
    f.b localb = new f.b((String)paramObject, f.a.a);
    f localf = new f(a.b(a));
    localf.a("success", (com.adobe.b.a.b)localObject1);
    localf.a("error", (com.adobe.b.a.b)localObject2);
    localObject1 = a.b(a);
    localObject2 = a.a(a);
    new StringBuilder("#_onClockCheckStatusTick() - Get new settings from: ").append((String)paramObject);
    ((c)localObject1).a((String)localObject2);
    localf.a(localb);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.e.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */