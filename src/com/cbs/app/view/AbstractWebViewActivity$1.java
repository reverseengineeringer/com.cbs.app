package com.cbs.app.view;

import android.app.Activity;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class AbstractWebViewActivity$1
  extends WebChromeClient
{
  AbstractWebViewActivity$1(AbstractWebViewActivity paramAbstractWebViewActivity) {}
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    AbstractWebViewActivity.a(a).setTitle("Loading...");
    AbstractWebViewActivity.a(a).setProgress(paramInt * 100);
    if (paramInt == 100) {
      AbstractWebViewActivity.a(a).setTitle(2131230843);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractWebViewActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */