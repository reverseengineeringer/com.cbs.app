package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.analytics.EventService;
import com.urbanairship.d.f;
import com.urbanairship.d.h;
import com.urbanairship.json.JsonValue;
import com.urbanairship.l;
import com.urbanairship.p;
import com.urbanairship.richpush.RichPushManager;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class d
  extends BaseIntentService.a
{
  private static boolean a = false;
  private static boolean b = false;
  private final p c;
  private final j d;
  private final k e;
  private final a f;
  
  public d(Context paramContext, l paraml)
  {
    this(paramContext, paraml, new a(), p.a());
  }
  
  private d(Context paramContext, l paraml, a parama, p paramp)
  {
    super(paramContext, paraml);
    f = parama;
    c = paramp;
    d = paramp.m();
    e = paramp.m().f();
  }
  
  private void a(b paramb)
  {
    b().a("com.urbanairship.push.LAST_REGISTRATION_PAYLOAD", paramb);
    b().b("com.urbanairship.push.LAST_REGISTRATION_TIME", System.currentTimeMillis());
  }
  
  private void a(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.urbanairship.push.CHANNEL_UPDATED").putExtra("com.urbanairship.push.EXTRA_CHANNEL_ID", d.t()).addCategory(p.b()).setPackage(p.b());
    if (!paramBoolean) {
      localIntent.putExtra("com.urbanairship.push.EXTRA_ERROR", true);
    }
    a().sendBroadcast(localIntent, p.c());
  }
  
  private URL c()
  {
    String str = d.u();
    if (!h.a(str)) {
      try
      {
        URL localURL = new URL(str);
        return localURL;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        com.urbanairship.j.a("Channel location from preferences was invalid: " + str, localMalformedURLException);
      }
    }
    return null;
  }
  
  private b d()
  {
    Object localObject1 = b().a("com.urbanairship.push.LAST_REGISTRATION_PAYLOAD");
    com.urbanairship.json.c localc1;
    b.a locala1;
    try
    {
      localc1 = JsonValue.b((String)localObject1).f();
      if ((localc1 == null) || (localc1.b())) {
        break label311;
      }
      locala1 = new b.a();
      com.urbanairship.json.c localc2 = localc1.c("channel").f();
      if (localc2 != null)
      {
        locala1.a(localc2.c("opt_in").a(false)).b(localc2.c("background").a(false)).b(localc2.c("device_type").a()).c(localc2.c("push_address").a()).a(localc2.c("alias").a()).d(localc2.c("user_id").a()).e(localc2.c("apid").a());
        if (!localc2.c("tags").m()) {
          break label306;
        }
        localObject1 = new HashSet();
        Iterator localIterator = localc2.b("tags").e().iterator();
        while (localIterator.hasNext())
        {
          JsonValue localJsonValue = (JsonValue)localIterator.next();
          if (localJsonValue.h()) {
            ((Set)localObject1).add(localJsonValue.a());
          }
        }
        locala1.a(localc2.c("set_tags").a(false), locala);
      }
    }
    catch (com.urbanairship.json.a locala)
    {
      com.urbanairship.j.a("ChannelServiceDelegate - Failed to parse payload from JSON.", locala);
      return null;
    }
    for (;;)
    {
      Object localObject2 = localc1.c("identity_hints").f();
      if (localObject2 != null) {
        locala1.d(((com.urbanairship.json.c)localObject2).c("user_id").a()).e(((com.urbanairship.json.c)localObject2).c("apid").a());
      }
      localObject2 = locala1.a();
      return (b)localObject2;
      label306:
      localObject2 = null;
    }
    label311:
    return null;
  }
  
  protected final void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    default: 
      switch (i)
      {
      }
      break;
    }
    label194:
    label515:
    b localb;
    label1049:
    label1172:
    do
    {
      for (;;)
      {
        return;
        if (!str.equals("com.urbanairship.push.ACTION_START_REGISTRATION")) {
          break;
        }
        i = 0;
        break;
        if (!str.equals("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION")) {
          break;
        }
        i = 1;
        break;
        if (!str.equals("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED")) {
          break;
        }
        i = 2;
        break;
        if (!str.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION")) {
          break;
        }
        i = 3;
        break;
        if (!b)
        {
          b = true;
          switch (c.u())
          {
          default: 
            i = 0;
            if (i == 0) {
              break label515;
            }
            if (eversionCode != e.l())
            {
              new StringBuilder("ChannelServiceDelegate - Version code changed to ").append(eversionCode).append(". Push re-registration required.");
              i = 1;
            }
            break;
          }
          for (;;)
          {
            if (i != 0)
            {
              a = true;
              paramIntent = new Intent(a(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION");
              a().startService(paramIntent);
              return;
              if (!c.l().a("GCM")) {
                break;
              }
              i = 1;
              break label194;
              if (!c.l().a("ADM")) {
                break;
              }
              i = 1;
              break label194;
              if (!j.a(a()).equals(e.m()))
              {
                i = 1;
              }
              else
              {
                switch (c.u())
                {
                }
                for (;;)
                {
                  i = 0;
                  break;
                  if (h.a(d.m()))
                  {
                    i = 1;
                    break;
                  }
                  if (h.a(d.w()))
                  {
                    i = 1;
                    break;
                  }
                  paramIntent = c.l().d();
                  if (!e.r().equals(paramIntent))
                  {
                    i = 1;
                    break;
                  }
                  new StringBuilder("ChannelServiceDelegate - GCM already registered with ID: ").append(d.m());
                  continue;
                  if (h.a(d.n()))
                  {
                    i = 1;
                    break;
                  }
                  new StringBuilder("ChannelServiceDelegate - ADM already registered with ID: ").append(d.n());
                }
              }
            }
          }
          paramIntent = new Intent(a(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
          a().startService(paramIntent);
          return;
          a = false;
          switch (c.u())
          {
          default: 
            com.urbanairship.j.a("Unknown platform type. Unable to register for push.");
          }
          while (!a)
          {
            paramIntent = new Intent(a(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
            a().startService(paramIntent);
            return;
            if (paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH", false))
            {
              d.e(null);
              paramIntent.removeExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH");
            }
            if (!com.urbanairship.google.a.b())
            {
              com.urbanairship.j.a("GCM is unavailable. Unable to register for push notifications. If using the modular Google Play Services dependencies, make sure the application includes the com.google.android.gms:play-services-gcm dependency.");
            }
            else
            {
              try
              {
                if (e.a()) {
                  continue;
                }
                com.urbanairship.j.a("GCM registration failed.");
              }
              catch (IOException localIOException)
              {
                com.urbanairship.j.a("GCM registration failed, will retry. GCM error: " + localIOException.getMessage());
                a = true;
                b(paramIntent);
              }
              continue;
              if (com.urbanairship.a.a.b())
              {
                com.urbanairship.a.a.a(a());
                a = true;
              }
              else
              {
                com.urbanairship.j.a("ADM is not supported on this device.");
              }
            }
          }
          if ((c.u() != 1) || (!com.urbanairship.a.a.a()))
          {
            com.urbanairship.j.a("Received intent from invalid transport acting as ADM.");
            return;
          }
          paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
          if (paramIntent == null)
          {
            com.urbanairship.j.a("ChannelServiceDelegate - Received ADM message missing original intent.");
            return;
          }
          if (paramIntent.hasExtra("error")) {
            com.urbanairship.j.a("ADM error occurred: " + paramIntent.getStringExtra("error"));
          }
          for (;;)
          {
            a = false;
            paramIntent = new Intent(a(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
            a().startService(paramIntent);
            return;
            paramIntent = paramIntent.getStringExtra("registration_id");
            if (paramIntent != null) {
              d.d(paramIntent);
            }
          }
          if (!a)
          {
            localb = d.i();
            Object localObject2 = d.t();
            localObject1 = c();
            if ((localObject1 == null) || (h.a((String)localObject2))) {
              break label1172;
            }
            localObject2 = d();
            long l3 = System.currentTimeMillis();
            long l2 = b().a("com.urbanairship.push.LAST_REGISTRATION_TIME", 0L);
            long l1 = l2;
            if (l2 > System.currentTimeMillis())
            {
              b().b("com.urbanairship.push.LAST_REGISTRATION_TIME", 0);
              l1 = 0L;
            }
            if ((!localb.equals(localObject2)) || (l3 - l1 >= 86400000L)) {}
            for (i = 1; i != 0; i = 0)
            {
              localObject1 = f.a((URL)localObject1, localb);
              if ((localObject1 != null) && (!f.b(((c)localObject1).a()))) {
                break label1049;
              }
              com.urbanairship.j.a("Channel registration failed, will retry.");
              b(paramIntent);
              return;
            }
          }
        }
      }
      if (f.a(((c)localObject1).a()))
      {
        new StringBuilder("Channel registration succeeded with status: ").append(((c)localObject1).a());
        a(localb);
        a(true);
        return;
      }
      if (((c)localObject1).a() == 409)
      {
        d.a(null, null);
        paramIntent = new Intent(a(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
        a().startService(paramIntent);
        return;
      }
      com.urbanairship.j.a("Channel registration failed with status: " + ((c)localObject1).a());
      a(false);
      return;
    } while (d.r());
    Object localObject1 = f.a(localb);
    if ((localObject1 == null) || (f.b(((c)localObject1).a())))
    {
      com.urbanairship.j.a("Channel registration failed, will retry.");
      b(paramIntent);
      return;
    }
    if ((((c)localObject1).a() == 200) || (((c)localObject1).a() == 201))
    {
      if ((!h.a(((c)localObject1).c())) && (!h.a(((c)localObject1).b())))
      {
        new StringBuilder("Channel creation succeeded with status: ").append(((c)localObject1).a()).append(" channel ID: ").append(((c)localObject1).b());
        d.a(((c)localObject1).b(), ((c)localObject1).c());
        a(localb);
        a(true);
        if ((((c)localObject1).a() == 200) && (c.l().o)) {
          d.k().c();
        }
        g.d();
        j.j();
        j.v();
        c.n().a(true);
        paramIntent = new Intent(a(), EventService.class).setAction("com.urbanairship.analytics.SEND");
        a().startService(paramIntent);
        return;
      }
      com.urbanairship.j.a("Failed to register with channel ID: " + ((c)localObject1).b() + " channel location: " + ((c)localObject1).c());
      a(false);
      return;
    }
    com.urbanairship.j.a("Channel registration failed with status: " + ((c)localObject1).a());
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */