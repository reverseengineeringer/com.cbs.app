package com.comscore.c;

import com.comscore.utils.l;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public final class c
{
  com.comscore.a.b a;
  protected AtomicLong b = new AtomicLong(-1L);
  protected AtomicInteger c = new AtomicInteger(0);
  protected AtomicLong d = new AtomicLong(-1L);
  protected AtomicInteger e = new AtomicInteger(0);
  protected AtomicInteger f = new AtomicInteger(0);
  protected Object g = new Object();
  private com.comscore.b.a h = null;
  
  public c(com.comscore.a.b paramb)
  {
    a = paramb;
  }
  
  public final void a()
  {
    if (!a.U()) {}
    do
    {
      for (;;)
      {
        return;
        l locall = a.g();
        if ((locall.a("q_dcc").booleanValue()) && (locall.a("q_dcf").booleanValue())) {
          try
          {
            int i = Integer.parseInt(locall.b("q_dcc"), 10);
            long l = Long.parseLong(locall.b("q_dcf"), 10);
            if (System.currentTimeMillis() >= l)
            {
              e.set(i);
              d.set(l);
              return;
            }
          }
          catch (NumberFormatException localNumberFormatException) {}
        }
      }
    } while (!com.comscore.utils.e.a);
    com.comscore.utils.b.b(this, "Unexpected error parsing storage data: ");
    com.comscore.utils.b.a(localNumberFormatException);
    throw localNumberFormatException;
  }
  
  public final boolean a(b paramb)
  {
    if (!a.U()) {}
    while (paramb == null) {
      return false;
    }
    l locall = a.g();
    long l = System.currentTimeMillis();
    if (l < b.get())
    {
      c.set(0);
      b.set(l);
      e.set(0);
      d.set(l);
      locall.a("q_dcc", Integer.toString(e.get(), 10));
      locall.a("q_dcf", Long.toString(d.get(), 10));
      if ((c.get() >= 20) || (e.get() >= 6000)) {
        break label300;
      }
      c.incrementAndGet();
      e.getAndIncrement();
      locall.a("q_dcc", Integer.toString(e.get(), 10));
    }
    label300:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (a.g() == null)) {
        break label305;
      }
      com.comscore.utils.b.a(this, "Data not sent");
      return false;
      if (l - b.get() > 1000L)
      {
        c.set(0);
        b.set(l);
      }
      if (l - d.get() <= 86400000L) {
        break;
      }
      e.set(0);
      d.set(l);
      locall.a("q_dcc", Integer.toString(e.get(), 10));
      locall.a("q_dcf", Long.toString(d.get(), 10));
      break;
    }
    label305:
    return a.h().a(new e(this, paramb), false);
  }
  
  public final void b(b paramb)
  {
    if (!a.U()) {
      return;
    }
    f.getAndIncrement();
    paramb.a(new a("ns_ap_ec", String.valueOf(f), Boolean.valueOf(false)));
  }
  
  public final void c(b arg1)
  {
    if (!a.U()) {
      return;
    }
    com.comscore.b.a locala;
    synchronized (g)
    {
      if (!(??? instanceof com.comscore.b.a)) {
        break label85;
      }
      locala = (com.comscore.b.a)???;
    }
    synchronized (g)
    {
      if (h == null)
      {
        h = locala;
        h.b();
        return;
        ??? = finally;
        throw ???;
      }
      h.a(locala.a());
    }
    label85:
    if (h != null)
    {
      Iterator localIterator = h.a().iterator();
      while (localIterator.hasNext()) {
        ???.a((a)localIterator.next());
      }
      h = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.c.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */