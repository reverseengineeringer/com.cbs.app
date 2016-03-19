package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;

@fs
public abstract class c
  extends b
  implements g, ei
{
  public c(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel, d paramd)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramdl, paramVersionInfoParcel, paramd);
  }
  
  protected hs a(gk.a parama, e parame)
  {
    Object localObject = f.f.getNextView();
    if ((localObject instanceof hs))
    {
      com.google.android.gms.ads.internal.util.client.b.a(3);
      localObject = (hs)localObject;
      ((hs)localObject).a(f.c, f.i, a);
    }
    for (;;)
    {
      ((hs)localObject).k().a(this, this, this, this, false, this, null, parame, this);
      ((hs)localObject).b(a.w);
      return (hs)localObject;
      if (localObject != null) {
        f.f.removeView((View)localObject);
      }
      o.f();
      hs localhs = hv.a(f.c, f.i, false, false, f.d, f.e, a, i);
      localObject = localhs;
      if (f.i.h == null)
      {
        a(localhs.b());
        localObject = localhs;
      }
    }
  }
  
  public final void a(bk parambk)
  {
    z.b("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
    f.x = parambk;
  }
  
  protected final void a(gk.a parama, bg parambg)
  {
    if (e != -2)
    {
      gw.a.post(new c.1(this, parama));
      return;
    }
    if (d != null) {
      f.i = d;
    }
    if (b.h)
    {
      f.C = 0;
      zzq localzzq = f;
      o.d();
      h = fh.a(f.c, this, parama, f.d, null, j, this, parambg);
      return;
    }
    gw.a.post(new c.2(this, parama, parambg));
  }
  
  protected boolean a(gk paramgk1, gk paramgk2)
  {
    if ((f.d()) && (f.f != null)) {
      f.f.a().a(v);
    }
    return super.a(paramgk1, paramgk2);
  }
  
  public final void b(View paramView)
  {
    f.B = paramView;
    b(new gk(f.k));
  }
  
  public final void q()
  {
    a(f.j, false);
  }
  
  public final void x()
  {
    e();
  }
  
  public final void y()
  {
    o();
  }
  
  public final void z()
  {
    n();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */