package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@fs
public final class ah
{
  private final Object a = new Object();
  private int b;
  private List<ag> c = new LinkedList();
  
  public final ag a()
  {
    Object localObject1 = null;
    label146:
    label149:
    for (;;)
    {
      synchronized (a)
      {
        if (c.size() == 0)
        {
          b.a(3);
          return null;
        }
        if (c.size() >= 2)
        {
          int i = Integer.MIN_VALUE;
          Iterator localIterator = c.iterator();
          if (localIterator.hasNext())
          {
            ag localag2 = (ag)localIterator.next();
            int j = localag2.g();
            if (j <= i) {
              break label146;
            }
            localObject1 = localag2;
            i = j;
            break label149;
          }
          c.remove(localObject1);
          return (ag)localObject1;
        }
      }
      ag localag1 = (ag)c.get(0);
      localag1.c();
      return localag1;
    }
  }
  
  public final boolean a(ag paramag)
  {
    synchronized (a)
    {
      return c.contains(paramag);
    }
  }
  
  public final boolean b(ag paramag)
  {
    synchronized (a)
    {
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        ag localag = (ag)localIterator.next();
        if ((paramag != localag) && (localag.b().equals(paramag.b())))
        {
          localIterator.remove();
          return true;
        }
      }
      return false;
    }
  }
  
  public final void c(ag paramag)
  {
    synchronized (a)
    {
      if (c.size() >= 10)
      {
        new StringBuilder("Queue is full, current size = ").append(c.size());
        b.a(3);
        c.remove(0);
      }
      int i = b;
      b = (i + 1);
      paramag.a(i);
      c.add(paramag);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */