package com.adobe.b.c.a.c;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.HashMap;

final class f$12
  implements b
{
  f$12(f paramf) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (HashMap)paramObject;
    if (((HashMap)paramObject).containsKey("ad")) {
      return ((HashMap)paramObject).get("ad");
    }
    ((HashMap)paramObject).put("ad", f.a(a).getAdInfo());
    c localc = f.e(a);
    String str = f.d(a);
    new StringBuilder("Data from delegate > AdInfo: ").append(((HashMap)paramObject).get("ad"));
    localc.b(str);
    return ((HashMap)paramObject).get("ad");
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.c.f.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */