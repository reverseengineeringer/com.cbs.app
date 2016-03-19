package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.HashMap;

final class f$1
  implements b
{
  f$1(f paramf) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    if (localHashMap.containsKey("video")) {
      return ((HashMap)paramObject).get("video");
    }
    localHashMap.put("video", f.a(a).getVideoInfo());
    paramObject = f.c(a);
    String str = f.b(a);
    new StringBuilder("Data from delegate > VideoInfo: ").append(localHashMap.get("video"));
    ((c)paramObject).b(str);
    return localHashMap.get("video");
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */