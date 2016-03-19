package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

@fs
public class hm<T>
  implements hl<T>
{
  protected int a = 0;
  protected final BlockingQueue<hm<T>.a> b = new LinkedBlockingQueue();
  protected T c;
  private final Object d = new Object();
  
  public final void a(hl.c<T> paramc, hl.a parama)
  {
    for (;;)
    {
      synchronized (d)
      {
        if (a == 1)
        {
          paramc.a(c);
          return;
        }
        if (a == -1) {
          parama.a();
        }
      }
      if (a == 0) {
        b.add(new hm.a(this, paramc, parama));
      }
    }
  }
  
  public final void a(T paramT)
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    c = paramT;
    a = 1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexta.a(paramT);
    }
    b.clear();
  }
  
  public final void d()
  {
    synchronized (d)
    {
      if (a != 0) {
        throw new UnsupportedOperationException();
      }
    }
    a = -1;
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nextb.a();
    }
    b.clear();
  }
  
  public final int e()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */