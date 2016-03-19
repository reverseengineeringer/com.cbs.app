package com.comscore.utils.b;

import com.comscore.utils.l;
import java.util.concurrent.atomic.AtomicBoolean;

final class c
  implements Runnable
{
  private AtomicBoolean a;
  private AtomicBoolean b;
  private Runnable c;
  private com.comscore.a.b d;
  private long e;
  private long f;
  private long g;
  private boolean h;
  private boolean i;
  
  c(Runnable paramRunnable, com.comscore.a.b paramb, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    c = paramRunnable;
    d = paramb;
    long l2 = System.currentTimeMillis();
    long l1;
    if (paramLong1 > 0L)
    {
      l1 = paramLong1;
      e = (l1 + l2);
      if (paramLong1 <= 0L) {
        break label116;
      }
    }
    label116:
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      f = System.currentTimeMillis();
      h = paramBoolean;
      g = paramLong2;
      a = new AtomicBoolean();
      b = new AtomicBoolean();
      b.set(false);
      a.set(false);
      return;
      l1 = 0L;
      break;
    }
  }
  
  final long a()
  {
    long l = e - System.currentTimeMillis();
    if (l > 0L) {
      return l;
    }
    return 0L;
  }
  
  final long b()
  {
    return e;
  }
  
  final boolean c()
  {
    return h;
  }
  
  final long d()
  {
    return g;
  }
  
  final Runnable e()
  {
    return c;
  }
  
  public final void run()
  {
    a.set(true);
    try
    {
      c.run();
      a.set(false);
      b.set(true);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.comscore.utils.b.a(getClass(), "Unexpected error running asynchronous task: ");
        com.comscore.utils.b.a(localException);
        d.g().c("exception_ocurrences");
        d.V();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */