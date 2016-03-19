package com.adobe.b.c.a.b.a.e;

import com.adobe.b.a.c;
import com.adobe.b.a.f;
import com.adobe.b.a.f.a;
import com.adobe.b.a.f.b;
import java.util.HashMap;
import java.util.Map;

final class a$2
  implements com.adobe.b.a.b
{
  a$2(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
    if (!a.d(a)) {
      a.b(a).c(a.a(a));
    }
    final Object localObject1;
    com.adobe.b.a.b local2;
    do
    {
      return null;
      paramObject = (com.adobe.b.c.a.b.a.d.b.a)((Map)paramObject).get("report");
      localObject1 = a.e(a).a((com.adobe.b.c.a.b.a.d.b.a)paramObject);
      paramObject = new com.adobe.b.a.b()
      {
        public final Object call(Object paramAnonymousObject)
        {
          a.b(a).c(a.a(a));
          if ((localObject1 != null) && (localObject1.get("callback") != null)) {
            ((com.adobe.b.a.b)localObject1.get("callback")).call(null);
          }
          return null;
        }
      };
      local2 = new com.adobe.b.a.b()
      {
        public final Object call(Object paramAnonymousObject)
        {
          if ((localObject1 != null) && (localObject1.get("callback") != null)) {
            ((com.adobe.b.a.b)localObject1.get("callback")).call(null);
          }
          return null;
        }
      };
      localObject2 = a.f(a) + "/?" + ((HashMap)localObject1).get("serializedOutput");
      localObject1 = new f.b((String)localObject2, f.a.a);
      c localc = a.b(a);
      String str = a.a(a);
      new StringBuilder("_onFilterReportAvailable() > ").append((String)localObject2);
      localc.b(str);
    } while (a.g(a));
    Object localObject2 = new f(a.b(a));
    ((f)localObject2).a("success", local2);
    ((f)localObject2).a("error", (com.adobe.b.a.b)paramObject);
    ((f)localObject2).a((f.b)localObject1);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.e.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */