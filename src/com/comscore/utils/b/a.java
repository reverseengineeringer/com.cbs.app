package com.comscore.utils.b;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public final class a
{
  com.comscore.a.b a;
  private b b;
  private BlockingQueue<c> c;
  
  public a(com.comscore.a.b paramb)
  {
    a = paramb;
    c = new LinkedBlockingQueue();
    b = new b(this);
    b.start();
  }
  
  final long a()
  {
    Iterator localIterator = c.iterator();
    for (long l = 50000L; localIterator.hasNext(); l = Math.min(l, ((c)localIterator.next()).a())) {}
    return l;
  }
  
  final void a(c paramc)
  {
    c.remove(paramc);
  }
  
  public final boolean a(Runnable paramRunnable)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc.e() == paramRunnable) || (((paramRunnable instanceof c)) && (localc == paramRunnable))) {
        return true;
      }
    }
    return false;
  }
  
  public final boolean a(Runnable paramRunnable, long paramLong)
  {
    return a(paramRunnable, paramLong, false, 0L);
  }
  
  public final boolean a(Runnable paramRunnable, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc != null) && (localc.e() == paramRunnable)) {
        return false;
      }
    }
    c.add(new c(paramRunnable, a, paramLong1, paramBoolean, paramLong2));
    b.a();
    return true;
  }
  
  public final boolean a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!a.U()) {
      return false;
    }
    if (!paramBoolean) {
      try
      {
        paramRunnable.run();
        return true;
      }
      catch (Exception paramRunnable)
      {
        com.comscore.utils.b.a(getClass(), "Unexpected error: ");
        com.comscore.utils.b.a(paramRunnable);
        return true;
      }
    }
    a(paramRunnable, 0L);
    return true;
  }
  
  final c b()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (localc.b() <= System.currentTimeMillis()) {
        return localc;
      }
    }
    return null;
  }
  
  public final void b(Runnable paramRunnable)
  {
    if (paramRunnable == null) {}
    c localc;
    do
    {
      return;
      Iterator localIterator;
      while (!localIterator.hasNext()) {
        localIterator = c.iterator();
      }
      localc = (c)localIterator.next();
    } while (localc.e() != paramRunnable);
    c.remove(localc);
  }
  
  public final void c()
  {
    c.clear();
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */