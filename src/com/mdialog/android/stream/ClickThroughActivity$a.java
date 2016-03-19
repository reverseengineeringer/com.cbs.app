package com.mdialog.android.stream;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class ClickThroughActivity$a
  extends WebViewClient
{
  private ClickThroughActivity$a(ClickThroughActivity paramClickThroughActivity) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    super.onLoadResource(paramWebView, paramString);
    ClickThroughActivity.a(a);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    ClickThroughActivity.a(a);
    ClickThroughActivity.c(a);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    ClickThroughActivity.a(a);
    ClickThroughActivity.d(a);
  }
}

/* Location:
 * Qualified Name:     com.mdialog.android.stream.ClickThroughActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */