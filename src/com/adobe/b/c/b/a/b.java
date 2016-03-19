package com.adobe.b.c.b.a;

import java.util.Date;

final class b
{
  private String a;
  private double b;
  private int c;
  private int d;
  private boolean e;
  private long f;
  private long g;
  
  b(String paramString, double paramDouble, int paramInt)
  {
    b = paramDouble;
    a = paramString;
    e = false;
    c = paramInt;
    f();
  }
  
  private void h()
  {
    g = (f + (b * 1000.0D * (d + 1)));
  }
  
  public final int a()
  {
    return c;
  }
  
  public final void a(int paramInt)
  {
    c = paramInt;
  }
  
  public final void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public final boolean b()
  {
    return e;
  }
  
  public final double c()
  {
    return b;
  }
  
  public final String d()
  {
    return a;
  }
  
  public final int e()
  {
    return d;
  }
  
  public final void f()
  {
    d = 0;
    f = new Date().getTime();
    h();
  }
  
  public final boolean g()
  {
    if (new Date().getTime() > g - c.a / 2.0D)
    {
      d += 1;
      h();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */