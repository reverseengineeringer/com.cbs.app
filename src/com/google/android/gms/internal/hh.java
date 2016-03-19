package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@fs
public final class hh<T>
  implements hj<T>
{
  private final T a;
  private final hk b;
  
  public hh(T paramT)
  {
    a = paramT;
    b = new hk();
    b.a();
  }
  
  public final void a(Runnable paramRunnable)
  {
    b.a(paramRunnable);
  }
  
  public final boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public final T get()
  {
    return (T)a;
  }
  
  public final T get(long paramLong, TimeUnit paramTimeUnit)
  {
    return (T)a;
  }
  
  public final boolean isCancelled()
  {
    return false;
  }
  
  public final boolean isDone()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */