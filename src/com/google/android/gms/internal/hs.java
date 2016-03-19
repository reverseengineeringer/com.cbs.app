package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.d;
import com.google.android.gms.ads.internal.overlay.c;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@fs
public abstract interface hs
  extends u
{
  public abstract WebView a();
  
  public abstract void a(int paramInt);
  
  public abstract void a(Context paramContext);
  
  public abstract void a(Context paramContext, AdSizeParcel paramAdSizeParcel, bg parambg);
  
  public abstract void a(AdSizeParcel paramAdSizeParcel);
  
  public abstract void a(c paramc);
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString1, String paramString2);
  
  public abstract void a(String paramString, Map<String, ?> paramMap);
  
  public abstract void a(String paramString, JSONObject paramJSONObject);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract View b();
  
  public abstract void b(int paramInt);
  
  public abstract void b(c paramc);
  
  public abstract void b(String paramString);
  
  public abstract void b(String paramString, JSONObject paramJSONObject);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract void c();
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void clearCache(boolean paramBoolean);
  
  public abstract void d();
  
  public abstract void destroy();
  
  public abstract Activity e();
  
  public abstract Context f();
  
  public abstract d g();
  
  public abstract Context getContext();
  
  public abstract ViewGroup.LayoutParams getLayoutParams();
  
  public abstract void getLocationOnScreen(int[] paramArrayOfInt);
  
  public abstract int getMeasuredHeight();
  
  public abstract int getMeasuredWidth();
  
  public abstract ViewParent getParent();
  
  public abstract c h();
  
  public abstract c i();
  
  public abstract AdSizeParcel j();
  
  public abstract hu k();
  
  public abstract boolean l();
  
  public abstract void loadData(String paramString1, String paramString2, String paramString3);
  
  public abstract void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract void loadUrl(String paramString);
  
  public abstract m m();
  
  public abstract void measure(int paramInt1, int paramInt2);
  
  public abstract VersionInfoParcel n();
  
  public abstract boolean o();
  
  public abstract int p();
  
  public abstract boolean q();
  
  public abstract void r();
  
  public abstract boolean s();
  
  public abstract void setBackgroundColor(int paramInt);
  
  public abstract void setOnClickListener(View.OnClickListener paramOnClickListener);
  
  public abstract void setOnTouchListener(View.OnTouchListener paramOnTouchListener);
  
  public abstract void setWebChromeClient(WebChromeClient paramWebChromeClient);
  
  public abstract void setWebViewClient(WebViewClient paramWebViewClient);
  
  public abstract void stopLoading();
  
  public abstract String t();
  
  public abstract hr u();
  
  public abstract be v();
  
  public abstract bf w();
  
  public abstract void x();
  
  public abstract void y();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */