package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.a.c;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ThinAdSizeParcel;
import com.google.android.gms.ads.internal.client.i;
import com.google.android.gms.ads.internal.client.p;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.u.a;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.a.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.be;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.fh.a;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.go;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import java.util.HashSet;

@fs
public abstract class a
  extends u.a
  implements com.google.android.gms.ads.internal.client.a, j, a.a, ce, fh.a, go
{
  protected bg a;
  protected be b;
  protected be c;
  boolean d = false;
  protected final n e;
  protected final zzq f;
  protected transient AdRequestParcel g;
  protected final com.google.android.gms.internal.w h;
  protected final d i;
  
  a(zzq paramzzq, n paramn, d paramd)
  {
    f = paramzzq;
    e = new n(this);
    i = paramd;
    o.e().b(f.c);
    o.h().a(f.c, f.e);
    h = o.h().i();
  }
  
  private static long a(String paramString)
  {
    int m = paramString.indexOf("ufe");
    int k = paramString.indexOf(',', m);
    int j = k;
    if (k == -1) {
      j = paramString.length();
    }
    try
    {
      long l = Long.parseLong(paramString.substring(m + 4, j));
      return l;
    }
    catch (IndexOutOfBoundsException paramString)
    {
      b.a(5);
      return -1L;
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        b.a(5);
      }
    }
  }
  
  private boolean r()
  {
    b.a(4);
    if (f.n == null) {
      return false;
    }
    try
    {
      f.n.b();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
    return false;
  }
  
  public final c a()
  {
    z.b("getAdFrame must be called on the main UI thread.");
    return com.google.android.gms.a.d.a(f.f);
  }
  
  protected final void a(View paramView)
  {
    f.f.addView(paramView, o.g().d());
  }
  
  public final void a(AdSizeParcel paramAdSizeParcel)
  {
    z.b("setAdSize must be called on the main UI thread.");
    f.i = paramAdSizeParcel;
    if ((f.j != null) && (f.j.b != null) && (f.C == 0)) {
      f.j.b.a(paramAdSizeParcel);
    }
    if (f.f == null) {
      return;
    }
    if (f.f.getChildCount() > 1) {
      f.f.removeView(f.f.getNextView());
    }
    f.f.setMinimumWidth(g);
    f.f.setMinimumHeight(d);
    f.f.requestLayout();
  }
  
  public final void a(p paramp)
  {
    z.b("setAdListener must be called on the main UI thread.");
    f.m = paramp;
  }
  
  public final void a(q paramq)
  {
    z.b("setAdListener must be called on the main UI thread.");
    f.n = paramq;
  }
  
  public final void a(com.google.android.gms.ads.internal.client.w paramw)
  {
    z.b("setAppEventListener must be called on the main UI thread.");
    f.o = paramw;
  }
  
  public final void a(x paramx)
  {
    z.b("setCorrelationIdProvider must be called on the main UI thread");
    f.p = paramx;
  }
  
  public void a(bk parambk)
  {
    throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
  }
  
  public void a(es parames)
  {
    throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
  }
  
  public void a(ew paramew, String paramString)
  {
    throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
  }
  
  public final void a(gk.a parama)
  {
    if ((b.n != -1L) && (!TextUtils.isEmpty(b.z)))
    {
      long l = a(b.z);
      if (l != -1L)
      {
        be localbe = a.a(l + b.n);
        a.a(localbe, new String[] { "stc" });
      }
    }
    a.a(b.z);
    a.a(b, new String[] { "arf" });
    c = a.a();
    a.a("gqi", b.A);
    f.g = null;
    f.k = parama;
    a(parama, a);
  }
  
  protected abstract void a(gk.a parama, bg parambg);
  
  public final void a(String paramString1, String paramString2)
  {
    if (f.o != null) {}
    try
    {
      f.o.a(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      b.a(5);
    }
  }
  
  public final void a(HashSet<gl> paramHashSet)
  {
    f.a(paramHashSet);
  }
  
  public void a(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
  }
  
  protected final boolean a(int paramInt)
  {
    new StringBuilder("Failed to load ad: ").append(paramInt);
    b.a(5);
    d = false;
    if (f.n == null) {
      return false;
    }
    try
    {
      f.n.a(paramInt);
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
    return false;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    z.b("loadAd must be called on the main UI thread.");
    AdRequestParcel localAdRequestParcel = paramAdRequestParcel;
    if (e.g(f.c))
    {
      localAdRequestParcel = paramAdRequestParcel;
      if (k != null) {
        localAdRequestParcel = new i(paramAdRequestParcel).b().a();
      }
    }
    if (d)
    {
      if (g != null) {
        b.a(5);
      }
      g = localAdRequestParcel;
      return false;
    }
    b.a(4);
    d = true;
    paramAdRequestParcel = ax.G;
    a = new bg(((Boolean)o.n().a(paramAdRequestParcel)).booleanValue(), "load_ad", f.i.b);
    b = new be(-1L, null, null);
    c = new be(-1L, null, null);
    b = a.a();
    if (!f)
    {
      paramAdRequestParcel = new StringBuilder("Use AdRequest.Builder.addTestDevice(\"");
      com.google.android.gms.ads.internal.client.n.a();
      paramAdRequestParcel.append(com.google.android.gms.ads.internal.util.client.a.a(f.c)).append("\") to get test ads on this device.");
      b.a(4);
    }
    return a(localAdRequestParcel, a);
  }
  
  protected abstract boolean a(AdRequestParcel paramAdRequestParcel, bg parambg);
  
  boolean a(gk paramgk)
  {
    return false;
  }
  
  protected abstract boolean a(gk paramgk1, gk paramgk2);
  
  public final void b()
  {
    z.b("destroy must be called on the main UI thread.");
    e.a();
    h.b(f.j);
    zzq localzzq = f;
    if (f != null) {
      f.b();
    }
    n = null;
    o = null;
    r = null;
    q = null;
    x = null;
    p = null;
    localzzq.a(false);
    if (f != null) {
      f.removeAllViews();
    }
    localzzq.b();
    localzzq.c();
    j = null;
  }
  
  public void b(gk paramgk)
  {
    a.a(c, new String[] { "awr" });
    f.h = null;
    if ((d != -2) && (d != 3)) {
      o.h().a(f.a());
    }
    if (d == -1) {
      d = false;
    }
    do
    {
      return;
      if (a(paramgk)) {
        b.a(3);
      }
      if (d != -2)
      {
        a(d);
        return;
      }
      if (f.A == null) {
        f.A = new gp(f.b);
      }
      h.a(f.j);
    } while (!a(f.j, paramgk));
    f.j = paramgk;
    paramgk = f;
    l.a(j.t);
    l.b(j.u);
    l.a(i.e);
    l.b(j.k);
    bg localbg = a;
    if (f.j.a())
    {
      paramgk = "1";
      label257:
      localbg.a("is_mraid", paramgk);
      localbg = a;
      if (!f.j.k) {
        break label432;
      }
      paramgk = "1";
      label287:
      localbg.a("is_mediation", paramgk);
      if ((f.j.b != null) && (f.j.b.k() != null))
      {
        localbg = a;
        if (!f.j.b.k().c()) {
          break label439;
        }
      }
    }
    label432:
    label439:
    for (paramgk = "1";; paramgk = "0")
    {
      localbg.a("is_video", paramgk);
      a.a(b, new String[] { "ttc" });
      if (o.h().d() != null) {
        o.h().d().a(a);
      }
      if (!f.d()) {
        break;
      }
      p();
      return;
      paramgk = "0";
      break label257;
      paramgk = "0";
      break label287;
    }
  }
  
  protected boolean b(AdRequestParcel paramAdRequestParcel)
  {
    paramAdRequestParcel = f.f.getParent();
    return ((paramAdRequestParcel instanceof View)) && (((View)paramAdRequestParcel).isShown()) && (o.e().a());
  }
  
  public final void c(AdRequestParcel paramAdRequestParcel)
  {
    if (b(paramAdRequestParcel))
    {
      a(paramAdRequestParcel);
      return;
    }
    b.a(4);
    e.a(paramAdRequestParcel);
  }
  
  protected final void c(gk paramgk)
  {
    if (paramgk == null) {
      b.a(5);
    }
    do
    {
      return;
      b.a(3);
      f.l.a();
    } while (e == null);
    o.e();
    gw.a(f.c, f.e.b, e);
  }
  
  public final boolean c()
  {
    z.b("isLoaded must be called on the main UI thread.");
    return (f.g == null) && (f.h == null) && (f.j != null);
  }
  
  public void d()
  {
    z.b("pause must be called on the main UI thread.");
  }
  
  public void e()
  {
    if (f.j == null) {
      b.a(5);
    }
    do
    {
      return;
      b.a(3);
      f.l.b();
      if (f.j.c != null)
      {
        o.e();
        gw.a(f.c, f.e.b, f.j.c);
      }
    } while (f.m == null);
    try
    {
      f.m.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public void f()
  {
    z.b("resume must be called on the main UI thread.");
  }
  
  public final void h()
  {
    z.b("stopLoading must be called on the main UI thread.");
    d = false;
    f.a(true);
  }
  
  public final void i()
  {
    z.b("recordManualImpression must be called on the main UI thread.");
    if (f.j == null) {
      b.a(5);
    }
    do
    {
      return;
      b.a(3);
    } while (f.j.f == null);
    o.e();
    gw.a(f.c, f.e.b, f.j.f);
  }
  
  public final AdSizeParcel j()
  {
    z.b("getAdSize must be called on the main UI thread.");
    if (f.i == null) {
      return null;
    }
    return new ThinAdSizeParcel(f.i);
  }
  
  public final boolean l()
  {
    return d;
  }
  
  public final void m()
  {
    r();
  }
  
  protected boolean n()
  {
    b.a(2);
    if (f.n == null) {
      return false;
    }
    try
    {
      f.n.a();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
    return false;
  }
  
  protected final boolean o()
  {
    b.a(4);
    if (f.n == null) {
      return false;
    }
    try
    {
      f.n.d();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
    return false;
  }
  
  protected boolean p()
  {
    b.a(4);
    d = false;
    if (f.n == null) {
      return false;
    }
    try
    {
      f.n.c();
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
    return false;
  }
  
  protected void q()
  {
    c(f.j);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */