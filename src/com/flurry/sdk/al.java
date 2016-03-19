package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;

public class al<T extends bu>
{
  private static final String a = al.class.getSimpleName();
  private final ad<Object, T> b = new ad();
  private final HashMap<T, Object> c = new HashMap();
  private final HashMap<T, Future<?>> d = new HashMap();
  private final ThreadPoolExecutor e;
  
  public al(String paramString, TimeUnit paramTimeUnit, BlockingQueue<Runnable> paramBlockingQueue)
  {
    e = new ThreadPoolExecutor(0, 5, 5000L, paramTimeUnit, paramBlockingQueue)
    {
      protected final void afterExecute(Runnable arg1, final Throwable paramAnonymousThrowable)
      {
        super.afterExecute(???, paramAnonymousThrowable);
        paramAnonymousThrowable = al.a(???);
        if (paramAnonymousThrowable == null) {
          return;
        }
        synchronized (al.a(al.this))
        {
          al.a(al.this).remove(paramAnonymousThrowable);
          al.a(al.this, paramAnonymousThrowable);
          new bt()
          {
            public final void a() {}
          }.run();
          return;
        }
      }
      
      protected final void beforeExecute(final Thread paramAnonymousThread, Runnable paramAnonymousRunnable)
      {
        super.beforeExecute(paramAnonymousThread, paramAnonymousRunnable);
        paramAnonymousThread = al.a(paramAnonymousRunnable);
        if (paramAnonymousThread == null) {
          return;
        }
        new bt()
        {
          public final void a() {}
        }.run();
      }
      
      protected final <V> RunnableFuture<V> newTaskFor(Runnable paramAnonymousRunnable, V arg2)
      {
        ak localak = new ak(paramAnonymousRunnable, ???);
        synchronized (al.a(al.this))
        {
          al.a(al.this).put((bu)paramAnonymousRunnable, localak);
          return localak;
        }
      }
      
      protected final <V> RunnableFuture<V> newTaskFor(Callable<V> paramAnonymousCallable)
      {
        throw new UnsupportedOperationException("Callable not supported");
      }
    };
    e.setRejectedExecutionHandler(new ThreadPoolExecutor.DiscardPolicy()
    {
      public final void rejectedExecution(Runnable arg1, final ThreadPoolExecutor paramAnonymousThreadPoolExecutor)
      {
        super.rejectedExecution(???, paramAnonymousThreadPoolExecutor);
        paramAnonymousThreadPoolExecutor = al.a(???);
        if (paramAnonymousThreadPoolExecutor == null) {
          return;
        }
        synchronized (al.a(al.this))
        {
          al.a(al.this).remove(paramAnonymousThreadPoolExecutor);
          al.a(al.this, paramAnonymousThreadPoolExecutor);
          new bt()
          {
            public final void a() {}
          }.run();
          return;
        }
      }
    });
    paramString = new bl(paramString);
    e.setThreadFactory(paramString);
  }
  
  private void a(T paramT)
  {
    try
    {
      c(c.get(paramT), paramT);
      return;
    }
    finally
    {
      paramT = finally;
      throw paramT;
    }
  }
  
  private void b(Object paramObject, T paramT)
  {
    try
    {
      b.a(paramObject, paramT);
      c.put(paramT, paramObject);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  private void c(Object paramObject, T paramT)
  {
    try
    {
      b.b(paramObject, paramT);
      c.remove(paramT);
      return;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  /* Error */
  public final void a(Object paramObject, T paramT)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnonnull +6 -> 9
    //   6: aload_0
    //   7: monitorexit
    //   8: return
    //   9: aload_0
    //   10: aload_1
    //   11: aload_2
    //   12: invokespecial 142	com/flurry/sdk/al:b	(Ljava/lang/Object;Lcom/flurry/sdk/bu;)V
    //   15: aload_0
    //   16: getfield 61	com/flurry/sdk/al:e	Ljava/util/concurrent/ThreadPoolExecutor;
    //   19: aload_2
    //   20: invokevirtual 146	java/util/concurrent/ThreadPoolExecutor:submit	(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    //   23: pop
    //   24: goto -18 -> 6
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	al
    //   0	32	1	paramObject	Object
    //   0	32	2	paramT	T
    // Exception table:
    //   from	to	target	type
    //   9	24	27	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */