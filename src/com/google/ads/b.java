package com.google.ads;

import com.google.android.gms.ads.d;

@Deprecated
public final class b
{
  public static final b a = new b(-1, -2);
  public static final b b = new b(320, 50);
  public static final b c = new b(300, 250);
  public static final b d = new b(468, 60);
  public static final b e = new b(728, 90);
  public static final b f = new b(160, 600);
  private final d g;
  
  private b(int paramInt1, int paramInt2)
  {
    this(new d(paramInt1, paramInt2));
  }
  
  public b(d paramd)
  {
    g = paramd;
  }
  
  public final int a()
  {
    return g.b();
  }
  
  public final int b()
  {
    return g.a();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof b)) {
      return false;
    }
    paramObject = (b)paramObject;
    return g.equals(g);
  }
  
  public final int hashCode()
  {
    return g.hashCode();
  }
  
  public final String toString()
  {
    return g.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */