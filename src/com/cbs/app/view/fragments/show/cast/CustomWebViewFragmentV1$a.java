package com.cbs.app.view.fragments.show.cast;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Util;

final class CustomWebViewFragmentV1$a
  extends WebViewClient
{
  private CustomWebViewFragmentV1$a(CustomWebViewFragmentV1 paramCustomWebViewFragmentV1) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    a.d();
    super.onPageFinished(paramWebView, paramString);
    paramWebView = CustomWebViewFragmentV1.h;
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.b();
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    paramWebView = CustomWebViewFragmentV1.h;
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    super.onReceivedError(paramWebView, paramSslError.getPrimaryError(), paramSslError.toString(), paramSslError.getUrl());
    paramWebView = CustomWebViewFragmentV1.h;
    new StringBuilder(" error message: ").append(paramSslError.getPrimaryError()).append(paramSslError.getUrl()).append(paramSslError.toString());
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = CustomWebViewFragmentV1.h;
    if ((paramString != null) && (!paramString.equals(" ")) && ((paramString.contains("cbs-svod://")) || (paramString.contains("cbs://"))))
    {
      paramWebView = Uri.parse(Util.d(paramString));
      UriHandler.a(a.getActivity(), paramWebView);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CustomWebViewFragmentV1.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */