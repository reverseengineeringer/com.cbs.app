package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.d;
import com.google.android.gms.ads.internal.overlay.f;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

@fs
public class hu
  extends WebViewClient
{
  private static final String[] b = { "UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS" };
  private static final String[] c = { "NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID" };
  protected hs a;
  private final HashMap<String, List<ci>> d = new HashMap();
  private final Object e = new Object();
  private a f;
  private f g;
  private hu.a h;
  private ce i;
  private hu.b j;
  private boolean k = false;
  private ck l;
  private cm m;
  private boolean n;
  private boolean o;
  private j p;
  private final eg q;
  private e r;
  private ec s;
  private ei t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private int y;
  
  public hu(hs paramhs, boolean paramBoolean)
  {
    this(paramhs, paramBoolean, new eg(paramhs, paramhs.f(), new ap(paramhs.getContext())));
  }
  
  private hu(hs paramhs, boolean paramBoolean, eg parameg)
  {
    a = paramhs;
    n = paramBoolean;
    q = parameg;
    s = null;
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Object localObject = ax.af;
    if (!((Boolean)o.n().a((at)localObject)).booleanValue()) {
      return;
    }
    localObject = new Bundle();
    ((Bundle)localObject).putString("err", paramString1);
    ((Bundle)localObject).putString("code", paramString2);
    if (!TextUtils.isEmpty(paramString3))
    {
      paramString1 = Uri.parse(paramString3);
      if (paramString1.getHost() == null) {}
    }
    for (paramString1 = paramString1.getHost();; paramString1 = "")
    {
      ((Bundle)localObject).putString("host", paramString1);
      o.e();
      gw.a(paramContext, a.n().b, "gmob-apps", (Bundle)localObject, true);
      return;
    }
  }
  
  private void a(Uri paramUri)
  {
    Object localObject2 = paramUri.getPath();
    Object localObject1 = (List)d.get(localObject2);
    if (localObject1 != null)
    {
      o.e();
      paramUri = gw.a(paramUri);
      if (b.a(2))
      {
        new StringBuilder("Received GMSG: ").append((String)localObject2);
        b.a(2);
        localObject2 = paramUri.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          new StringBuilder("  ").append(str).append(": ").append((String)paramUri.get(str));
          b.a(2);
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((ci)((Iterator)localObject1).next()).a(a, paramUri);
      }
    }
    new StringBuilder("No GMSG handler found for GMSG: ").append(paramUri);
    b.a(2);
  }
  
  private void a(AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    boolean bool2 = false;
    if (s != null) {}
    for (boolean bool1 = s.a();; bool1 = false)
    {
      o.c();
      Context localContext = a.getContext();
      if (!bool1) {
        bool2 = true;
      }
      d.a(localContext, paramAdOverlayInfoParcel, bool2);
      return;
    }
  }
  
  private void g()
  {
    hu.a locala;
    hs localhs;
    if ((h != null) && (((w) && (y <= 0)) || (x)))
    {
      locala = h;
      localhs = a;
      if (x) {
        break label70;
      }
    }
    label70:
    for (boolean bool = true;; bool = false)
    {
      locala.a(localhs, bool);
      h = null;
      a.y();
      return;
    }
  }
  
  public final e a()
  {
    return r;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    if (s != null) {
      s.a(paramInt1, paramInt2);
    }
  }
  
  public final void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    q.a(paramInt1, paramInt2);
    if (s != null) {
      s.a(paramInt1, paramInt2, paramBoolean);
    }
  }
  
  public final void a(a parama, f paramf, ce paramce, j paramj, boolean paramBoolean, ck paramck, cm paramcm, e parame, ei paramei)
  {
    e locale = parame;
    if (parame == null) {
      locale = new e((byte)0);
    }
    s = new ec(a, paramei);
    a("/appEvent", new cd(paramce));
    a("/backButton", ch.j);
    a("/canOpenURLs", ch.b);
    a("/canOpenIntents", ch.c);
    a("/click", ch.d);
    a("/close", ch.e);
    a("/customClose", ch.f);
    a("/instrument", ch.m);
    a("/delayPageLoaded", new hu.d(this, (byte)0));
    a("/httpTrack", ch.g);
    a("/log", ch.h);
    a("/mraid", new co(locale, s));
    a("/mraidLoaded", q);
    a("/open", new cp(paramck, locale, s));
    a("/precache", ch.l);
    a("/touch", ch.i);
    a("/video", ch.k);
    if (paramcm != null) {
      a("/setInterstitialProperties", new cl(paramcm));
    }
    f = parama;
    g = paramf;
    i = paramce;
    l = paramck;
    p = paramj;
    r = locale;
    t = paramei;
    m = paramcm;
    k = paramBoolean;
    u = false;
  }
  
  public final void a(AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel)
  {
    f localf = null;
    boolean bool = a.o();
    a locala;
    if ((bool) && (!a.j().e))
    {
      locala = null;
      if (!bool) {
        break label75;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(paramAdLauncherIntentInfoParcel, locala, localf, p, a.n()));
      return;
      locala = f;
      break;
      label75:
      localf = g;
    }
  }
  
  public final void a(hs paramhs)
  {
    a = paramhs;
  }
  
  public final void a(hu.a parama)
  {
    h = parama;
  }
  
  public final void a(hu.b paramb)
  {
    j = paramb;
  }
  
  public final void a(String paramString, ci paramci)
  {
    synchronized (e)
    {
      List localList = (List)d.get(paramString);
      Object localObject1 = localList;
      if (localList == null)
      {
        localObject1 = new CopyOnWriteArrayList();
        d.put(paramString, localObject1);
      }
      ((List)localObject1).add(paramci);
      return;
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    k = false;
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((a.o()) && (!a.j().e)) {}
    for (a locala = null;; locala = f)
    {
      a(new AdOverlayInfoParcel(locala, g, p, a, paramBoolean, paramInt, a.n()));
      return;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    Object localObject = null;
    boolean bool = a.o();
    a locala;
    if ((bool) && (!a.j().e))
    {
      locala = null;
      if (!bool) {
        break label95;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(locala, (f)localObject, i, p, a, paramBoolean, paramInt, paramString, a.n(), l));
      return;
      locala = f;
      break;
      label95:
      localObject = new hu.c(a, g);
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = a.o();
    a locala;
    if ((bool) && (!a.j().e))
    {
      locala = null;
      if (!bool) {
        break label97;
      }
    }
    label97:
    for (Object localObject = null;; localObject = new hu.c(a, g))
    {
      a(new AdOverlayInfoParcel(locala, (f)localObject, i, p, a, paramBoolean, paramInt, paramString1, paramString2, a.n(), l));
      return;
      locala = f;
      break;
    }
  }
  
  public final void b(String paramString, ci paramci)
  {
    synchronized (e)
    {
      paramString = (List)d.get(paramString);
      if (paramString == null) {
        return;
      }
      paramString.remove(paramci);
      return;
    }
  }
  
  public final boolean b()
  {
    synchronized (e)
    {
      boolean bool = n;
      return bool;
    }
  }
  
  public final boolean c()
  {
    synchronized (e)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public final void d()
  {
    synchronized (e)
    {
      b.a(2);
      v = true;
      a.a("about:blank");
      return;
    }
  }
  
  public final void e()
  {
    synchronized (e)
    {
      d.clear();
      f = null;
      g = null;
      h = null;
      i = null;
      k = false;
      n = false;
      o = false;
      l = null;
      p = null;
      j = null;
      if (s != null)
      {
        s.a(true);
        s = null;
      }
      u = false;
      return;
    }
  }
  
  public final void f()
  {
    synchronized (e)
    {
      k = false;
      n = true;
      gw.a(new hu.1(this));
      return;
    }
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    new StringBuilder("Loading resource: ").append(paramString);
    b.a(2);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      a(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView arg1, String paramString)
  {
    synchronized (e)
    {
      if ((v) && ("about:blank".equals(paramString)))
      {
        b.a(2);
        a.r();
        return;
      }
      w = true;
      g();
      return;
    }
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt < 0) && (-paramInt - 1 < b.length)) {}
    for (String str = b[(-paramInt - 1)];; str = String.valueOf(paramInt))
    {
      a(a.getContext(), "http_err", str, paramString2);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      return;
    }
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    int i1;
    if (paramSslError != null)
    {
      i1 = paramSslError.getPrimaryError();
      if ((i1 < 0) || (i1 >= c.length)) {
        break label65;
      }
    }
    label65:
    for (String str = c[i1];; str = String.valueOf(i1))
    {
      a(a.getContext(), "ssl_err", str, o.g().a(paramSslError));
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
  }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      return false;
    }
    return true;
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    new StringBuilder("AdWebView shouldOverrideUrlLoading: ").append(paramString);
    b.a(2);
    Object localObject1 = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(((Uri)localObject1).getScheme())) && ("mobileads.google.com".equalsIgnoreCase(((Uri)localObject1).getHost()))) {
      a((Uri)localObject1);
    }
    for (;;)
    {
      return true;
      Object localObject2;
      if ((k) && (paramWebView == a.a()))
      {
        localObject2 = ((Uri)localObject1).getScheme();
        if (("http".equalsIgnoreCase((String)localObject2)) || ("https".equalsIgnoreCase((String)localObject2))) {}
        for (int i1 = 1; i1 != 0; i1 = 0)
        {
          if (!u)
          {
            u = true;
            if (f != null)
            {
              localObject1 = ax.T;
              if (((Boolean)o.n().a((at)localObject1)).booleanValue()) {
                f.e();
              }
            }
          }
          return super.shouldOverrideUrlLoading(paramWebView, paramString);
        }
      }
      if (!a.a().willNotDraw())
      {
        try
        {
          localObject2 = a.m();
          paramWebView = (WebView)localObject1;
          if (localObject2 != null)
          {
            paramWebView = (WebView)localObject1;
            if (((m)localObject2).a((Uri)localObject1)) {
              paramWebView = ((m)localObject2).a((Uri)localObject1, a.getContext());
            }
          }
        }
        catch (n paramWebView)
        {
          for (;;)
          {
            new StringBuilder("Unable to append parameter to URL: ").append(paramString);
            b.a(5);
            paramWebView = (WebView)localObject1;
          }
          r.a(paramString);
        }
        if ((r == null) || (r.b())) {
          a(new AdLauncherIntentInfoParcel("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
        }
      }
      else
      {
        new StringBuilder("AdWebView unable to handle URL: ").append(paramString);
        b.a(5);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */