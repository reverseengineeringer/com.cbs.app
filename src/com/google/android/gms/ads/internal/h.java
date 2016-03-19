package com.google.android.gms.ads.internal;

import android.content.Context;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.i;
import com.google.android.gms.internal.l;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@fs
final class h
  implements i, Runnable
{
  CountDownLatch a = new CountDownLatch(1);
  private final List<Object[]> b = new Vector();
  private final AtomicReference<i> c = new AtomicReference();
  private zzq d;
  
  public h(zzq paramzzq)
  {
    d = paramzzq;
    n.a();
    if (a.b())
    {
      gv.a(this);
      return;
    }
    run();
  }
  
  private boolean a()
  {
    try
    {
      a.await();
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      b.a(5);
    }
    return false;
  }
  
  private static Context b(Context paramContext)
  {
    Object localObject = ax.m;
    if (!((Boolean)o.n().a((at)localObject)).booleanValue()) {}
    do
    {
      return paramContext;
      localObject = paramContext.getApplicationContext();
    } while (localObject == null);
    return (Context)localObject;
  }
  
  private void b()
  {
    if (b.isEmpty()) {
      return;
    }
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object[] arrayOfObject = (Object[])localIterator.next();
      if (arrayOfObject.length == 1) {
        ((i)c.get()).a((MotionEvent)arrayOfObject[0]);
      } else if (arrayOfObject.length == 3) {
        ((i)c.get()).a(((Integer)arrayOfObject[0]).intValue(), ((Integer)arrayOfObject[1]).intValue(), ((Integer)arrayOfObject[2]).intValue());
      }
    }
    b.clear();
  }
  
  public final String a(Context paramContext)
  {
    if (a())
    {
      i locali = (i)c.get();
      if (locali != null)
      {
        b();
        return locali.a(b(paramContext));
      }
    }
    return "";
  }
  
  public final String a(Context paramContext, String paramString)
  {
    if (a())
    {
      i locali = (i)c.get();
      if (locali != null)
      {
        b();
        return locali.a(b(paramContext), paramString);
      }
    }
    return "";
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    i locali = (i)c.get();
    if (locali != null)
    {
      b();
      locali.a(paramInt1, paramInt2, paramInt3);
      return;
    }
    b.add(new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) });
  }
  
  public final void a(MotionEvent paramMotionEvent)
  {
    i locali = (i)c.get();
    if (locali != null)
    {
      b();
      locali.a(paramMotionEvent);
      return;
    }
    b.add(new Object[] { paramMotionEvent });
  }
  
  public final void run()
  {
    label102:
    for (;;)
    {
      try
      {
        Object localObject1 = ax.y;
        if (((Boolean)o.n().a((at)localObject1)).booleanValue()) {
          if (d.e.e)
          {
            break label102;
            localObject1 = l.a(d.e.b, b(d.c), bool);
            c.set(localObject1);
          }
          else
          {
            bool = false;
            continue;
          }
        }
        boolean bool = true;
      }
      finally
      {
        a.countDown();
        d = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */