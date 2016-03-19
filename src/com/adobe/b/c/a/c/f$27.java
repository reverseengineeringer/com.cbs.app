package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.HashMap;

final class f$27
  implements b
{
  f$27(f paramf) {}
  
  public final Object call(Object paramObject)
  {
    HashMap localHashMap = (HashMap)paramObject;
    if (localHashMap.containsKey("qos")) {
      return ((HashMap)paramObject).get("qos");
    }
    localHashMap.put("qos", f.a(a).getQoSInfo());
    c localc = f.k(a);
    String str = f.j(a);
    new StringBuilder("Data from delegate > QoSInfo: ").append(((HashMap)paramObject).get("qos"));
    localc.b(str);
    return localHashMap.get("qos");
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.27
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */