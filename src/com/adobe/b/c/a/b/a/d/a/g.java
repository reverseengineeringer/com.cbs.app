package com.adobe.b.c.a.b.a.d.a;

public final class g
  extends e
{
  public boolean a;
  private long b;
  private double c;
  private long d;
  private long e;
  
  public g()
  {
    this(null);
  }
  
  public g(g paramg)
  {
    super("stream");
    if (paramg != null)
    {
      a(b);
      a(c);
      b(d);
      c(e);
      a = a;
      return;
    }
    b = 0L;
    c = 0.0D;
    d = 0L;
    e = 0L;
    a = false;
  }
  
  public final long a()
  {
    return b;
  }
  
  public final void a(double paramDouble)
  {
    c = paramDouble;
    a("fps", Double.valueOf(paramDouble), null);
  }
  
  public final void a(long paramLong)
  {
    b = paramLong;
    a("bitrate", Long.valueOf(paramLong), null);
  }
  
  public final double b()
  {
    return c;
  }
  
  public final void b(long paramLong)
  {
    d = paramLong;
    a("dropped_frames", Long.valueOf(paramLong), null);
  }
  
  public final long c()
  {
    return d;
  }
  
  public final void c(long paramLong)
  {
    e = paramLong;
    a("startup_time", Long.valueOf(paramLong), null);
  }
  
  public final long d()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */