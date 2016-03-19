package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.a.a.a;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.List;

@fs
public final class fl
  extends fg
{
  protected dh g;
  private dl h;
  private db i;
  private dd j;
  private final bg k;
  
  fl(Context paramContext, gk.a parama, dl paramdl, fh.a parama1, bg parambg)
  {
    super(paramContext, parama, parama1);
    h = paramdl;
    j = c;
    k = parambg;
  }
  
  protected final gk a(int paramInt)
  {
    Object localObject = e.a;
    AdRequestParcel localAdRequestParcel = c;
    List localList1 = f.d;
    List localList2 = f.f;
    List localList3 = f.j;
    int m = f.l;
    long l = f.k;
    String str2 = i;
    boolean bool = f.h;
    dm localdm;
    label107:
    String str1;
    label123:
    dd localdd;
    if (g != null)
    {
      localObject = g.b;
      if (g == null) {
        break label235;
      }
      localdm = g.c;
      if (g == null) {
        break label241;
      }
      str1 = g.d;
      localdd = j;
      if (g == null) {
        break label251;
      }
    }
    label235:
    label241:
    label251:
    for (df localdf = g.e;; localdf = null)
    {
      return new gk(localAdRequestParcel, null, localList1, paramInt, localList2, localList3, m, l, str2, bool, (dc)localObject, localdm, str1, localdd, localdf, f.i, e.d, f.g, e.f, f.n, f.o, e.h, null);
      localObject = null;
      break;
      localdm = null;
      break label107;
      str1 = a.class.getName();
      break label123;
    }
  }
  
  protected final void a(long paramLong)
  {
    synchronized (d)
    {
      Context localContext = b;
      AdRequestInfoParcel localAdRequestInfoParcel = e.a;
      dl localdl = h;
      dd localdd = j;
      boolean bool = f.t;
      at localat = ax.am;
      i = new dj(localContext, localAdRequestInfoParcel, localdl, localdd, bool, paramLong, ((Long)o.n().a(localat)).longValue(), k);
      g = i.a(j.a);
      switch (g.a)
      {
      default: 
        throw new fg.a("Unexpected mediation result: " + g.a, 0);
      }
    }
    throw new fg.a("No fill from any mediation ad networks.", 3);
  }
  
  public final void b()
  {
    synchronized (d)
    {
      super.b();
      if (i != null) {
        i.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */