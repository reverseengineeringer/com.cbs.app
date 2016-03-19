package com.cbs.app.view;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public abstract class AbstractWebViewActivity
  extends Activity
  implements AsyncActivity
{
  protected static final String a = AbstractWebViewActivity.class.getSimpleName();
  protected WebView b;
  private Activity c;
  private ProgressDialog d = null;
  
  public MainApplication getApplicationContext()
  {
    return (MainApplication)super.getApplicationContext();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(2);
    getWindow().setFeatureInt(2, -1);
    b = new WebView(this);
    setContentView(b);
    c = this;
    b.setWebChromeClient(new WebChromeClient()
    {
      public final void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        AbstractWebViewActivity.a(AbstractWebViewActivity.this).setTitle("Loading...");
        AbstractWebViewActivity.a(AbstractWebViewActivity.this).setProgress(paramAnonymousInt * 100);
        if (paramAnonymousInt == 100) {
          AbstractWebViewActivity.a(AbstractWebViewActivity.this).setTitle(2131230843);
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.AbstractWebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */