package com.google.android.gms.ads.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gw;
import java.lang.ref.WeakReference;

@fs
public final class n
{
  private final n.a a;
  private final Runnable b;
  private AdRequestParcel c;
  private boolean d = false;
  private boolean e = false;
  private long f = 0L;
  
  public n(a parama)
  {
    this(parama, new n.a(gw.a));
  }
  
  private n(a parama, n.a parama1)
  {
    a = parama1;
    b = new n.1(this, new WeakReference(parama));
  }
  
  public final void a()
  {
    d = false;
    a.a(b);
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel)
  {
    a(paramAdRequestParcel, 60000L);
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel, long paramLong)
  {
    if (d) {
      b.a(5);
    }
    do
    {
      return;
      c = paramAdRequestParcel;
      d = true;
      f = paramLong;
    } while (e);
    new StringBuilder("Scheduling ad refresh ").append(paramLong).append(" milliseconds from now.");
    b.a(4);
    a.a(b, paramLong);
  }
  
  public final void b()
  {
    e = true;
    if (d) {
      a.a(b);
    }
  }
  
  public final void c()
  {
    e = false;
    if (d)
    {
      d = false;
      a(c, f);
    }
  }
  
  public final boolean d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */