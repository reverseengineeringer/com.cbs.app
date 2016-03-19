package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public final class ak<V>
  extends FutureTask<V>
{
  private final WeakReference<Callable<V>> a = null;
  private final WeakReference<Runnable> b;
  
  public ak(Runnable paramRunnable, V paramV)
  {
    super(paramRunnable, paramV);
    b = new WeakReference(paramRunnable);
  }
  
  public final Runnable a()
  {
    return (Runnable)b.get();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */