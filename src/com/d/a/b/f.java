package com.d.a.b;

import com.d.a.a.a.b;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

final class f
{
  final e a;
  private Executor b;
  private Executor c;
  private Executor d;
  private final Map<Integer, String> e = Collections.synchronizedMap(new HashMap());
  private final Map<String, ReentrantLock> f = new WeakHashMap();
  private final AtomicBoolean g = new AtomicBoolean(false);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final AtomicBoolean i = new AtomicBoolean(false);
  private final Object j = new Object();
  
  f(e parame)
  {
    a = parame;
    b = g;
    c = h;
    d = a.a();
  }
  
  private void e()
  {
    if ((!a.i) && (((ExecutorService)b).isShutdown())) {
      b = f();
    }
    if ((!a.j) && (((ExecutorService)c).isShutdown())) {
      c = f();
    }
  }
  
  private Executor f()
  {
    return a.a(a.k, a.l, a.m);
  }
  
  final String a(com.d.a.b.e.a parama)
  {
    return (String)e.get(Integer.valueOf(parama.f()));
  }
  
  final AtomicBoolean a()
  {
    return g;
  }
  
  final ReentrantLock a(String paramString)
  {
    ReentrantLock localReentrantLock2 = (ReentrantLock)f.get(paramString);
    ReentrantLock localReentrantLock1 = localReentrantLock2;
    if (localReentrantLock2 == null)
    {
      localReentrantLock1 = new ReentrantLock();
      f.put(paramString, localReentrantLock1);
    }
    return localReentrantLock1;
  }
  
  final void a(com.d.a.b.e.a parama, String paramString)
  {
    e.put(Integer.valueOf(parama.f()), paramString);
  }
  
  final void a(final h paramh)
  {
    d.execute(new Runnable()
    {
      public final void run()
      {
        File localFile = a.o.a(paramha);
        if ((localFile != null) && (localFile.exists())) {}
        for (int i = 1;; i = 0)
        {
          f.a(f.this);
          if (i == 0) {
            break;
          }
          f.b(f.this).execute(paramh);
          return;
        }
        f.c(f.this).execute(paramh);
      }
    });
  }
  
  final void a(i parami)
  {
    e();
    c.execute(parami);
  }
  
  final void a(Runnable paramRunnable)
  {
    d.execute(paramRunnable);
  }
  
  final Object b()
  {
    return j;
  }
  
  final void b(com.d.a.b.e.a parama)
  {
    e.remove(Integer.valueOf(parama.f()));
  }
  
  final boolean c()
  {
    return h.get();
  }
  
  final boolean d()
  {
    return i.get();
  }
}

/* Location:
 * Qualified Name:     com.d.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */