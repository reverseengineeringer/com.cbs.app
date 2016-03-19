package com.cbs.app.livetv.fragment;

import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class MvpdLogoutFragment$a
  extends WebChromeClient
{
  private MvpdLogoutFragment$a(MvpdLogoutFragment paramMvpdLogoutFragment) {}
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    super.onProgressChanged(paramWebView, paramInt);
    paramWebView = MvpdLogoutFragment.a(a);
    if ((paramInt > 0) && (paramInt < 100)) {}
    for (paramInt = 0;; paramInt = 8)
    {
      paramWebView.setVisibility(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MvpdLogoutFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */