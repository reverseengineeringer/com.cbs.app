package com.adobe.b.c.a.b.a.a;

import com.adobe.b.a.a.f;
import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

public final class a
  extends e
{
  private final b g = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (Double)((Map)((com.adobe.b.a.a)paramAnonymousObject).b()).get("check_status_interval");
      c localc = b;
      String str = a;
      new StringBuilder("#_onCheckStatusComplete(interval=").append(paramAnonymousObject).append(")");
      localc.a(str);
      if (paramAnonymousObject != null)
      {
        if (((Double)paramAnonymousObject).equals(c))
        {
          b.a(a);
          return null;
        }
        if (((Double)paramAnonymousObject).doubleValue() > 600.0D)
        {
          localc = b;
          str = a;
          new StringBuilder("#_onCheckStatusComplete() - Interval value too large: ").append(paramAnonymousObject);
          localc.c(str);
          a(600.0D);
          return null;
        }
        localc = b;
        str = a;
        new StringBuilder("#_onCheckStatusComplete() - Interval changed to: ").append(paramAnonymousObject);
        localc.a(str);
        a(((Double)paramAnonymousObject).doubleValue());
        return null;
      }
      b.c(a);
      a(60.0D);
      return null;
    }
  };
  private final b h = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      b.a(a);
      d.a(new com.adobe.b.a.a("clock:check_status.tick", null));
      return null;
    }
  };
  
  public a(f paramf, com.adobe.b.a.b.a parama, c paramc)
  {
    super(paramf, parama, "check_status", 60.0D, paramc);
    d.a("clock:check_status.get_settings", h, this);
    d.a("net:check_status_complete", g, this);
    d.b("check_status_interval", new b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return c;
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */