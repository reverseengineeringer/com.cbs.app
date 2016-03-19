package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.c;
import com.google.android.gms.ads.internal.purchase.g;
import com.google.android.gms.ads.internal.purchase.j;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel.a;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.ag;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.ck;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.dd;
import com.google.android.gms.internal.de;
import com.google.android.gms.internal.df;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.w;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@fs
public abstract class b
  extends a
  implements com.google.android.gms.ads.internal.overlay.f, j, ck, de
{
  protected final dl j;
  protected transient boolean k;
  private final Messenger l;
  
  public b(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel, d paramd)
  {
    this(new zzq(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel), paramdl, paramd);
  }
  
  private b(zzq paramzzq, dl paramdl, d paramd)
  {
    super(paramzzq, null, paramd);
    j = paramdl;
    l = new Messenger(new ep(f.c));
    k = false;
  }
  
  private AdRequestInfoParcel.a a(AdRequestParcel paramAdRequestParcel, Bundle paramBundle)
  {
    ApplicationInfo localApplicationInfo = f.c.getApplicationInfo();
    DisplayMetrics localDisplayMetrics;
    String str1;
    Object localObject;
    String str2;
    long l1;
    Bundle localBundle;
    ArrayList localArrayList;
    PackageInfo localPackageInfo2;
    try
    {
      PackageInfo localPackageInfo1 = f.c.getPackageManager().getPackageInfo(packageName, 0);
      localDisplayMetrics = f.c.getResources().getDisplayMetrics();
      str1 = null;
      localObject = str1;
      if (f.f != null)
      {
        localObject = str1;
        if (f.f.getParent() != null)
        {
          localObject = new int[2];
          f.f.getLocationOnScreen((int[])localObject);
          int n = localObject[0];
          int i1 = localObject[1];
          int i2 = f.f.getWidth();
          int i3 = f.f.getHeight();
          int m = 0;
          i = m;
          if (f.f.isShown())
          {
            i = m;
            if (n + i2 > 0)
            {
              i = m;
              if (i1 + i3 > 0)
              {
                i = m;
                if (n <= widthPixels)
                {
                  i = m;
                  if (i1 <= heightPixels) {
                    i = 1;
                  }
                }
              }
            }
          }
          localObject = new Bundle(5);
          ((Bundle)localObject).putInt("x", n);
          ((Bundle)localObject).putInt("y", i1);
          ((Bundle)localObject).putInt("width", i2);
          ((Bundle)localObject).putInt("height", i3);
          ((Bundle)localObject).putInt("visible", i);
        }
      }
      str1 = o.h().b();
      f.l = new gl(str1, f.b);
      f.l.a(paramAdRequestParcel);
      o.e();
      str2 = gw.a(f.c, f.f, f.i);
      l2 = 0L;
      l1 = l2;
      if (f.p == null) {}
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        l1 = f.p.a();
        String str3 = UUID.randomUUID().toString();
        localBundle = o.h().a(f.c, this, str1);
        localArrayList = new ArrayList();
        int i = 0;
        while (i < f.v.size())
        {
          localArrayList.add(f.v.b(i));
          i += 1;
          continue;
          localNameNotFoundException = localNameNotFoundException;
          localPackageInfo2 = null;
        }
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          long l2;
          com.google.android.gms.ads.internal.util.client.b.a(5);
          l1 = l2;
        }
      }
    }
    boolean bool1;
    if (f.q != null)
    {
      bool1 = true;
      if ((f.r == null) || (!o.h().k())) {
        break label623;
      }
    }
    label623:
    for (boolean bool2 = true;; bool2 = false)
    {
      return new AdRequestInfoParcel.a((Bundle)localObject, paramAdRequestParcel, f.i, f.b, localApplicationInfo, localPackageInfo2, str1, o.h().a(), f.e, localBundle, f.y, localArrayList, paramBundle, o.h().f(), l, widthPixels, heightPixels, density, str2, l1, localRemoteException, ax.a(), f.a, f.w, new CapabilityParcel(bool1, bool2), f.e());
      bool1 = false;
      break;
    }
  }
  
  public void a(es parames)
  {
    z.b("setInAppPurchaseListener must be called on the main UI thread.");
    f.q = parames;
  }
  
  public final void a(ew paramew, String paramString)
  {
    z.b("setPlayStorePurchaseParams must be called on the main UI thread.");
    f.z = new k(paramString);
    f.r = paramew;
    if ((!o.h().e()) && (paramew != null)) {
      new c(f.c, f.r, f.z).e();
    }
  }
  
  protected final void a(gk paramgk, boolean paramBoolean)
  {
    if (paramgk == null) {
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    do
    {
      return;
      super.c(paramgk);
      if ((o != null) && (o.d != null))
      {
        o.q();
        di.a(f.c, f.e.b, paramgk, f.b, paramBoolean, o.d);
      }
    } while ((l == null) || (l.g == null));
    o.q();
    di.a(f.c, f.e.b, paramgk, f.b, paramBoolean, l.g);
  }
  
  public final void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new com.google.android.gms.ads.internal.purchase.d(paramString, paramArrayList, f.c, f.e.b);
    if (f.q == null)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      com.google.android.gms.ads.internal.client.n.a();
      if (!com.google.android.gms.ads.internal.util.client.a.b(f.c))
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return;
      }
      if (f.r == null)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return;
      }
      if (f.z == null)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return;
      }
      if (f.D)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        return;
      }
      f.D = true;
      try
      {
        if (!f.r.a(paramString))
        {
          f.D = false;
          return;
        }
      }
      catch (RemoteException paramString)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
        f.D = false;
        return;
      }
      o.o();
      paramString = f.c;
      boolean bool = f.e.e;
      paramArrayList = new GInAppPurchaseManagerInfoParcel(f.c, f.z, paramArrayList, this);
      Intent localIntent = new Intent();
      localIntent.setClassName(paramString, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
      localIntent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", bool);
      GInAppPurchaseManagerInfoParcel.a(localIntent, paramArrayList);
      o.e();
      gw.a(paramString, localIntent);
      return;
    }
    try
    {
      f.q.a(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
  }
  
  public final void a(String paramString, boolean paramBoolean, int paramInt, Intent paramIntent, com.google.android.gms.ads.internal.purchase.f paramf)
  {
    try
    {
      if (f.r != null) {
        f.r.a(new g(f.c, paramString, paramBoolean, paramInt, paramIntent, paramf));
      }
      gw.a.postDelayed(new b.1(this, paramIntent), 500L);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel, bg parambg)
  {
    Object localObject3 = null;
    if (!r()) {
      return false;
    }
    Object localObject1 = o.h().a(f.c);
    Object localObject2 = localObject3;
    if (localObject1 != null)
    {
      if (((aj)localObject1).d()) {
        ((aj)localObject1).c();
      }
      localObject2 = ((aj)localObject1).b();
      if (localObject2 == null) {
        break label283;
      }
      localObject1 = ((ag)localObject2).b();
      new StringBuilder("In AdManger: loadAd, ").append(((ag)localObject2).toString());
      com.google.android.gms.ads.internal.util.client.b.a(3);
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (localObject1 != null)
      {
        localObject2 = new Bundle(1);
        ((Bundle)localObject2).putString("fingerprint", (String)localObject1);
        ((Bundle)localObject2).putInt("v", 1);
      }
      e.a();
      f.C = 0;
      paramAdRequestParcel = a(paramAdRequestParcel, (Bundle)localObject2);
      parambg.a("seq_num", g);
      parambg.a("request_id", v);
      parambg.a("session_id", h);
      if (f != null) {
        parambg.a("app_version", String.valueOf(f.versionCode));
      }
      parambg = f;
      o.a();
      localObject1 = f.c;
      localObject2 = f.d;
      if (b.c.getBundle("sdk_less_server_data") != null) {}
      for (paramAdRequestParcel = new com.google.android.gms.ads.internal.request.m((Context)localObject1, paramAdRequestParcel, this);; paramAdRequestParcel = new com.google.android.gms.ads.internal.request.b((Context)localObject1, paramAdRequestParcel, (com.google.android.gms.internal.m)localObject2, this))
      {
        paramAdRequestParcel.e();
        g = paramAdRequestParcel;
        return true;
      }
      label283:
      localObject1 = null;
    }
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, gk paramgk, boolean paramBoolean)
  {
    if ((!paramBoolean) && (f.d()))
    {
      if (h <= 0L) {
        break label43;
      }
      e.a(paramAdRequestParcel, h);
    }
    for (;;)
    {
      return e.d();
      label43:
      if ((o != null) && (o.g > 0L)) {
        e.a(paramAdRequestParcel, o.g);
      } else if ((!k) && (d == 2)) {
        e.a(paramAdRequestParcel);
      }
    }
  }
  
  final boolean a(gk paramgk)
  {
    boolean bool = false;
    Object localObject;
    if (g != null)
    {
      localObject = g;
      g = null;
    }
    for (;;)
    {
      return a((AdRequestParcel)localObject, paramgk, bool);
      AdRequestParcel localAdRequestParcel = a;
      localObject = localAdRequestParcel;
      if (c != null)
      {
        bool = c.getBoolean("_noRefresh", false);
        localObject = localAdRequestParcel;
      }
    }
  }
  
  protected boolean a(gk paramgk1, gk paramgk2)
  {
    int i = 0;
    if ((paramgk1 != null) && (p != null)) {
      p.a(null);
    }
    if (p != null) {
      p.a(this);
    }
    int m;
    if (o != null)
    {
      m = o.j;
      i = o.k;
    }
    for (;;)
    {
      f.A.a(m, i);
      return true;
      m = 0;
    }
  }
  
  public final void b(gk paramgk)
  {
    super.b(paramgk);
    if ((d == 3) && (o != null) && (o.e != null))
    {
      com.google.android.gms.ads.internal.util.client.b.a(3);
      o.q();
      di.a(f.c, f.e.b, paramgk, f.b, false, o.e);
    }
  }
  
  protected final boolean b(AdRequestParcel paramAdRequestParcel)
  {
    return (super.b(paramAdRequestParcel)) && (!k);
  }
  
  public void d()
  {
    z.b("pause must be called on the main UI thread.");
    if ((f.j != null) && (f.j.b != null) && (f.d()))
    {
      o.g();
      gx.a(f.j.b.a());
    }
    if ((f.j != null) && (f.j.m != null)) {}
    try
    {
      f.j.m.d();
      h.c(f.j);
      e.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
  }
  
  public final void e()
  {
    if (f.j == null)
    {
      com.google.android.gms.ads.internal.util.client.b.a(5);
      return;
    }
    if ((f.j.o != null) && (f.j.o.c != null))
    {
      o.q();
      di.a(f.c, f.e.b, f.j, f.b, false, f.j.o.c);
    }
    if ((f.j.l != null) && (f.j.l.f != null))
    {
      o.q();
      di.a(f.c, f.e.b, f.j, f.b, false, f.j.l.f);
    }
    super.e();
  }
  
  public final void e_()
  {
    h.a(f.j);
    k = false;
    n();
    f.l.c();
  }
  
  public void f()
  {
    z.b("resume must be called on the main UI thread.");
    if ((f.j != null) && (f.j.b != null) && (f.d()))
    {
      o.g();
      gx.b(f.j.b.a());
    }
    if ((f.j != null) && (f.j.m != null)) {}
    try
    {
      f.j.m.e();
      e.c();
      h.d(f.j);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
  }
  
  public void f_()
  {
    k = true;
    o();
  }
  
  public void g()
  {
    throw new IllegalStateException("showInterstitial is not supported for current ad type");
  }
  
  public final String k()
  {
    if (f.j == null) {
      return null;
    }
    return f.j.n;
  }
  
  protected boolean r()
  {
    boolean bool = true;
    o.e();
    if (gw.a(f.c.getPackageManager(), f.c.getPackageName(), "android.permission.INTERNET"))
    {
      o.e();
      if (gw.a(f.c)) {}
    }
    else
    {
      bool = false;
    }
    return bool;
  }
  
  public final void s()
  {
    e();
  }
  
  public final void t()
  {
    e_();
  }
  
  public final void u()
  {
    m();
  }
  
  public final void v()
  {
    f_();
  }
  
  public final void w()
  {
    if (f.j != null)
    {
      new StringBuilder("Mediation adapter ").append(f.j.n).append(" refreshed, but mediation adapters should never refresh.");
      com.google.android.gms.ads.internal.util.client.b.a(5);
    }
    a(f.j, true);
    p();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */