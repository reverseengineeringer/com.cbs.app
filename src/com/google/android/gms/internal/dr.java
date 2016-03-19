package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.b.a;
import java.util.Date;
import java.util.Set;

@fs
public final class dr
  implements a
{
  private final Date a;
  private final int b;
  private final Set<String> c;
  private final boolean d;
  private final Location e;
  private final int f;
  
  public dr(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2)
  {
    a = paramDate;
    b = paramInt1;
    c = paramSet;
    e = paramLocation;
    d = paramBoolean;
    f = paramInt2;
  }
  
  public final Date a()
  {
    return a;
  }
  
  public final int b()
  {
    return b;
  }
  
  public final Set<String> c()
  {
    return c;
  }
  
  public final Location d()
  {
    return e;
  }
  
  public final int e()
  {
    return f;
  }
  
  public final boolean f()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */