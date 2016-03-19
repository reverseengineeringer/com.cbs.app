package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fs
public final class dj
  implements db
{
  private final AdRequestInfoParcel a;
  private final dl b;
  private final Context c;
  private final Object d = new Object();
  private final dd e;
  private final boolean f;
  private final long g;
  private final long h;
  private final bg i;
  private boolean j = false;
  private dg k;
  
  public dj(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, dl paramdl, dd paramdd, boolean paramBoolean, long paramLong1, long paramLong2, bg parambg)
  {
    c = paramContext;
    a = paramAdRequestInfoParcel;
    b = paramdl;
    e = paramdd;
    f = paramBoolean;
    g = paramLong1;
    h = paramLong2;
    i = parambg;
  }
  
  public final dh a(List<dc> arg1)
  {
    b.a(3);
    Object localObject = new ArrayList();
    be localbe1 = i.a();
    Iterator localIterator1 = ???.iterator();
    while (localIterator1.hasNext())
    {
      dc localdc = (dc)localIterator1.next();
      new StringBuilder("Trying mediation network: ").append(b);
      b.a(4);
      Iterator localIterator2 = c.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        be localbe2 = i.a();
        synchronized (d)
        {
          if (j)
          {
            localObject = new dh(-1);
            return (dh)localObject;
          }
          k = new dg(c, str, b, e, localdc, a.c, a.d, a.k, f, a.z, a.n);
          ??? = k.a(g, h);
          if (a == 0)
          {
            b.a(3);
            i.a("mediation_network_succeed", str);
            if (!((List)localObject).isEmpty()) {
              i.a("mediation_networks_fail", TextUtils.join(",", (Iterable)localObject));
            }
            i.a(localbe2, new String[] { "mls" });
            i.a(localbe1, new String[] { "ttm" });
            return (dh)???;
          }
        }
        localIterable.add(str);
        i.a(localbe2, new String[] { "mlf" });
        if (c != null) {
          gw.a.post(new dj.1(this, ???));
        }
      }
    }
    if (!localIterable.isEmpty()) {
      i.a("mediation_networks_fail", TextUtils.join(",", localIterable));
    }
    return new dh(1);
  }
  
  public final void a()
  {
    synchronized (d)
    {
      j = true;
      if (k != null) {
        k.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */