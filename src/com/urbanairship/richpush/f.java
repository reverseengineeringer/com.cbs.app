package com.urbanairship.richpush;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.b.b;
import com.urbanairship.d.h;
import com.urbanairship.json.JsonValue;
import com.urbanairship.l;
import com.urbanairship.p;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

final class f
  extends BaseIntentService.a
{
  private final p a;
  private final e b;
  private final b c;
  
  f(Context paramContext, l paraml)
  {
    this(paramContext, paraml, new b(), p.a());
  }
  
  private f(Context paramContext, l paraml, b paramb, p paramp)
  {
    super(paramContext, paraml);
    c = paramb;
    a = paramp;
    b = paramp.n().b();
  }
  
  private boolean c()
  {
    String str = null;
    Object localObject2 = a.m().t();
    if (h.a((String)localObject2)) {
      return false;
    }
    Object localObject1 = RichPushUpdateService.a("api/user/", new Object[0]);
    if (localObject1 == null) {
      return false;
    }
    Object localObject3 = new HashMap();
    ((Map)localObject3).put(d(), Arrays.asList(new String[] { localObject2 }));
    localObject2 = JsonValue.a(localObject3, JsonValue.a).toString();
    localObject2 = b.a("POST", (URL)localObject1).a(a.l().a(), a.l().b()).b((String)localObject2, "application/json").c("Accept", "application/vnd.urbanairship+json; version=3;").b();
    if ((localObject2 == null) || (((com.urbanairship.b.c)localObject2).a() != 201))
    {
      new StringBuilder("UserServiceDelegate - Rich Push user creation failed: ").append(localObject2);
      return false;
    }
    for (;;)
    {
      try
      {
        localObject3 = JsonValue.b(((com.urbanairship.b.c)localObject2).b()).f();
        if (localObject3 == null) {
          break label286;
        }
        localObject1 = ((com.urbanairship.json.c)localObject3).b("user_id").a();
        str = ((com.urbanairship.json.c)localObject3).b("password").a();
        if ((h.a((String)localObject1)) || (h.a(str)))
        {
          com.urbanairship.j.a("UserServiceDelegate - Rich Push user creation failed: " + localObject2);
          return false;
        }
      }
      catch (com.urbanairship.json.a locala)
      {
        com.urbanairship.j.a("UserServiceDelegate - Unable to parse Rich Push user response: " + localObject2);
        return false;
      }
      b().b("com.urbanairship.user.LAST_UPDATE_TIME", System.currentTimeMillis());
      b().c("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME");
      b.a((String)localObject1, locala);
      return true;
      label286:
      localObject1 = null;
    }
  }
  
  private String d()
  {
    switch (a.u())
    {
    default: 
      return "android_channels";
    }
    return "amazon_channels";
  }
  
  protected final void a(Intent paramIntent)
  {
    boolean bool2 = false;
    if (!"com.urbanairship.richpush.USER_UPDATE".equals(paramIntent.getAction())) {}
    long l1;
    long l2;
    do
    {
      return;
      if (!paramIntent.getBooleanExtra("com.urbanairship.richpush.EXTRA_FORCEFULLY", false)) {
        break;
      }
      l1 = b().a("com.urbanairship.user.LAST_UPDATE_TIME", 0L);
      l2 = System.currentTimeMillis();
    } while ((l1 <= l2) && (l1 + 86400000L >= l2));
    boolean bool1;
    if (!e.a()) {
      bool1 = c();
    }
    for (;;)
    {
      RichPushUpdateService.a(paramIntent, bool1);
      return;
      Object localObject3 = a.m().t();
      bool1 = bool2;
      if (!h.a((String)localObject3))
      {
        Object localObject1 = RichPushUpdateService.a("api/user/%s/", new Object[] { b.b() });
        bool1 = bool2;
        if (localObject1 != null)
        {
          Object localObject2 = new HashMap();
          ((Map)localObject2).put("add", Arrays.asList(new String[] { localObject3 }));
          localObject3 = new HashMap();
          ((Map)localObject3).put(d(), localObject2);
          localObject2 = JsonValue.a(localObject3, JsonValue.a).toString();
          localObject1 = b.a("POST", (URL)localObject1).a(b.b(), b.c()).b((String)localObject2, "application/json").c("Accept", "application/vnd.urbanairship+json; version=3;").b();
          new StringBuilder("UserServiceDelegate - Update Rich Push user response: ").append(localObject1);
          if ((localObject1 != null) && (((com.urbanairship.b.c)localObject1).a() == 200))
          {
            b().b("com.urbanairship.user.LAST_UPDATE_TIME", System.currentTimeMillis());
            bool1 = true;
          }
          else
          {
            b().b("com.urbanairship.user.LAST_UPDATE_TIME", 0);
            bool1 = bool2;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */