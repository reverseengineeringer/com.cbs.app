package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.HashMap;

final class f$23
  implements b
{
  f$23(f paramf) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    if (localHashMap.containsKey("pod")) {
      return localHashMap.get("pod");
    }
    localHashMap.put("pod", f.a(a).getAdBreakInfo());
    c localc = f.g(a);
    String str = f.f(a);
    new StringBuilder("Data from delegate > AdBreakInfo: ").append(((HashMap)paramObject).get("pod"));
    localc.b(str);
    return localHashMap.get("pod");
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */