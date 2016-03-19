package com.flurry.sdk;

import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

public final class bw
{
  private static bw a;
  private final Thread.UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
  private final Map<Thread.UncaughtExceptionHandler, Void> c = new WeakHashMap();
  
  private bw()
  {
    Thread.setDefaultUncaughtExceptionHandler(new a((byte)0));
  }
  
  public static bw a()
  {
    try
    {
      if (a == null) {
        a = new bw();
      }
      bw localbw = a;
      return localbw;
    }
    finally {}
  }
  
  private Set<Thread.UncaughtExceptionHandler> b()
  {
    synchronized (c)
    {
      Set localSet = c.keySet();
      return localSet;
    }
  }
  
  public final void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    synchronized (c)
    {
      c.put(paramUncaughtExceptionHandler, null);
      return;
    }
  }
  
  final class a
    implements Thread.UncaughtExceptionHandler
  {
    private a() {}
    
    public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
    {
      bw.a(bw.this, paramThread, paramThrowable);
      bw.b(bw.this, paramThread, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */