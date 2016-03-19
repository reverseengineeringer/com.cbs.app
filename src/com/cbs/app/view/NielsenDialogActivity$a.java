package com.cbs.app.view;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;

final class NielsenDialogActivity$a
  extends WebViewClient
{
  private boolean b = false;
  
  private NielsenDialogActivity$a(NielsenDialogActivity paramNielsenDialogActivity) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    NielsenDialogActivity.a();
  }
  
  public final void onPageStarted(final WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    NielsenDialogActivity.a();
    if (!b)
    {
      new Handler().postDelayed(new Runnable()
      {
        public final void run()
        {
          paramWebView.setVisibility(0);
          a.b.setVisibility(8);
        }
      }, 5000L);
      b = true;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    NielsenDialogActivity.a();
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.NielsenDialogActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */