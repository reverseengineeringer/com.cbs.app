package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.m;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.c;
import org.json.JSONObject;

public final class i
  implements a.e
{
  private final Object a = new Object();
  private final m b = new i.1(this);
  private final i.d c = new i.d(this);
  private i.b d;
  private i.c e;
  
  public i()
  {
    b.a(c);
  }
  
  public final long a()
  {
    synchronized (a)
    {
      long l = b.f();
      return l;
    }
  }
  
  public final c<i.a> a(b paramb)
  {
    return paramb.b(new i.8(this, paramb, paramb));
  }
  
  public final c<i.a> a(b paramb, double paramDouble)
  {
    if ((Double.isInfinite(paramDouble)) || (Double.isNaN(paramDouble))) {
      throw new IllegalArgumentException("Volume cannot be " + paramDouble);
    }
    return paramb.b(new i.7(this, paramb, paramb, paramDouble, null));
  }
  
  public final c<i.a> a(b paramb, long paramLong, int paramInt)
  {
    return paramb.b(new i.6(this, paramb, paramb, paramLong, paramInt, null));
  }
  
  public final c<i.a> a(b paramb, d paramd, boolean paramBoolean, long paramLong, long[] paramArrayOfLong, JSONObject paramJSONObject)
  {
    return paramb.b(new i.2(this, paramb, paramb, paramd, paramBoolean, paramLong, null, paramJSONObject));
  }
  
  public final c<i.a> a(b paramb, j paramj)
  {
    if (paramj == null) {
      throw new IllegalArgumentException("trackStyle cannot be null");
    }
    return paramb.b(new i.9(this, paramb, paramb, paramj));
  }
  
  public final c<i.a> a(b paramb, JSONObject paramJSONObject)
  {
    return paramb.b(new i.3(this, paramb, paramb, null));
  }
  
  public final c<i.a> a(b paramb, long[] paramArrayOfLong)
  {
    if (paramArrayOfLong == null) {
      throw new IllegalArgumentException("trackIds cannot be null");
    }
    return paramb.b(new i.5(this, paramb, paramb, paramArrayOfLong));
  }
  
  public final void a(i.b paramb)
  {
    d = paramb;
  }
  
  public final void a(i.c paramc)
  {
    e = paramc;
  }
  
  public final void a(String paramString)
  {
    b.a(paramString);
  }
  
  public final long b()
  {
    for (;;)
    {
      synchronized (a)
      {
        d locald = b.h();
        if (locald != null)
        {
          l = locald.e();
          return l;
        }
      }
      long l = 0L;
    }
  }
  
  public final c<i.a> b(b paramb, JSONObject paramJSONObject)
  {
    return paramb.b(new i.4(this, paramb, paramb, null));
  }
  
  public final g c()
  {
    synchronized (a)
    {
      g localg = b.g();
      return localg;
    }
  }
  
  public final d d()
  {
    synchronized (a)
    {
      d locald = b.h();
      return locald;
    }
  }
  
  public final String e()
  {
    return b.d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */