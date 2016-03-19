package com.cbs.app.view;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.service.social.OAuthBuilder;
import com.cbs.app.service.social.TwitterOAuthImpl;

final class TwitterWebOAuthActivity$a
  extends WebViewClient
{
  private TwitterWebOAuthActivity$a(TwitterWebOAuthActivity paramTwitterWebOAuthActivity) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = true;
    paramWebView = AbstractWebViewActivity.a;
    if (paramString != null) {
      if ((paramString.contains(TwitterWebOAuthActivity.a(a))) || (paramString.contains("signup"))) {
        bool = false;
      }
    }
    for (;;)
    {
      return bool;
      if (paramString.contains("denied"))
      {
        paramWebView = new Intent();
        a.setResult(0, paramWebView);
        a.finish();
      }
      else
      {
        paramString = Uri.parse(paramString);
        paramWebView = paramString.getQueryParameter("oauth_verifier");
        paramString = paramString.getQueryParameter("oauth_token");
        if ((paramWebView == null) || (paramString == null))
        {
          TwitterWebOAuthActivity.b(a);
          return false;
        }
        TwitterWebOAuthActivity.d(a).a(TwitterWebOAuthActivity.c(a).a(paramString, paramWebView));
        continue;
        bool = false;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.TwitterWebOAuthActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */