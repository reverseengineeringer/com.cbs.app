package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class al$1
  extends ThreadPoolExecutor
{
  al$1(al paramal, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue paramBlockingQueue)
  {
    super(0, 5, 5000L, paramTimeUnit, paramBlockingQueue);
  }
  
  protected final void afterExecute(Runnable arg1, final Throwable paramThrowable)
  {
    super.afterExecute(???, paramThrowable);
    paramThrowable = al.a(???);
    if (paramThrowable == null) {
      return;
    }
    synchronized (al.a(a))
    {
      al.a(a).remove(paramThrowable);
      al.a(a, paramThrowable);
      new bt()
      {
        public final void a() {}
      }.run();
      return;
    }
  }
  
  protected final void beforeExecute(final Thread paramThread, Runnable paramRunnable)
  {
    super.beforeExecute(paramThread, paramRunnable);
    paramThread = al.a(paramRunnable);
    if (paramThread == null) {
      return;
    }
    new bt()
    {
      public final void a() {}
    }.run();
  }
  
  protected final <V> RunnableFuture<V> newTaskFor(Runnable paramRunnable, V arg2)
  {
    ak localak = new ak(paramRunnable, ???);
    synchronized (al.a(a))
    {
      al.a(a).put((bu)paramRunnable, localak);
      return localak;
    }
  }
  
  protected final <V> RunnableFuture<V> newTaskFor(Callable<V> paramCallable)
  {
    throw new UnsupportedOperationException("Callable not supported");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.al.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */