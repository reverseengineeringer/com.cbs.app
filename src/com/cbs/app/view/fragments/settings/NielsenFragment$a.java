package com.cbs.app.view.fragments.settings;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.nielsen.app.sdk.l;
import java.util.HashMap;

final class NielsenFragment$a
  extends WebViewClient
{
  private NielsenFragment$a(NielsenFragment paramNielsenFragment) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    paramWebView = NielsenFragment.h;
    paramWebView = NielsenFragment.h;
    new StringBuilder("comparing ").append(paramString).append(" to ").append(NielsenFragment.c(a));
    if ((NielsenFragment.c(a) != null) && (paramString.equals(NielsenFragment.c(a))))
    {
      paramWebView = NielsenFragment.h;
      a.d();
      NielsenFragment.a(a, Action.s);
      paramWebView = new HashMap();
      paramWebView.put("appState", "cbscom:Settings Page");
      paramWebView.put("eVar2", "us");
      paramWebView.put("eVar3", "native app");
      paramWebView.put("eVar5", "cbsicsapp");
      paramWebView.put("rsid", "cbsicsapp");
      AnalyticsManager.a(NielsenFragment.e(a), NielsenFragment.f(a), paramWebView);
    }
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    paramWebView = NielsenFragment.h;
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    paramWebView = NielsenFragment.h;
    a.d();
    a.a();
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    paramWebView = NielsenFragment.h;
    new StringBuilder("onReceivedSslError: ").append(paramSslError.getPrimaryError());
    a.d();
    a.a();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = NielsenFragment.h;
    if (paramString.contains("close"))
    {
      paramWebView = NielsenFragment.h;
      a.e();
    }
    for (;;)
    {
      return true;
      if (NielsenFragment.b(a) != null)
      {
        paramWebView = NielsenFragment.h;
        NielsenFragment.b(a);
        l.d(paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.NielsenFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */