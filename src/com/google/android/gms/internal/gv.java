package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

@fs
public final class gv
{
  private static final ExecutorService a = Executors.newFixedThreadPool(10, a("Default"));
  private static final ExecutorService b = Executors.newFixedThreadPool(5, a("Loader"));
  
  public static hj<Void> a(int paramInt, Runnable paramRunnable)
  {
    if (paramInt == 1) {
      return a(b, new gv.1(paramRunnable));
    }
    return a(a, new gv.2(paramRunnable));
  }
  
  public static hj<Void> a(Runnable paramRunnable)
  {
    return a(0, paramRunnable);
  }
  
  public static <T> hj<T> a(Callable<T> paramCallable)
  {
    return a(a, paramCallable);
  }
  
  private static <T> hj<T> a(ExecutorService paramExecutorService, Callable<T> paramCallable)
  {
    hg localhg = new hg();
    try
    {
      localhg.b(new gv.4(localhg, paramExecutorService.submit(new gv.3(localhg, paramCallable))));
      return localhg;
    }
    catch (RejectedExecutionException paramExecutorService)
    {
      b.a(5);
      localhg.cancel(true);
    }
    return localhg;
  }
  
  private static ThreadFactory a(String paramString)
  {
    return new gv.5(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */