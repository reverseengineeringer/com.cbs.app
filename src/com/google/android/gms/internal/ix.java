package com.google.android.gms.internal;

import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.internal.t;
import com.google.android.gms.common.internal.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class ix<R extends e>
  extends c<R>
{
  private final Object a = new Object();
  private final CountDownLatch b = new CountDownLatch(1);
  private final ArrayList<Object> c = new ArrayList();
  private f<? super R> d;
  private volatile R e;
  private volatile boolean f;
  private boolean g;
  private boolean h;
  protected final ix.a<R> i;
  private t j;
  private Integer k;
  private volatile jg<R> l;
  
  @Deprecated
  protected ix(Looper paramLooper)
  {
    i = new ix.a(paramLooper);
  }
  
  private boolean a()
  {
    synchronized (a)
    {
      boolean bool = g;
      return bool;
    }
  }
  
  public static void b(e parame)
  {
    if ((parame instanceof d)) {}
    try
    {
      ((d)parame).b();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder("Unable to release ").append(parame);
    }
  }
  
  private void c(R paramR)
  {
    e = paramR;
    j = null;
    b.countDown();
    paramR = e;
    if (d != null)
    {
      i.removeMessages(2);
      if (!g) {
        i.a(d, h());
      }
    }
    paramR = c.iterator();
    while (paramR.hasNext()) {
      paramR.next();
    }
    c.clear();
  }
  
  private R h()
  {
    boolean bool = true;
    synchronized (a)
    {
      if (!f)
      {
        z.a(bool, "Result has already been consumed.");
        z.a(f(), "Result is not ready.");
        e locale = e;
        e = null;
        d = null;
        f = true;
        e();
        return locale;
      }
      bool = false;
    }
  }
  
  protected abstract R a(Status paramStatus);
  
  public final R a(TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((1L <= 0L) || (Looper.myLooper() != Looper.getMainLooper())) {
      bool1 = true;
    }
    for (;;)
    {
      z.a(bool1, "await must not be called on the UI thread when time is greater than zero.");
      if (!f)
      {
        bool1 = true;
        label34:
        z.a(bool1, "Result has already been consumed.");
        if (l != null) {
          break label98;
        }
        bool1 = bool2;
        z.a(bool1, "Cannot await if then() has been called.");
      }
      try
      {
        if (!b.await(1L, paramTimeUnit)) {
          d(Status.d);
        }
        z.a(f(), "Result is not ready.");
        return h();
        bool1 = false;
        continue;
        bool1 = false;
        break label34;
        label98:
        bool1 = false;
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;)
        {
          d(Status.b);
        }
      }
    }
  }
  
  public final void a(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (a)
      {
        if ((h) || (g))
        {
          b(paramR);
          return;
        }
        if (!f())
        {
          bool1 = true;
          z.a(bool1, "Results have already been set");
          if (f) {
            break label83;
          }
          bool1 = bool2;
          z.a(bool1, "Result has already been consumed");
          c(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public final void a(f<? super R> paramf)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!f)
    {
      bool1 = true;
      z.a(bool1, "Result has already been consumed.");
    }
    for (;;)
    {
      synchronized (a)
      {
        if (l != null) {
          break label94;
        }
        bool1 = bool2;
        z.a(bool1, "Cannot set callbacks if then() has been called.");
        if (a()) {
          return;
        }
        if (f())
        {
          i.a(paramf, h());
          return;
        }
      }
      d = paramf;
      continue;
      bool1 = false;
      break;
      label94:
      bool1 = false;
    }
  }
  
  public final Integer b()
  {
    return k;
  }
  
  public final void d(Status paramStatus)
  {
    synchronized (a)
    {
      if (!f())
      {
        a(a(paramStatus));
        h = true;
      }
      return;
    }
  }
  
  protected void e() {}
  
  public final boolean f()
  {
    return b.getCount() == 0L;
  }
  
  public final void g()
  {
    synchronized (a)
    {
      if ((g) || (f)) {
        return;
      }
      t localt = j;
      if (localt == null) {}
    }
    try
    {
      j.a();
      b(e);
      d = null;
      g = true;
      c(a(Status.e));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */