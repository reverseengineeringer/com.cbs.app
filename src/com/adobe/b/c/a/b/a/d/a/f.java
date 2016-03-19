package com.adobe.b.c.a.b.a.d.a;

public final class f
  extends e
{
  private String a;
  private long b;
  private double c;
  private String d;
  private String e;
  private long f;
  private long g;
  
  public f(f paramf)
  {
    super("event");
    if (paramf != null)
    {
      a(a);
      a(b);
      a(c);
      b(d);
      c(e);
      b(f);
      c(g);
      return;
    }
    a = "";
    b = 0L;
    c = 0.0D;
    d = "";
    e = "";
    f = -1L;
    g = 0L;
  }
  
  public final String a()
  {
    return a;
  }
  
  public final void a(double paramDouble)
  {
    c = paramDouble;
    a("playhead", Double.valueOf(paramDouble), null);
  }
  
  public final void a(long paramLong)
  {
    b = paramLong;
    a("duration", Long.valueOf(paramLong), null);
  }
  
  public final void a(String paramString)
  {
    a = paramString;
    a("type", paramString, null);
  }
  
  public final long b()
  {
    return b;
  }
  
  public final void b(long paramLong)
  {
    f = paramLong;
    a("prev_ts", Long.valueOf(paramLong), null);
  }
  
  public final void b(String paramString)
  {
    d = paramString;
    a("id", paramString, null);
  }
  
  public final double c()
  {
    return c;
  }
  
  public final void c(long paramLong)
  {
    g = paramLong;
    a("ts", Long.valueOf(paramLong), null);
  }
  
  public final void c(String paramString)
  {
    e = paramString;
    a("source", paramString, null);
  }
  
  public final long d()
  {
    return g;
  }
  
  public static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */