package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.b.l;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.b.a;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import java.util.Date;
import java.util.List;
import java.util.Set;

@fs
public final class dw
  implements l
{
  private final Date a;
  private final int b;
  private final Set<String> c;
  private final boolean d;
  private final Location e;
  private final int f;
  private final NativeAdOptionsParcel g;
  private final List<String> h;
  
  public dw(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean, int paramInt2, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList)
  {
    a = paramDate;
    b = paramInt1;
    c = paramSet;
    e = paramLocation;
    d = paramBoolean;
    f = paramInt2;
    g = paramNativeAdOptionsParcel;
    h = paramList;
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
  
  public final b g()
  {
    if (g == null) {
      return null;
    }
    return new b.a().a(g.b).a(g.c).b(g.d).a();
  }
  
  public final boolean h()
  {
    return (h != null) && (h.contains("2"));
  }
  
  public final boolean i()
  {
    return (h != null) && (h.contains("1"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */