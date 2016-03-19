package com.adobe.b.c.a.b.a.a;

import com.adobe.b.a.a.f;
import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.Map;

public final class d
  extends e
{
  private final b g = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (Double)((Map)((com.adobe.b.a.a)paramAnonymousObject).b()).get("reporting_interval");
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
        localc = b;
        str = a;
        new StringBuilder("#_onCheckStatusComplete() > Interval changed to: ").append(paramAnonymousObject);
        localc.a(str);
        a(((Double)paramAnonymousObject).doubleValue());
        return null;
      }
      b.c(a);
      a(10.0D);
      return null;
    }
  };
  
  public d(f paramf, com.adobe.b.a.b.a parama, c paramc)
  {
    super(paramf, parama, "reporting", 10.0D, paramc);
    d.a("net:check_status_complete", g, this);
    d.b("reporting_interval", new b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return c;
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */