package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.at;
import com.google.android.gms.internal.aw;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ek.a;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gx;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hs;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import java.util.Collections;

@fs
public final class c
  extends ek.a
  implements k
{
  static final int a = Color.argb(0, 0, 0, 0);
  AdOverlayInfoParcel b;
  hs c;
  c d;
  zzm e;
  boolean f = false;
  FrameLayout g;
  WebChromeClient.CustomViewCallback h;
  boolean i = false;
  boolean j = false;
  RelativeLayout k;
  boolean l = false;
  int m = 0;
  private final Activity n;
  private boolean o;
  private boolean p = false;
  private boolean q = true;
  
  public c(Activity paramActivity)
  {
    n = paramActivity;
  }
  
  private void a(boolean paramBoolean)
  {
    RelativeLayout.LayoutParams localLayoutParams;
    if (paramBoolean)
    {
      i1 = 50;
      e = new zzm(n, i1, this);
      localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(10);
      if (!paramBoolean) {
        break label88;
      }
    }
    label88:
    for (int i1 = 11;; i1 = 9)
    {
      localLayoutParams.addRule(i1);
      e.a(paramBoolean, b.h);
      k.addView(e, localLayoutParams);
      return;
      i1 = 32;
      break;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (!o) {
      n.requestWindowFeature(1);
    }
    Object localObject = n.getWindow();
    if (localObject == null) {
      throw new a("Invalid activity, no window available.");
    }
    if ((!j) || ((b.q != null) && (b.q.c))) {
      ((Window)localObject).setFlags(1024, 1024);
    }
    boolean bool2 = b.e.k().b();
    l = false;
    boolean bool1;
    if (bool2)
    {
      if (b.k != o.g().a()) {
        break label522;
      }
      if (n.getResources().getConfiguration().orientation == 1)
      {
        bool1 = true;
        l = bool1;
      }
    }
    else
    {
      label146:
      new StringBuilder("Delay onShow to next orientation change: ").append(l);
      b.a(3);
      a(b.k);
      if (o.g().a((Window)localObject)) {
        b.a(3);
      }
      if (j) {
        break label570;
      }
      k.setBackgroundColor(-16777216);
      label211:
      n.setContentView(k);
      o = true;
      if (!paramBoolean) {
        break label637;
      }
      o.f();
      c = hv.a(n, b.e.j(), true, bool2, null, b.n);
      c.k().a(null, null, b.f, b.j, true, b.o, null, b.e.k().a(), null);
      c.k().a(new c.1(this));
      if (b.m == null) {
        break label583;
      }
      c.loadUrl(b.m);
      label367:
      if (b.e != null) {
        b.e.b(this);
      }
    }
    for (;;)
    {
      c.a(this);
      localObject = c.getParent();
      if ((localObject != null) && ((localObject instanceof ViewGroup))) {
        ((ViewGroup)localObject).removeView(c.b());
      }
      if (j) {
        c.setBackgroundColor(a);
      }
      k.addView(c.b(), -1, -1);
      if ((!paramBoolean) && (!l)) {
        p();
      }
      a(bool2);
      if (c.l()) {
        a(bool2, true);
      }
      return;
      bool1 = false;
      break;
      label522:
      if (b.k != o.g().b()) {
        break label146;
      }
      if (n.getResources().getConfiguration().orientation == 2) {}
      for (bool1 = true;; bool1 = false)
      {
        l = bool1;
        break;
      }
      label570:
      k.setBackgroundColor(a);
      break label211;
      label583:
      if (b.i != null)
      {
        c.loadDataWithBaseURL(b.g, b.i, "text/html", "UTF-8", null);
        break label367;
      }
      throw new a("No URL or HTML to display in ad overlay.");
      label637:
      c = b.e;
      c.a(n);
    }
  }
  
  private void o()
  {
    if ((!n.isFinishing()) || (p)) {}
    do
    {
      return;
      p = true;
      if (c != null)
      {
        int i1 = m;
        c.a(i1);
        k.removeView(c.b());
        if (d != null)
        {
          c.a(d.d);
          c.a(false);
          d.c.addView(c.b(), d.a, d.b);
          d = null;
        }
        c = null;
      }
    } while ((b == null) || (b.d == null));
    b.d.e_();
  }
  
  private void p()
  {
    c.d();
  }
  
  public final void a()
  {
    m = 2;
    n.finish();
  }
  
  public final void a(int paramInt)
  {
    n.setRequestedOrientation(paramInt);
  }
  
  public final void a(Bundle paramBundle)
  {
    boolean bool = false;
    if (paramBundle != null) {
      bool = paramBundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
    }
    i = bool;
    try
    {
      b = AdOverlayInfoParcel.a(n.getIntent());
      if (b != null) {
        break label76;
      }
      throw new a("Could not get info for ad overlay.");
    }
    catch (a paramBundle)
    {
      paramBundle.getMessage();
      b.a(5);
      m = 3;
      n.finish();
    }
    return;
    label76:
    if (b.n.d > 7500000) {
      m = 3;
    }
    if (n.getIntent() != null) {
      q = n.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
    }
    if (b.q != null)
    {
      j = b.q.b;
      label149:
      at localat = ax.ap;
      if ((((Boolean)o.n().a(localat)).booleanValue()) && (j) && (b.q.d != null)) {
        new d((byte)0).e();
      }
      if (paramBundle == null)
      {
        if ((b.d != null) && (q)) {
          b.d.f_();
        }
        if ((b.l != 1) && (b.c != null)) {
          b.c.e();
        }
      }
      k = new b(n, b.p);
      switch (b.l)
      {
      }
    }
    for (;;)
    {
      throw new a("Could not determine ad overlay type.");
      j = false;
      break label149;
      b(false);
      return;
      d = new c(b.e);
      b(false);
      return;
      b(true);
      return;
      if (i)
      {
        m = 3;
        n.finish();
        return;
      }
      o.b();
      if (a.a(n, b.b, b.j)) {
        break;
      }
      m = 3;
      n.finish();
      return;
    }
  }
  
  public final void a(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    g = new FrameLayout(n);
    g.setBackgroundColor(-16777216);
    g.addView(paramView, -1, -1);
    n.setContentView(g);
    o = true;
    h = paramCustomViewCallback;
    f = true;
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (e != null) {
      e.a(paramBoolean1, paramBoolean2);
    }
  }
  
  public final void b()
  {
    if ((b != null) && (f)) {
      a(b.k);
    }
    if (g != null)
    {
      n.setContentView(k);
      o = true;
      g.removeAllViews();
      g = null;
    }
    if (h != null)
    {
      h.onCustomViewHidden();
      h = null;
    }
    f = false;
  }
  
  public final void b(Bundle paramBundle)
  {
    paramBundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", i);
  }
  
  public final void c()
  {
    m = 1;
    n.finish();
  }
  
  public final void d()
  {
    m = 0;
  }
  
  public final boolean e()
  {
    m = 0;
    boolean bool1;
    if (c == null) {
      bool1 = true;
    }
    boolean bool2;
    do
    {
      return bool1;
      bool2 = c.s();
      bool1 = bool2;
    } while (bool2);
    c.a("onbackblocked", Collections.emptyMap());
    return bool2;
  }
  
  public final void f() {}
  
  public final void g() {}
  
  public final void h()
  {
    if ((b != null) && (b.l == 4))
    {
      if (!i) {
        break label74;
      }
      m = 3;
      n.finish();
    }
    while ((c != null) && (!c.q()))
    {
      o.g();
      gx.b(c.a());
      return;
      label74:
      i = true;
    }
    b.a(5);
  }
  
  public final void i()
  {
    b();
    if ((c != null) && ((!n.isFinishing()) || (d == null)))
    {
      o.g();
      gx.a(c.a());
    }
    o();
  }
  
  public final void j()
  {
    o();
  }
  
  public final void k()
  {
    if (c != null) {
      k.removeView(c.b());
    }
    o();
  }
  
  public final void l()
  {
    o = true;
  }
  
  public final void m()
  {
    k.removeView(e);
    a(true);
  }
  
  public final void n()
  {
    if (l)
    {
      l = false;
      p();
    }
  }
  
  @fs
  private static final class a
    extends Exception
  {
    public a(String paramString)
    {
      super();
    }
  }
  
  @fs
  static final class b
    extends RelativeLayout
  {
    gy a;
    
    public b(Context paramContext, String paramString)
    {
      super();
      a = new gy(paramContext, paramString);
    }
    
    public final boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      a.a(paramMotionEvent);
      return false;
    }
  }
  
  @fs
  public static final class c
  {
    public final int a;
    public final ViewGroup.LayoutParams b;
    public final ViewGroup c;
    public final Context d;
    
    public c(hs paramhs)
    {
      b = paramhs.getLayoutParams();
      ViewParent localViewParent = paramhs.getParent();
      d = paramhs.f();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup)))
      {
        c = ((ViewGroup)localViewParent);
        a = c.indexOfChild(paramhs.b());
        c.removeView(paramhs.b());
        paramhs.a(true);
        return;
      }
      throw new c.a("Could not get the parent of the WebView for an overlay.");
    }
  }
  
  @fs
  private final class d
    extends gr
  {
    private d() {}
    
    public final void a()
    {
      o.e();
      Object localObject = gw.b(c.a(c.this), b.q.d);
      if (localObject != null)
      {
        localObject = o.g().a(c.a(c.this), (Bitmap)localObject, b.q.e, b.q.f);
        gw.a.post(new c.d.1(this, (Drawable)localObject));
      }
    }
    
    public final void b() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */