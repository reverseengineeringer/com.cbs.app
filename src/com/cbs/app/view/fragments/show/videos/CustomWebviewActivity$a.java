package com.cbs.app.view.fragments.show.videos;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Util;

final class CustomWebviewActivity$a
  extends WebViewClient
{
  private CustomWebviewActivity$a(CustomWebviewActivity paramCustomWebviewActivity) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool2 = false;
    CustomWebviewActivity.a();
    boolean bool1 = bool2;
    if (paramString != null)
    {
      bool1 = bool2;
      if (!paramString.equals(" ")) {
        if (!paramString.contains("cbs-svod://"))
        {
          bool1 = bool2;
          if (!paramString.contains("cbs://")) {}
        }
        else
        {
          paramWebView = Uri.parse(Util.d(paramString));
          CustomWebviewActivity.a();
          if (UriHandler.a(a, paramWebView)) {
            a.finish();
          }
          bool1 = true;
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.CustomWebviewActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */