package com.google.android.gms.internal;

@fs
public final class df
  extends dn.a
{
  private final Object a = new Object();
  private dh.a b;
  private de c;
  
  public final void a()
  {
    synchronized (a)
    {
      if (c != null) {
        c.s();
      }
      return;
    }
  }
  
  public final void a(int paramInt)
  {
    for (;;)
    {
      synchronized (a)
      {
        if (b != null)
        {
          if (paramInt == 3)
          {
            paramInt = 1;
            b.a(paramInt);
            b = null;
          }
        }
        else {
          return;
        }
      }
      paramInt = 2;
    }
  }
  
  public final void a(de paramde)
  {
    synchronized (a)
    {
      c = paramde;
      return;
    }
  }
  
  public final void a(dh.a parama)
  {
    synchronized (a)
    {
      b = parama;
      return;
    }
  }
  
  public final void a(do paramdo)
  {
    synchronized (a)
    {
      if (b != null)
      {
        b.a(paramdo);
        b = null;
        return;
      }
      if (c != null) {
        c.w();
      }
      return;
    }
  }
  
  public final void b()
  {
    synchronized (a)
    {
      if (c != null) {
        c.t();
      }
      return;
    }
  }
  
  public final void c()
  {
    synchronized (a)
    {
      if (c != null) {
        c.u();
      }
      return;
    }
  }
  
  public final void d()
  {
    synchronized (a)
    {
      if (c != null) {
        c.v();
      }
      return;
    }
  }
  
  public final void e()
  {
    synchronized (a)
    {
      if (b != null)
      {
        b.a(0);
        b = null;
        return;
      }
      if (c != null) {
        c.w();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */