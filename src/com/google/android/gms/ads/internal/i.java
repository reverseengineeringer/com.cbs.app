package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.r.a;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.jp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@fs
public final class i
  extends r.a
{
  private final Context a;
  private final q b;
  private final dl c;
  private final bv d;
  private final bw e;
  private final jp<String, by> f;
  private final jp<String, bx> g;
  private final NativeAdOptionsParcel h;
  private final List<String> i;
  private final String j;
  private final VersionInfoParcel k;
  private WeakReference<m> l;
  private Object m = new Object();
  
  i(Context paramContext, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel, q paramq, bv parambv, bw parambw, jp<String, by> paramjp, jp<String, bx> paramjp1, NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    a = paramContext;
    j = paramString;
    c = paramdl;
    k = paramVersionInfoParcel;
    b = paramq;
    e = parambw;
    d = parambv;
    f = paramjp;
    g = paramjp1;
    h = paramNativeAdOptionsParcel;
    i = d();
  }
  
  private List<String> d()
  {
    ArrayList localArrayList = new ArrayList();
    if (e != null) {
      localArrayList.add("1");
    }
    if (d != null) {
      localArrayList.add("2");
    }
    if (f.size() > 0) {
      localArrayList.add("3");
    }
    return localArrayList;
  }
  
  public final String a()
  {
    for (;;)
    {
      synchronized (m)
      {
        if (l != null)
        {
          Object localObject1 = (m)l.get();
          if (localObject1 != null)
          {
            localObject1 = ((m)localObject1).k();
            return (String)localObject1;
          }
        }
        else
        {
          return null;
        }
      }
      Object localObject3 = null;
    }
  }
  
  public final void a(AdRequestParcel paramAdRequestParcel)
  {
    paramAdRequestParcel = new i.1(this, paramAdRequestParcel);
    gw.a.post(paramAdRequestParcel);
  }
  
  public final boolean b()
  {
    for (;;)
    {
      synchronized (m)
      {
        if (l != null)
        {
          m localm = (m)l.get();
          if (localm != null)
          {
            bool = localm.l();
            return bool;
          }
        }
        else
        {
          return false;
        }
      }
      boolean bool = false;
    }
  }
  
  protected final m c()
  {
    return new m(a, AdSizeParcel.a(), j, c, k);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */