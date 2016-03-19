package com.adobe.b.c.a.b.a.e;

import com.adobe.b.a.c;
import com.adobe.b.a.f;
import com.adobe.b.a.f.a;
import com.adobe.b.a.f.b;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class a
{
  private c a;
  private String b;
  private String c = null;
  private String d = null;
  private String e = null;
  private boolean f = false;
  private boolean g = false;
  private boolean h = false;
  private final com.adobe.b.a.b.a i;
  private final com.adobe.b.c.a.b.a.d.c.b j;
  private final com.adobe.b.a.b k = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
      c localc = a.b(a.this);
      String str = a.a(a.this);
      new StringBuilder("#_onApiConfig(sb_server=").append(((Map)paramAnonymousObject).get("tracking_server")).append(", check_status_server=").append(((Map)paramAnonymousObject).get("check_status_server")).append(", publisher=").append(((Map)paramAnonymousObject).get("publisher")).append(", quiet_mode=").append(((Map)paramAnonymousObject).get("quiet_mode")).append(", ssl=").append(((Map)paramAnonymousObject).get("ssl")).append(")");
      localc.a(str);
      a.a(a.this, a.a((String)((Map)paramAnonymousObject).get("tracking_server"), ((Boolean)((Map)paramAnonymousObject).get("ssl")).booleanValue()));
      a.b(a.this, a.a((String)((Map)paramAnonymousObject).get("check_status_server"), ((Boolean)((Map)paramAnonymousObject).get("ssl")).booleanValue()));
      a.c(a.this, (String)((Map)paramAnonymousObject).get("publisher"));
      a.a(a.this, ((Boolean)((Map)paramAnonymousObject).get("quiet_mode")).booleanValue());
      a.c(a.this);
      return null;
    }
  };
  private final com.adobe.b.a.b l = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (Map)((com.adobe.b.a.a)paramAnonymousObject).b();
      if (!a.d(a.this)) {
        a.b(a.this).c(a.a(a.this));
      }
      final Object localObject1;
      com.adobe.b.a.b local2;
      do
      {
        return null;
        paramAnonymousObject = (com.adobe.b.c.a.b.a.d.b.a)((Map)paramAnonymousObject).get("report");
        localObject1 = a.e(a.this).a((com.adobe.b.c.a.b.a.d.b.a)paramAnonymousObject);
        paramAnonymousObject = new com.adobe.b.a.b()
        {
          public final Object call(Object paramAnonymous2Object)
          {
            a.b(a.this).c(a.a(a.this));
            if ((localObject1 != null) && (localObject1.get("callback") != null)) {
              ((com.adobe.b.a.b)localObject1.get("callback")).call(null);
            }
            return null;
          }
        };
        local2 = new com.adobe.b.a.b()
        {
          public final Object call(Object paramAnonymous2Object)
          {
            if ((localObject1 != null) && (localObject1.get("callback") != null)) {
              ((com.adobe.b.a.b)localObject1.get("callback")).call(null);
            }
            return null;
          }
        };
        localObject2 = a.f(a.this) + "/?" + ((HashMap)localObject1).get("serializedOutput");
        localObject1 = new f.b((String)localObject2, f.a.a);
        c localc = a.b(a.this);
        String str = a.a(a.this);
        new StringBuilder("_onFilterReportAvailable() > ").append((String)localObject2);
        localc.b(str);
      } while (a.g(a.this));
      Object localObject2 = new f(a.b(a.this));
      ((f)localObject2).a("success", local2);
      ((f)localObject2).a("error", (com.adobe.b.a.b)paramAnonymousObject);
      ((f)localObject2).a((f.b)localObject1);
      return null;
    }
  };
  private final com.adobe.b.a.b m = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (!a.d(a.this))
      {
        a.b(a.this).c(a.a(a.this));
        return null;
      }
      if (a.h(a.this) == null)
      {
        a.b(a.this).c(a.a(a.this));
        return null;
      }
      Object localObject1 = new com.adobe.b.a.b()
      {
        public final Object call(Object paramAnonymous2Object)
        {
          paramAnonymous2Object = (String)((Map)((com.adobe.b.a.a)paramAnonymous2Object).b()).get("server_response");
          if ((paramAnonymous2Object != null) && (!((String)paramAnonymous2Object).equals("")))
          {
            paramAnonymous2Object = new b((String)paramAnonymous2Object, a.b(a.this)).a();
            if (paramAnonymous2Object != null) {
              a.i(a.this).a(new com.adobe.b.a.a("net:check_status_complete", paramAnonymous2Object));
            }
          }
          for (;;)
          {
            return null;
            a.b(a.this).c(a.a(a.this));
            continue;
            a.b(a.this).c(a.a(a.this));
          }
        }
      };
      Object localObject2 = new com.adobe.b.a.b()
      {
        public final Object call(Object paramAnonymous2Object)
        {
          a.b(a.this).c(a.a(a.this));
          return null;
        }
      };
      paramAnonymousObject = a.h(a.this).replaceAll("[^a-zA-Z0-9]+", "-").toLowerCase();
      paramAnonymousObject = a.j(a.this) + (String)paramAnonymousObject + ".xml?r=" + new Date().getTime();
      f.b localb = new f.b((String)paramAnonymousObject, f.a.a);
      f localf = new f(a.b(a.this));
      localf.a("success", (com.adobe.b.a.b)localObject1);
      localf.a("error", (com.adobe.b.a.b)localObject2);
      localObject1 = a.b(a.this);
      localObject2 = a.a(a.this);
      new StringBuilder("#_onClockCheckStatusTick() - Get new settings from: ").append((String)paramAnonymousObject);
      ((c)localObject1).a((String)localObject2);
      localf.a(localb);
      return null;
    }
  };
  
  public a(com.adobe.b.a.b.a parama, c paramc)
  {
    if (parama == null) {
      throw new Error("Reference to the channel object cannot be NULL");
    }
    i = parama;
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL");
    }
    a = paramc;
    b = a.class.getSimpleName();
    j = new com.adobe.b.c.a.b.a.d.c.b(a);
    i.a("api:config", k, this);
    i.a("filter:data_available", l, this);
    i.a("clock:check_status.tick", m, this);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */