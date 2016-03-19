package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.HashMap;

final class f$26
  implements b
{
  f$26(f paramf) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    if (localHashMap.containsKey("chapter")) {
      return localHashMap.get("chapter");
    }
    localHashMap.put("chapter", f.a(a).getChapterInfo());
    c localc = f.i(a);
    String str = f.h(a);
    new StringBuilder("Data from delegate > ChapterInfo: ").append(((HashMap)paramObject).get("chapter"));
    localc.b(str);
    return localHashMap.get("chapter");
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.26
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */