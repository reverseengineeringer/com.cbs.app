package com.comscore.utils.b;

public final class b
  extends Thread
{
  private boolean a = false;
  private Object b;
  private a c;
  
  b(a parama)
  {
    c = parama;
    b = new Object();
  }
  
  final void a()
  {
    synchronized (b)
    {
      b.notify();
      return;
    }
  }
  
  public final void run()
  {
    for (;;)
    {
      if (!a)
      {
        ??? = c.b();
        if (??? != null)
        {
          ((c)???).run();
          c.a((c)???);
          if (((c)???).c()) {
            c.a(((c)???).e(), ((c)???).d(), ((c)???).c(), ((c)???).d());
          }
        }
        else
        {
          long l = c.a();
          if (l > 0L) {
            try
            {
              synchronized (b)
              {
                b.wait(l);
              }
            }
            catch (InterruptedException localInterruptedException)
            {
              for (;;)
              {
                localInterruptedException.printStackTrace();
              }
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */