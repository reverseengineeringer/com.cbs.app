package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a.b.a.d.a.d;
import java.util.HashMap;
import java.util.Map;

final class a$4
  implements com.adobe.b.a.b
{
  a$4(a parama) {}
  
  public final Object call(Object paramObject)
  {
    synchronized (a.c(a))
    {
      a.b(a).a(a.a(a));
      paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
      if (!a.a(a, "_onApiSeekComplete")) {
        return null;
      }
      if (!a.d(a).a((HashMap)paramObject, new String[] { "playhead" })) {
        return null;
      }
    }
    Object localObject;
    if (((Boolean)((Map)paramObject).get("isInAd")).booleanValue())
    {
      if (!a.d(a).a((HashMap)paramObject, new String[] { "adId", "adPosition", "podPosition", "podPlayerName" })) {
        return null;
      }
      localObject = com.adobe.b.b.a.a(a.b.b()) + "_" + ((Map)paramObject).get("podPosition");
      if ((a.j(a) != null) && (a.j(a).b() == localObject) && (Long.valueOf(Long.parseLong(a.j(a).c(), 10)) == ((Map)paramObject).get("adPosition")))
      {
        a.b.a(a.j(a));
        a.b(a, a.j(a).a());
        a.b.a("ad");
      }
    }
    for (;;)
    {
      if (((Boolean)((Map)paramObject).get("isInChapter")).booleanValue())
      {
        if (!a.d(a).a((HashMap)paramObject, new String[] { "chapterPosition", "chapterLength", "chapterOffset" }))
        {
          return null;
          if (a.b.d() != null) {
            break;
          }
          a.b(a, (String)((Map)paramObject).get("adId"));
          com.adobe.b.c.a.b.a.d.a.a locala1 = new com.adobe.b.c.a.b.a.d.a.a();
          locala1.a(a.h(a));
          locala1.d((String)localObject);
          locala1.c((String)((Map)paramObject).get("podPlayerName"));
          locala1.e(String.valueOf(((Map)paramObject).get("podPosition")));
          locala1.b(a.a());
          a.b.a(locala1);
          break;
          a.b.a(null);
          a.b.a("main");
          a.b(a, a.b.b());
          continue;
        }
        if ((a.k(a) != null) && (Long.parseLong(String.valueOf(((Map)paramObject).get("chapterPosition"))) == a.k(a).a())) {
          a.b.a(a.k(a));
        }
      }
    }
    for (;;)
    {
      a.a(a, null);
      a.a(a, null);
      return null;
      if (a.b.e() == null)
      {
        localObject = new d();
        ((d)localObject).a(com.adobe.b.b.a.a(a.b.b()) + "_" + ((Map)paramObject).get("chapterPosition"));
        ((d)localObject).c((String)((Map)paramObject).get("chapterName"));
        ((d)localObject).a(((Double)((Map)paramObject).get("chapterLength")).doubleValue());
        ((d)localObject).a(((Long)((Map)paramObject).get("chapterPosition")).longValue());
        ((d)localObject).b(((Double)((Map)paramObject).get("chapterOffset")).doubleValue());
        ((d)localObject).b(a.a());
        a.b.a((d)localObject);
        continue;
        a.b.a(null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */