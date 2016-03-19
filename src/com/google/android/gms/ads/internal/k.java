package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.view.View;
import android.view.Window;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bg;
import com.google.android.gms.internal.cm;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.w;

@fs
public final class k
  extends c
  implements cm
{
  protected transient boolean l = false;
  private boolean m;
  private float n;
  private String o = "background" + hashCode() + ".png";
  
  public k(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, dl paramdl, VersionInfoParcel paramVersionInfoParcel, d paramd)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramdl, paramVersionInfoParcel, paramd);
  }
  
  private void B()
  {
    new a(o).e();
    if (f.d())
    {
      f.b();
      f.j = null;
      f.E = false;
      l = false;
    }
  }
  
  private void a(Bundle paramBundle)
  {
    o.e();
    gw.b(f.c, f.e.b, "gmob-apps", paramBundle, false);
  }
  
  protected final boolean A()
  {
    if (!(f.c instanceof Activity)) {
      return false;
    }
    Window localWindow = ((Activity)f.c).getWindow();
    if ((localWindow == null) || (localWindow.getDecorView() == null)) {
      return false;
    }
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    localWindow.getDecorView().getGlobalVisibleRect(localRect1, null);
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect2);
    return (bottom != 0) && (bottom != 0) && (top == top);
  }
  
  protected final hs a(gk.a parama, e parame)
  {
    o.f();
    hs localhs = hv.a(f.c, f.i, false, false, f.d, f.e, a, i);
    hu localhu = localhs.k();
    at localat = ax.S;
    localhu.a(this, null, this, this, ((Boolean)o.n().a(localat)).booleanValue(), this, this, parame, null);
    localhs.b(a.w);
    return localhs;
  }
  
  public final void a(boolean paramBoolean, float paramFloat)
  {
    m = paramBoolean;
    n = paramFloat;
  }
  
  public final boolean a(AdRequestParcel paramAdRequestParcel, bg parambg)
  {
    if (f.j != null)
    {
      b.a(5);
      return false;
    }
    return super.a(paramAdRequestParcel, parambg);
  }
  
  protected final boolean a(AdRequestParcel paramAdRequestParcel, gk paramgk, boolean paramBoolean)
  {
    if ((f.d()) && (b != null))
    {
      o.g();
      gx.a(b.a());
    }
    return e.d();
  }
  
  public final boolean a(gk paramgk1, gk paramgk2)
  {
    if (!super.a(paramgk1, paramgk2)) {
      return false;
    }
    if ((!f.d()) && (f.B != null) && (j != null)) {
      h.a(f.i, paramgk2, f.B);
    }
    return true;
  }
  
  public final void b(boolean paramBoolean)
  {
    f.E = paramBoolean;
  }
  
  public final void f_()
  {
    q();
    super.f_();
  }
  
  public final void g()
  {
    z.b("showInterstitial must be called on the main UI thread.");
    if (f.j == null) {
      b.a(5);
    }
    Object localObject3;
    label230:
    label247:
    for (;;)
    {
      return;
      Object localObject1 = ax.ae;
      if (((Boolean)o.n().a((at)localObject1)).booleanValue())
      {
        if (f.c.getApplicationContext() == null) {
          break label230;
        }
        localObject1 = f.c.getApplicationContext().getPackageName();
        if (!l)
        {
          b.a(5);
          localObject3 = new Bundle();
          ((Bundle)localObject3).putString("appid", (String)localObject1);
          ((Bundle)localObject3).putString("action", "show_interstitial_before_load_finish");
          a((Bundle)localObject3);
        }
        o.e();
        if (!gw.f(f.c))
        {
          b.a(5);
          localObject3 = new Bundle();
          ((Bundle)localObject3).putString("appid", (String)localObject1);
          ((Bundle)localObject3).putString("action", "show_interstitial_app_not_in_foreground");
          a((Bundle)localObject3);
        }
      }
      if (f.C == 1) {}
      for (i = 1;; i = 0)
      {
        if (i != 0) {
          break label247;
        }
        if (!f.j.k) {
          break label249;
        }
        try
        {
          f.j.m.b();
          return;
        }
        catch (RemoteException localRemoteException)
        {
          b.a(5);
          B();
          return;
        }
        localObject2 = f.c.getPackageName();
        break;
      }
    }
    label249:
    if (f.j.b == null)
    {
      b.a(5);
      return;
    }
    if (f.j.b.o())
    {
      b.a(5);
      return;
    }
    f.j.b.a(true);
    if (f.j.j != null) {
      h.a(f.i, f.j);
    }
    if (f.E) {
      o.e();
    }
    for (Object localObject2 = gw.g(f.c);; localObject2 = null)
    {
      localObject3 = ax.ap;
      if ((!((Boolean)o.n().a((at)localObject3)).booleanValue()) || (localObject2 == null)) {
        break;
      }
      new b((Bitmap)localObject2, o).e();
      return;
    }
    localObject2 = new InterstitialAdParameterParcel(f.E, A(), null, false, 0.0F);
    int j = f.j.b.p();
    int i = j;
    if (j == -1) {
      i = f.j.g;
    }
    localObject2 = new AdOverlayInfoParcel(this, this, this, f.j.b, i, f.e, f.j.v, (InterstitialAdParameterParcel)localObject2);
    o.c();
    com.google.android.gms.ads.internal.overlay.d.a(f.c, (AdOverlayInfoParcel)localObject2, true);
  }
  
  protected final boolean n()
  {
    B();
    return super.n();
  }
  
  protected final boolean p()
  {
    if (super.p())
    {
      l = true;
      return true;
    }
    return false;
  }
  
  @fs
  private final class a
    extends gr
  {
    private final String b;
    
    public a(String paramString)
    {
      b = paramString;
    }
    
    public final void a()
    {
      o.e();
      gw.c(f.c, b);
    }
    
    public final void b() {}
  }
  
  @fs
  private final class b
    extends gr
  {
    private final Bitmap b;
    private final String c;
    
    public b(Bitmap paramBitmap, String paramString)
    {
      b = paramBitmap;
      c = paramString;
    }
    
    public final void a()
    {
      boolean bool1;
      boolean bool2;
      boolean bool3;
      if (f.E)
      {
        o.e();
        bool1 = gw.a(f.c, b, c);
        bool2 = f.E;
        bool3 = A();
        if (!bool1) {
          break label222;
        }
      }
      label222:
      for (Object localObject = c;; localObject = null)
      {
        localObject = new InterstitialAdParameterParcel(bool2, bool3, (String)localObject, k.a(k.this), k.b(k.this));
        int j = f.j.b.p();
        int i = j;
        if (j == -1) {
          i = f.j.g;
        }
        localObject = new AdOverlayInfoParcel(k.this, k.this, k.this, f.j.b, i, f.e, f.j.v, (InterstitialAdParameterParcel)localObject);
        gw.a.post(new k.b.1(this, (AdOverlayInfoParcel)localObject));
        return;
        bool1 = false;
        break;
      }
    }
    
    public final void b() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */