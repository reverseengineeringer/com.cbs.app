package com.cbs.app.adobepass;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.adobepass.accessenabler.api.a;
import com.cbs.app.view.NavigationActivity;
import java.net.URLDecoder;

final class MvpdLogoutActivity$1
  extends WebViewClient
{
  MvpdLogoutActivity$1(MvpdLogoutActivity paramMvpdLogoutActivity) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.equals(URLDecoder.decode(a.a)))
    {
      Intent localIntent = new Intent(a, NavigationActivity.class);
      a.setResult(-1, localIntent);
      a.finish();
    }
    paramWebView.loadUrl(paramString);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.MvpdLogoutActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */