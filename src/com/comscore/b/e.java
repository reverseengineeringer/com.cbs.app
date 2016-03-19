package com.comscore.b;

import com.comscore.a.b;
import com.comscore.utils.b.a;
import com.comscore.utils.i;
import com.comscore.utils.l;
import java.util.HashMap;

public final class e
  implements Runnable
{
  protected final long a = 86400000L;
  protected long b = -1L;
  protected long c = a;
  private b d;
  private boolean e = false;
  private boolean f = false;
  
  public e(b paramb)
  {
    d = paramb;
  }
  
  private static long a(l paraml)
  {
    long l2 = 0L;
    paraml = paraml.b("lastMeasurementProcessedTimestamp");
    long l1 = l2;
    if (paraml != null)
    {
      l1 = l2;
      if (paraml.length() <= 0) {}
    }
    try
    {
      l1 = Long.parseLong(paraml);
      return l1;
    }
    catch (Exception paraml) {}
    return 0L;
  }
  
  private void a(boolean paramBoolean)
  {
    if (!d.U()) {}
    i locali;
    long l1;
    long l2;
    do
    {
      do
      {
        return;
      } while (!d.C());
      locali = d.f();
      l1 = a(d.g());
      l2 = System.currentTimeMillis() - l1;
      new StringBuilder("processKeepAlive(").append(paramBoolean).append(") timeSinceLastTransmission=").append(System.currentTimeMillis() - l2).append(" currentTimeout=").append(c);
    } while ((l1 == 0L) || (l2 <= c - 1000L));
    if (!paramBoolean) {
      d.a(d.f, new HashMap(), true);
    }
    for (;;)
    {
      d.g().a("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
      return;
      locali.a(d.f, null);
    }
  }
  
  public final void a()
  {
    a(a);
  }
  
  public final void a(int paramInt)
  {
    if (!d.U()) {}
    do
    {
      do
      {
        return;
        c();
        e = true;
        new StringBuilder("start(").append(paramInt).append(")");
      } while (!d.C());
      long l = System.currentTimeMillis();
      if (b < l) {
        b = (l + paramInt);
      }
    } while (!d.U());
    d.h().a(this, b - System.currentTimeMillis(), true, a);
    f = true;
  }
  
  public final void a(long paramLong)
  {
    if (!d.U()) {}
    do
    {
      return;
      c();
      b = (System.currentTimeMillis() + paramLong);
      c = paramLong;
    } while (!e);
    a(0);
  }
  
  public final void b()
  {
    e = false;
    c();
    a(true);
  }
  
  public final void c()
  {
    d.h().b(this);
    f = false;
  }
  
  public final void run()
  {
    if (!d.U()) {}
    while (!f) {
      return;
    }
    a(false);
  }
}

/* Location:
 * Qualified Name:     com.comscore.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */