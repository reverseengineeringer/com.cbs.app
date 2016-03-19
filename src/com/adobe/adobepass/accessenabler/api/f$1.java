package com.adobe.adobepass.accessenabler.api;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.adobepass.accessenabler.d.c;

final class f$1
  extends WebViewClient
{
  f$1(f paramf) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    c.a("PassiveAuthnService", "Page loaded: " + paramString);
    super.onPageFinished(paramWebView, paramString);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    c.a("PassiveAuthnService", "Page started: " + paramString);
    if ((paramString.contains("/completePassiveAuthentication")) && (!paramString.contains("/authenticate/saml")) && (aa).a == e.a.a))
    {
      f.b(a).cancel();
      paramWebView = new Intent(f.c(a), AccessEnablerService.class);
      paramString = new Bundle();
      paramString.putInt("op_code", 4);
      paramWebView.putExtras(paramString);
      f.c(a).startService(paramWebView);
      return;
    }
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    c.a("PassiveAuthnService", paramString1);
    c.a("PassiveAuthnService", paramString2);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    c.a("PassiveAuthnService", "Ignoring SSL certificate error.");
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    c.a("PassiveAuthnService", "Loading URL: " + paramString);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */