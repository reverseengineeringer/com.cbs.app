package com.cbs.app.adobepass;

import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class MvpdLogoutActivity$a
  extends WebChromeClient
{
  private MvpdLogoutActivity$a(MvpdLogoutActivity paramMvpdLogoutActivity) {}
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    super.onProgressChanged(paramWebView, paramInt);
    paramWebView = MvpdLogoutActivity.a(a);
    if ((paramInt > 0) && (paramInt < 100)) {}
    for (paramInt = 0;; paramInt = 8)
    {
      paramWebView.setVisibility(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.adobepass.MvpdLogoutActivity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */