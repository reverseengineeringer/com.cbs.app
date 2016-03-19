package com.cbs.app.view.fragments.show;

import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Util;

final class CustomWebViewFragment$b
  extends WebViewClient
{
  private CustomWebViewFragment$b(CustomWebViewFragment paramCustomWebViewFragment) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramWebView != null)
    {
      bool1 = bool2;
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
            UriHandler.a(a.getActivity(), paramWebView);
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.CustomWebViewFragment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */