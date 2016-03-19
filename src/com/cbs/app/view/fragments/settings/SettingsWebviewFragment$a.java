package com.cbs.app.view.fragments.settings;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class SettingsWebviewFragment$a
  extends WebViewClient
{
  private boolean b = false;
  
  private SettingsWebviewFragment$a(SettingsWebviewFragment paramSettingsWebviewFragment) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    paramWebView = SettingsWebviewFragment.h;
    a.d();
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    paramWebView = SettingsWebviewFragment.h;
    if (!b)
    {
      a.b();
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          a.d();
        }
      }, 5000L);
      b = true;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    String str = SettingsWebviewFragment.h;
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsWebviewFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */