package com.adobe.b.c.a.b.a.d.a;

public final class d
  extends e
{
  private String a;
  private String b;
  private String c;
  private long d;
  private double e;
  private double f;
  
  public d()
  {
    this(null);
  }
  
  public d(d paramd)
  {
    super("stream");
    if (paramd != null)
    {
      a(a);
      b(b);
      c(c);
      a(d);
      a(e);
      b(f);
      return;
    }
    a = "";
    b = "";
    c = "";
    d = 0L;
    e = 0.0D;
    f = 0.0D;
  }
  
  public final long a()
  {
    return d;
  }
  
  public final void a(double paramDouble)
  {
    e = paramDouble;
    a("chapter_length", Double.valueOf(paramDouble), null);
  }
  
  public final void a(long paramLong)
  {
    d = paramLong;
    a("chapter_pos", Long.valueOf(paramLong), null);
  }
  
  public final void a(String paramString)
  {
    a = paramString;
    a("chapter_id", paramString, null);
  }
  
  public final void b(double paramDouble)
  {
    f = paramDouble;
    a("chapter_offset", Double.valueOf(paramDouble), null);
  }
  
  public final void b(String paramString)
  {
    b = paramString;
    a("chapter_sid", paramString, null);
  }
  
  public final void c(String paramString)
  {
    c = paramString;
    a("chapter_name", paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */