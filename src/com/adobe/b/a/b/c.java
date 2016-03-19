package com.adobe.b.a.b;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class c
{
  private final long a = 0L;
  private final ExecutorService b;
  private boolean c = false;
  private boolean d = false;
  private List<b> e = new ArrayList();
  
  public c()
  {
    this(false);
  }
  
  public c(byte paramByte)
  {
    this(true);
  }
  
  private c(boolean paramBoolean)
  {
    c = paramBoolean;
    b = Executors.newSingleThreadExecutor();
  }
  
  private void a(b paramb, com.adobe.b.a.b paramb1)
  {
    try
    {
      if (a != 0L) {
        b.submit(new Runnable()
        {
          public final void run()
          {
            try
            {
              Thread.sleep(c.c(c.this));
              return;
            }
            catch (InterruptedException localInterruptedException) {}
          }
        });
      }
      b.submit(paramb);
      paramb1.call(null);
      return;
    }
    finally {}
  }
  
  private void b()
  {
    if (c) {}
    while (d) {
      return;
    }
    d = true;
    c();
  }
  
  private void c()
  {
    if (e.size() == 0)
    {
      d = false;
      return;
    }
    b localb = (b)e.get(0);
    e.remove(0);
    a(localb, new com.adobe.b.a.b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        if (c.a(c.this)) {
          return null;
        }
        c.b(c.this);
        return null;
      }
    });
  }
  
  public final void a()
  {
    try
    {
      c = false;
      b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(b paramb)
  {
    try
    {
      e.add(paramb);
      b();
      return;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */