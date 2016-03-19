package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.e;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.g;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.dp;
import com.google.android.gms.internal.dq;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.jp;
import java.util.List;

@fs
public final class m
  extends b
{
  public m(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramdl, paramVersionInfoParcel, null);
  }
  
  private void a(d paramd)
  {
    gw.a.post(new m.2(this, paramd));
  }
  
  private void a(e parame)
  {
    gw.a.post(new m.3(this, parame));
  }
  
  public final bx a(String paramString)
  {
    z.b("getOnCustomClickListener must be called on the main UI thread.");
    return (bx)f.u.get(paramString);
  }
  
  public final void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    z.b("setNativeAdOptions must be called on the main UI thread.");
    f.w = paramNativeAdOptionsParcel;
  }
  
  public final void a(bk parambk)
  {
    throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
  }
  
  public final void a(bv parambv)
  {
    z.b("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
    f.s = parambv;
  }
  
  public final void a(bw parambw)
  {
    z.b("setOnContentAdLoadedListener must be called on the main UI thread.");
    f.t = parambw;
  }
  
  public final void a(es parames)
  {
    throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
  }
  
  public final void a(gk.a parama, bg parambg)
  {
    if (d != null) {
      f.i = d;
    }
    if (e != -2)
    {
      gw.a.post(new m.1(this, parama));
      return;
    }
    f.C = 0;
    zzq localzzq = f;
    o.d();
    h = fh.a(f.c, this, parama, f.d, null, j, this, parambg);
    new StringBuilder("AdRenderer: ").append(f.h.getClass().getName());
    com.google.android.gms.ads.internal.util.client.b.a(3);
  }
  
  public final void a(jp<String, by> paramjp)
  {
    z.b("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    f.v = paramjp;
  }
  
  public final void a(List<String> paramList)
  {
    z.b("setNativeTemplates must be called on the main UI thread.");
    f.y = paramList;
  }
  
  protected final boolean a(AdRequestParcel paramAdRequestParcel, gk paramgk, boolean paramBoolean)
  {
    return e.d();
  }
  
  protected final boolean a(gk paramgk1, gk paramgk2)
  {
    a(null);
    if (!f.d()) {
      throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }
    if (k) {}
    for (;;)
    {
      try
      {
        localObject3 = m.h();
        localObject4 = m.i();
        if (localObject3 == null) {
          continue;
        }
        localObject4 = ((dp)localObject3).a();
        localList = ((dp)localObject3).b();
        str = ((dp)localObject3).c();
        if (((dp)localObject3).d() == null) {
          continue;
        }
        localObject1 = ((dp)localObject3).d();
        localObject1 = new d((String)localObject4, localList, str, (bm)localObject1, ((dp)localObject3).e(), ((dp)localObject3).f(), ((dp)localObject3).g(), ((dp)localObject3).h(), null, ((dp)localObject3).l());
        ((d)localObject1).a(new g(f.c, this, f.d, (dp)localObject3));
        a((d)localObject1);
      }
      catch (RemoteException localRemoteException)
      {
        Object localObject3;
        Object localObject4;
        List localList;
        String str;
        Object localObject1;
        com.google.android.gms.ads.internal.util.client.b.a(5);
        continue;
        localObject2 = null;
        continue;
        com.google.android.gms.ads.internal.util.client.b.a(5);
        a(0);
        return false;
      }
      return super.a(paramgk1, paramgk2);
      localObject1 = null;
      continue;
      if (localObject4 != null)
      {
        localObject3 = ((dq)localObject4).a();
        localList = ((dq)localObject4).b();
        str = ((dq)localObject4).c();
        if (((dq)localObject4).d() != null)
        {
          localObject1 = ((dq)localObject4).d();
          localObject1 = new e((String)localObject3, localList, str, (bm)localObject1, ((dq)localObject4).e(), ((dq)localObject4).f(), null, ((dq)localObject4).j());
          ((e)localObject1).a(new g(f.c, this, f.d, (dq)localObject4));
          a((e)localObject1);
          continue;
        }
      }
      Object localObject2 = w;
      if (((localObject2 instanceof e)) && (f.t != null))
      {
        a((e)w);
      }
      else if (((localObject2 instanceof d)) && (f.s != null))
      {
        a((d)w);
      }
      else
      {
        if ((!(localObject2 instanceof f)) || (f.v == null) || (f.v.get(((f)localObject2).k()) == null)) {
          break;
        }
        localObject2 = ((f)localObject2).k();
        gw.a.post(new m.4(this, (String)localObject2, paramgk2));
      }
    }
    com.google.android.gms.ads.internal.util.client.b.a(5);
    a(0);
    return false;
  }
  
  public final void b(jp<String, bx> paramjp)
  {
    z.b("setOnCustomClickListener must be called on the main UI thread.");
    f.u = paramjp;
  }
  
  public final void d()
  {
    throw new IllegalStateException("Native Ad DOES NOT support pause().");
  }
  
  public final void f()
  {
    throw new IllegalStateException("Native Ad DOES NOT support resume().");
  }
  
  public final void g()
  {
    throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
  }
  
  public final void q()
  {
    a(f.j, false);
  }
  
  public final jp<String, by> x()
  {
    z.b("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    return f.v;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */