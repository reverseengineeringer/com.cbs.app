package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.n;
import com.google.android.gms.ads.internal.client.p;
import com.google.android.gms.ads.internal.client.q;
import com.google.android.gms.ads.internal.client.w;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.bw;
import com.google.android.gms.internal.bx;
import com.google.android.gms.internal.by;
import com.google.android.gms.internal.dm;
import com.google.android.gms.internal.es;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.fi;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gk;
import com.google.android.gms.internal.gk.a;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gm;
import com.google.android.gms.internal.gp;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.jp;
import com.google.android.gms.internal.m;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;

@fs
public final class zzq
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  public gp A = null;
  View B = null;
  public int C = 0;
  boolean D = false;
  boolean E = false;
  private HashSet<gl> F = null;
  private int G = -1;
  private int H = -1;
  private hd I;
  private boolean J = true;
  private boolean K = true;
  private boolean L = false;
  final String a;
  public String b;
  public final Context c;
  final m d;
  public final VersionInfoParcel e;
  zzq.zza f;
  public gr g;
  public fi h;
  public AdSizeParcel i;
  public gk j;
  public gk.a k;
  public gl l;
  p m;
  q n;
  w o;
  x p;
  es q;
  ew r;
  bv s;
  bw t;
  jp<String, bx> u;
  jp<String, by> v;
  NativeAdOptionsParcel w;
  bk x;
  List<String> y;
  k z;
  
  public zzq(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel)
  {
    this(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel, (byte)0);
  }
  
  private zzq(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel, byte paramByte)
  {
    ax.a(paramContext);
    if (o.h().d() != null)
    {
      List localList = ax.a();
      if (c != 0) {
        localList.add(Integer.toString(c));
      }
      o.h().d().a(localList);
    }
    a = UUID.randomUUID().toString();
    if ((e) || (i)) {
      f = null;
    }
    for (;;)
    {
      i = paramAdSizeParcel;
      b = paramString;
      c = paramContext;
      e = paramVersionInfoParcel;
      d = new m(new h(this));
      I = new hd(200L);
      v = new jp();
      return;
      f = new zzq.zza(paramContext, this, this);
      f.setMinimumWidth(g);
      f.setMinimumHeight(d);
      f.setVisibility(4);
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool = true;
    if ((f == null) || (j == null) || (j.b == null)) {
      break label27;
    }
    label27:
    while ((paramBoolean) && (!I.a())) {
      return;
    }
    Object localObject;
    int i1;
    int i2;
    if (j.b.k().b())
    {
      localObject = new int[2];
      f.getLocationOnScreen((int[])localObject);
      n.a();
      i1 = a.b(c, localObject[0]);
      n.a();
      i2 = a.b(c, localObject[1]);
      if ((i1 != G) || (i2 != H))
      {
        G = i1;
        H = i2;
        localObject = j.b.k();
        i1 = G;
        i2 = H;
        if (paramBoolean) {
          break label264;
        }
      }
    }
    label264:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((hu)localObject).a(i1, i2, paramBoolean);
      localObject = f.getRootView().findViewById(16908290);
      if (localObject == null) {
        break;
      }
      Rect localRect1 = new Rect();
      Rect localRect2 = new Rect();
      f.getGlobalVisibleRect(localRect1);
      ((View)localObject).getGlobalVisibleRect(localRect2);
      if (top != top) {
        J = false;
      }
      if (bottom == bottom) {
        break;
      }
      K = false;
      return;
    }
  }
  
  public final HashSet<gl> a()
  {
    return F;
  }
  
  public final void a(HashSet<gl> paramHashSet)
  {
    F = paramHashSet;
  }
  
  public final void a(boolean paramBoolean)
  {
    if ((C == 0) && (j != null) && (j.b != null)) {
      j.b.stopLoading();
    }
    if (g != null) {
      g.c();
    }
    if (h != null) {
      h.c();
    }
    if (paramBoolean) {
      j = null;
    }
  }
  
  public final void b()
  {
    if ((j != null) && (j.b != null)) {
      j.b.destroy();
    }
  }
  
  public final void c()
  {
    if ((j != null) && (j.m != null)) {}
    try
    {
      j.m.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.a(5);
    }
  }
  
  public final boolean d()
  {
    return C == 0;
  }
  
  public final String e()
  {
    if ((J) && (K)) {
      return "";
    }
    if (J)
    {
      if (L) {
        return "top-scrollable";
      }
      return "top-locked";
    }
    if (K)
    {
      if (L) {
        return "bottom-scrollable";
      }
      return "bottom-locked";
    }
    return "";
  }
  
  public final void onGlobalLayout()
  {
    b(false);
  }
  
  public final void onScrollChanged()
  {
    b(true);
    L = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.zzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */