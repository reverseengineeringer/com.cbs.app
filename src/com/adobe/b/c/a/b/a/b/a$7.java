package com.adobe.b.c.a.b.a.b;

import com.adobe.b.c.a.b.a.d.a.d;
import java.util.HashMap;
import java.util.Map;

final class a$7
  implements com.adobe.b.a.b
{
  a$7(a parama) {}
  
  public final Object call(Object paramObject)
  {
    Map localMap;
    Object localObject;
    synchronized (a.c(a))
    {
      localMap = (Map)((com.adobe.b.a.a)paramObject).b();
      paramObject = a.b(a);
      localObject = a.a(a);
      new StringBuilder("#_onApiChapterStart(name=").append(localMap.get("chapterName")).append(", length=").append(localMap.get("chapterLength")).append(", position=").append(localMap.get("chapterPosition")).append(", chapter_offset=").append(localMap.get("chapterOffset")).append(")");
      ((com.adobe.b.a.c)paramObject).a((String)localObject);
      if (!a.a(a, "_onApiChapterStart")) {
        return null;
      }
      if (!a.d(a).a((HashMap)localMap, new String[] { "playhead", "chapterPosition", "chapterOffset", "chapterLength" })) {
        return null;
      }
    }
    paramObject = new d();
    ((d)paramObject).a(com.adobe.b.b.a.a(a.b.b()) + "_" + localMap.get("chapterPosition"));
    ((d)paramObject).c((String)localMap.get("chapterName"));
    ((d)paramObject).a(((Double)localMap.get("chapterLength")).doubleValue());
    ((d)paramObject).a(((Long)localMap.get("chapterPosition")).longValue());
    ((d)paramObject).b(((Double)localMap.get("chapterOffset")).doubleValue());
    ((d)paramObject).b(a.a());
    a.b.a((d)paramObject);
    a.a(a, localMap);
    if (localMap.get("metaVideo") != null) {}
    for (paramObject = new HashMap((HashMap)localMap.get("metaVideo"));; paramObject = null)
    {
      localObject = paramObject;
      if (localMap.get("metaChapter") != null)
      {
        localObject = (HashMap)localMap.get("metaChapter");
        if (paramObject != null)
        {
          ((HashMap)paramObject).putAll((Map)localObject);
          localObject = paramObject;
        }
      }
      else
      {
        if ((localMap.get("_eventData") == null) || (!(localMap.get("_eventData") instanceof HashMap))) {
          break label538;
        }
      }
      label538:
      for (paramObject = (com.adobe.b.a.b)((HashMap)localMap.get("_eventData")).get("callback");; paramObject = null)
      {
        paramObject = new com.adobe.b.c.a.b.a.d.b.b(a.c(a), "chapter_start", ((Double)localMap.get("playhead")).doubleValue(), localObject, (com.adobe.b.a.b)paramObject);
        ((com.adobe.b.c.a.b.a.d.b.b)paramObject).b().a(null);
        ((com.adobe.b.c.a.b.a.d.b.b)paramObject).b().a("main");
        a.a(a, (com.adobe.b.c.a.b.a.d.b.b)paramObject);
        return null;
        localObject = new HashMap((Map)localObject);
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.b.a.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */