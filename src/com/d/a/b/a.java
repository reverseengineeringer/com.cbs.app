package com.d.a.b;

import android.content.Context;
import com.d.a.b.a.g;
import com.d.a.c.e;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public final class a
{
  public static com.d.a.a.a.b a(Context paramContext, com.d.a.a.a.b.a parama, long paramLong, int paramInt)
  {
    Object localObject1 = e.a(paramContext, false);
    Object localObject2 = new File((File)localObject1, "uil-images");
    if ((((File)localObject2).exists()) || (((File)localObject2).mkdir())) {
      localObject1 = localObject2;
    }
    File localFile;
    if ((paramLong > 0L) || (paramInt > 0))
    {
      localObject2 = e.a(paramContext, true);
      localFile = new File((File)localObject2, "uil-images");
      if ((localFile.exists()) || (localFile.mkdir())) {
        break label130;
      }
    }
    for (;;)
    {
      try
      {
        localObject2 = new com.d.a.a.a.a.a.b((File)localObject2, (File)localObject1, parama, paramLong, paramInt);
        return (com.d.a.a.a.b)localObject2;
      }
      catch (IOException localIOException)
      {
        com.d.a.c.c.a(localIOException);
      }
      return new com.d.a.a.a.a.c(e.a(paramContext, true), (File)localObject1, parama);
      label130:
      Object localObject3 = localFile;
    }
  }
  
  public static Executor a()
  {
    return Executors.newCachedThreadPool(a(5, "uil-pool-d-"));
  }
  
  public static Executor a(int paramInt1, int paramInt2, g paramg)
  {
    int i;
    if (paramg == g.b)
    {
      i = 1;
      if (i == 0) {
        break label52;
      }
    }
    label52:
    for (paramg = new com.d.a.b.a.a.c();; paramg = new LinkedBlockingQueue())
    {
      paramg = (BlockingQueue)paramg;
      return new ThreadPoolExecutor(paramInt1, paramInt1, 0L, TimeUnit.MILLISECONDS, paramg, a(paramInt2, "uil-pool-"));
      i = 0;
      break;
    }
  }
  
  private static ThreadFactory a(int paramInt, String paramString)
  {
    return new a(paramInt, paramString);
  }
  
  private static final class a
    implements ThreadFactory
  {
    private static final AtomicInteger a = new AtomicInteger(1);
    private final ThreadGroup b;
    private final AtomicInteger c = new AtomicInteger(1);
    private final String d;
    private final int e;
    
    a(int paramInt, String paramString)
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
}

/* Location:
 * Qualified Name:     com.d.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */