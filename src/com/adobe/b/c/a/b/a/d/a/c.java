package com.adobe.b.c.a.b.a.d.a;

public final class c
  extends e
{
  private String a;
  private String b;
  private String c;
  private double d;
  private a e;
  private d f;
  
  public c()
  {
    this(null);
  }
  
  public c(c paramc)
  {
    super("asset");
    if (paramc != null)
    {
      a(a);
      b(b);
      c(c);
      a(d);
      if (e != null) {
        a(e);
      }
      if (f != null) {
        a(f);
      }
      return;
    }
    a = "";
    b = "";
    c = "";
    d = 0.0D;
    e = null;
    f = null;
  }
  
  public final String a()
  {
    return a;
  }
  
  public final void a(double paramDouble)
  {
    d = paramDouble;
    a("duration", Double.valueOf(paramDouble), null);
  }
  
  public final void a(a parama)
  {
    e = parama;
    a("ad_data", parama, null);
  }
  
  public final void a(d paramd)
  {
    f = paramd;
    a("chapter_data", paramd, null);
  }
  
  public final void a(String paramString)
  {
    a = paramString;
    a("type", paramString, null);
  }
  
  public final String b()
  {
    return b;
  }
  
  public final void b(String paramString)
  {
    b = paramString;
    a("video_id", paramString, null);
  }
  
  public final double c()
  {
    return d;
  }
  
  public final void c(String paramString)
  {
    c = paramString;
    a("publisher", paramString, null);
  }
  
  public final a d()
  {
    return e;
  }
  
  public final d e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */