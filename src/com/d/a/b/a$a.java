package com.d.a.b;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class a$a
  implements ThreadFactory
{
  private static final AtomicInteger a = new AtomicInteger(1);
  private final ThreadGroup b;
  private final AtomicInteger c = new AtomicInteger(1);
  private final String d;
  private final int e;
  
  a$a(int paramInt, String paramString)
  {
    e = paramInt;
    b = Thread.currentThread().getThreadGroup();
    d = (paramString + a.getAndIncrement() + "-thread-");
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(b, paramRunnable, d + c.getAndIncrement(), 0L);
    if (paramRunnable.isDaemon()) {
      paramRunnable.setDaemon(false);
    }
    paramRunnable.setPriority(e);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */