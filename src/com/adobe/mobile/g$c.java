package com.adobe.mobile;

import android.os.Process;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

final class g$c
  implements Runnable
{
  public final void run()
  {
    g localg = g.e();
    Process.setThreadPriority(10);
    HashMap localHashMap = new HashMap();
    localHashMap.put("Accept-Language", am.q());
    localHashMap.put("User-Agent", am.e());
    for (;;)
    {
      g.a locala;
      if ((af.a().m() == ag.a) && (g.f()))
      {
        locala = g.a(localg);
        if (locala != null)
        {
          Object localObject;
          String str;
          if (af.a().i()) {
            if (c - g.b(localg) < 0L)
            {
              long l = g.b(localg) + 1L;
              localObject = "&ts=" + Long.toString(c);
              str = "&ts=" + Long.toString(l);
              a = a.replaceFirst((String)localObject, str);
              am.c("Analytics - Adjusting out of order hit timestamp(%d->%d)", new Object[] { Long.valueOf(c), Long.valueOf(l) });
              c = l;
            }
          }
          do
          {
            str = a;
            localObject = str;
            if (!str.startsWith("ndh")) {
              localObject = str.substring(str.indexOf('?') + 1);
            }
            if (!al.a(g.g() + g.h().nextInt(100000000), (String)localObject, localHashMap)) {
              break label359;
            }
            try
            {
              g.a(localg, b);
              g.a(localg, c);
            }
            catch (a.a locala2)
            {
              for (;;)
              {
                g.e().a(locala2);
              }
            }
          } while (c >= am.p() - 60L);
          try
          {
            g.a(localg, b);
          }
          catch (a.a locala1)
          {
            g.e().a(locala1);
          }
        }
      }
      for (;;)
      {
        g.i();
        return;
        label359:
        am.b("Analytics - Unable to send hit", new Object[0]);
        int i;
        if (af.a().i())
        {
          am.c("Analytics - Network error, imposing internal cooldown(%d seconds)", new Object[] { Long.valueOf(30L) });
          i = 0;
          if (i >= 30L) {
            break;
          }
        }
        try
        {
          if (!g.f()) {
            break;
          }
          Thread.sleep(1000L);
          i += 1;
        }
        catch (Exception localException)
        {
          am.b("Analytics - Background Thread Interrupted(%s)", new Object[] { localException.getMessage() });
        }
        try
        {
          g.a(localg, b);
        }
        catch (a.a locala3)
        {
          g.e().a(locala3);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.g.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */