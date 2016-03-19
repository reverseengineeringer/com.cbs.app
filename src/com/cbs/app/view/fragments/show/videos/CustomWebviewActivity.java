package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.AbstractWebViewActivity;
import com.cbs.app.view.utils.Util;

public class CustomWebviewActivity
  extends AbstractWebViewActivity
{
  private static final String c = CustomWebviewActivity.class.getSimpleName();
  private WebView d;
  
  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903185);
    paramBundle = getIntent().getExtras().getString("launchUrl");
    if (paramBundle != null)
    {
      d = ((WebView)findViewById(2131690074));
      d.setWebViewClient(new a((byte)0));
      d.getSettings().setJavaScriptEnabled(true);
      d.loadUrl(paramBundle);
    }
  }
  
  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = false;
    if (paramKeyEvent.getAction() == 0) {}
    switch (paramInt)
    {
    default: 
      bool = super.onKeyDown(paramInt, paramKeyEvent);
      return bool;
    }
    if (d.canGoBack()) {
      d.goBack();
    }
    for (;;)
    {
      return true;
      setResult(0, new Intent());
      finish();
    }
  }
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
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
            if (UriHandler.a(CustomWebviewActivity.this, paramWebView)) {
              finish();
            }
            bool1 = true;
          }
        }
      }
      return bool1;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.CustomWebviewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */