package com.urbanairship.analytics;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Build.VERSION;
import com.urbanairship.i;
import com.urbanairship.l;
import com.urbanairship.location.LocationRequestOptions;
import com.urbanairship.p;
import java.util.UUID;

public final class c
{
  private static i a;
  private final a b;
  private final j c;
  private final d d;
  private boolean e;
  private final int f;
  private final com.urbanairship.a g;
  private final Context h;
  private String i;
  private String j;
  
  public c(Context paramContext, l paraml, com.urbanairship.a parama)
  {
    this(paramContext, paraml, parama, new a(r, Build.VERSION.SDK_INT, m));
  }
  
  private c(Context paramContext, l paraml, com.urbanairship.a parama, a parama1)
  {
    d = new d(paraml);
    h = paramContext.getApplicationContext();
    c = new j();
    f = r;
    e = true;
    g = parama;
    e();
    b = parama1;
    b.a(new c.1(this, paramContext));
  }
  
  public static void a(Activity paramActivity)
  {
    p.a(new c.2(paramActivity, System.currentTimeMillis()));
  }
  
  @TargetApi(14)
  public static void a(Application paramApplication)
  {
    if (a == null)
    {
      paramApplication = new c.4(paramApplication);
      a = paramApplication;
      paramApplication.a();
    }
  }
  
  public static void b(Activity paramActivity)
  {
    p.a(new c.3(paramActivity, System.currentTimeMillis()));
  }
  
  public final void a(Location paramLocation, LocationRequestOptions paramLocationRequestOptions, n.a parama)
  {
    int k = 1;
    int m = -1;
    if (paramLocationRequestOptions == null) {
      k = -1;
    }
    for (;;)
    {
      a(new n(paramLocation, parama, k, m, a()));
      return;
      int n = (int)paramLocationRequestOptions.c();
      m = n;
      if (paramLocationRequestOptions.a() != 1)
      {
        k = 2;
        m = n;
      }
    }
  }
  
  public final void a(h paramh)
  {
    if ((paramh == null) || (!paramh.c())) {
      new StringBuilder("Analytics - Invalid event: ").append(paramh);
    }
    String str;
    Intent localIntent;
    do
    {
      return;
      if ((g.m) && (d.g())) {}
      for (int k = 1; k == 0; k = 0)
      {
        new StringBuilder("Analytics disabled - ignoring event: ").append(paramh.a());
        return;
      }
      str = paramh.a(i);
      if (str == null) {
        com.urbanairship.j.a("Analytics - Failed to add event " + paramh.a());
      }
      localIntent = new Intent(h, EventService.class).setAction("com.urbanairship.analytics.ADD").putExtra("EXTRA_EVENT_TYPE", paramh.a()).putExtra("EXTRA_EVENT_ID", paramh.d()).putExtra("EXTRA_EVENT_DATA", str).putExtra("EXTRA_EVENT_TIME_STAMP", paramh.e()).putExtra("EXTRA_EVENT_SESSION_ID", i);
    } while (h.startService(localIntent) == null);
    new StringBuilder("Analytics - Added event: ").append(paramh.a()).append(": ").append(str);
  }
  
  public final void a(String paramString)
  {
    j = paramString;
  }
  
  public final boolean a()
  {
    return !e;
  }
  
  public final String b()
  {
    return j;
  }
  
  final j c()
  {
    return c;
  }
  
  final d d()
  {
    return d;
  }
  
  final void e()
  {
    i = UUID.randomUUID().toString();
    new StringBuilder("Analytics - New session: ").append(i);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.analytics.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */