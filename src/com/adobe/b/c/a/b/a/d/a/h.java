package com.adobe.b.c.a.b.a.d.a;

public final class h
  extends e
{
  public String a;
  public String b;
  public String c;
  public String d;
  public String e;
  public long f;
  
  public h()
  {
    this(null);
  }
  
  public h(h paramh)
  {
    super("sp");
    if (paramh != null)
    {
      a(a);
      b(b);
      c(c);
      d(d);
      e(e);
      a(f);
      return;
    }
    a = "unknown";
    b = "unknown";
    c = "unknown";
    d = "";
    e = "";
    f = 0L;
  }
  
  public final void a(long paramLong)
  {
    f = paramLong;
    a("hb_api_lvl", Long.valueOf(paramLong), null);
  }
  
  public final void a(String paramString)
  {
    a = paramString;
    a("ovp", paramString, null);
  }
  
  public final void b(String paramString)
  {
    b = paramString;
    a("sdk", paramString, null);
  }
  
  public final void c(String paramString)
  {
    c = paramString;
    a("channel", paramString, null);
  }
  
  public final void d(String paramString)
  {
    d = paramString;
    a("player_name", paramString, null);
  }
  
  public final void e(String paramString)
  {
    e = paramString;
    a("hb_version", paramString, null);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */