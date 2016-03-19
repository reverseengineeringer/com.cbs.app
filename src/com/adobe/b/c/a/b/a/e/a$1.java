package com.adobe.b.c.a.b.a.e;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

final class a$1
  implements b
{
  a$1(a parama) {}
  
  public final Object call(Object paramObject)
  {
    paramObject = (Map)((com.adobe.b.a.a)paramObject).b();
    c localc = a.b(a);
    String str = a.a(a);
    new StringBuilder("#_onApiConfig(sb_server=").append(((Map)paramObject).get("tracking_server")).append(", check_status_server=").append(((Map)paramObject).get("check_status_server")).append(", publisher=").append(((Map)paramObject).get("publisher")).append(", quiet_mode=").append(((Map)paramObject).get("quiet_mode")).append(", ssl=").append(((Map)paramObject).get("ssl")).append(")");
    localc.a(str);
    a.a(a, a.a((String)((Map)paramObject).get("tracking_server"), ((Boolean)((Map)paramObject).get("ssl")).booleanValue()));
    a.b(a, a.a((String)((Map)paramObject).get("check_status_server"), ((Boolean)((Map)paramObject).get("ssl")).booleanValue()));
    a.c(a, (String)((Map)paramObject).get("publisher"));
    a.a(a, ((Boolean)((Map)paramObject).get("quiet_mode")).booleanValue());
    a.c(a);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.e.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */