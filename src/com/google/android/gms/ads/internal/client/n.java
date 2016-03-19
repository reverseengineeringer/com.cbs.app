package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.reward.client.b;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.ca;
import com.google.android.gms.internal.fs;

@fs
public final class n
{
  private static final Object a = new Object();
  private static n b;
  private final a c = new a();
  private final h d = new h();
  private final o e = new o();
  private final c f = new c();
  private final ca g = new ca();
  private final b h = new b();
  
  static
  {
    n localn = new n();
    synchronized (a)
    {
      b = localn;
      return;
    }
  }
  
  public static a a()
  {
    return ec;
  }
  
  public static h b()
  {
    return ed;
  }
  
  public static o c()
  {
    return ee;
  }
  
  public static ca d()
  {
    return eg;
  }
  
  private static n e()
  {
    synchronized (a)
    {
      n localn = b;
      return localn;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */