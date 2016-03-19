package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.overlay.c;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@fs
final class hw
  extends FrameLayout
  implements hs
{
  private final hs a;
  private final hr b;
  
  public hw(hs paramhs)
  {
    super(paramhs.f());
    a = paramhs;
    b = new hr(paramhs.f(), this, this);
    paramhs = a.k();
    if (paramhs != null) {
      paramhs.a(this);
    }
    addView(a.b());
  }
  
  public final WebView a()
  {
    return a.a();
  }
  
  public final void a(int paramInt)
  {
    a.a(paramInt);
  }
  
  public final void a(Context paramContext)
  {
    a.a(paramContext);
  }
  
  public final void a(Context paramContext, AdSizeParcel paramAdSizeParcel, bg parambg)
  {
    a.a(paramContext, paramAdSizeParcel, parambg);
  }
  
  public final void a(AdSizeParcel paramAdSizeParcel)
  {
    a.a(paramAdSizeParcel);
  }
  
  public final void a(c paramc)
  {
    a.a(paramc);
  }
  
  public final void a(x paramx, boolean paramBoolean)
  {
    a.a(paramx, paramBoolean);
  }
  
  public final void a(String paramString)
  {
    a.a(paramString);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a.a(paramString1, paramString2);
  }
  
  public final void a(String paramString, Map<String, ?> paramMap)
  {
    a.a(paramString, paramMap);
  }
  
  public final void a(String paramString, JSONObject paramJSONObject)
  {
    a.a(paramString, paramJSONObject);
  }
  
  public final void a(boolean paramBoolean)
  {
    a.a(paramBoolean);
  }
  
  public final View b()
  {
    return this;
  }
  
  public final void b(int paramInt)
  {
    a.b(paramInt);
  }
  
  public final void b(c paramc)
  {
    a.b(paramc);
  }
  
  public final void b(String paramString)
  {
    a.b(paramString);
  }
  
  public final void b(String paramString, JSONObject paramJSONObject)
  {
    a.b(paramString, paramJSONObject);
  }
  
  public final void b(boolean paramBoolean)
  {
    a.b(paramBoolean);
  }
  
  public final void c()
  {
    a.c();
  }
  
  public final void c(boolean paramBoolean)
  {
    a.c(paramBoolean);
  }
  
  public final void clearCache(boolean paramBoolean)
  {
    a.clearCache(paramBoolean);
  }
  
  public final void d()
  {
    a.d();
  }
  
  public final void destroy()
  {
    a.destroy();
  }
  
  public final Activity e()
  {
    return a.e();
  }
  
  public final Context f()
  {
    return a.f();
  }
  
  public final d g()
  {
    return a.g();
  }
  
  public final c h()
  {
    return a.h();
  }
  
  public final c i()
  {
    return a.i();
  }
  
  public final AdSizeParcel j()
  {
    return a.j();
  }
  
  public final hu k()
  {
    return a.k();
  }
  
  public final boolean l()
  {
    return a.l();
  }
  
  public final void loadData(String paramString1, String paramString2, String paramString3)
  {
    a.loadData(paramString1, paramString2, paramString3);
  }
  
  public final void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
  }
  
  public final void loadUrl(String paramString)
  {
    a.loadUrl(paramString);
  }
  
  public final m m()
  {
    return a.m();
  }
  
  public final VersionInfoParcel n()
  {
    return a.n();
  }
  
  public final boolean o()
  {
    return a.o();
  }
  
  public final int p()
  {
    return a.p();
  }
  
  public final boolean q()
  {
    return a.q();
  }
  
  public final void r()
  {
    b.b();
    a.r();
  }
  
  public final boolean s()
  {
    return a.s();
  }
  
  public final void setBackgroundColor(int paramInt)
  {
    a.setBackgroundColor(paramInt);
  }
  
  public final void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    a.setOnClickListener(paramOnClickListener);
  }
  
  public final void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    a.setOnTouchListener(paramOnTouchListener);
  }
  
  public final void setWebChromeClient(WebChromeClient paramWebChromeClient)
  {
    a.setWebChromeClient(paramWebChromeClient);
  }
  
  public final void setWebViewClient(WebViewClient paramWebViewClient)
  {
    a.setWebViewClient(paramWebViewClient);
  }
  
  public final void stopLoading()
  {
    a.stopLoading();
  }
  
  public final String t()
  {
    return a.t();
  }
  
  public final hr u()
  {
    return b;
  }
  
  public final be v()
  {
    return a.v();
  }
  
  public final bf w()
  {
    return a.w();
  }
  
  public final void x()
  {
    a.x();
  }
  
  public final void y()
  {
    a.y();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */