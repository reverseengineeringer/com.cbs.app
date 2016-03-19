package com.cbs.app.widget;

import android.app.Dialog;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Util;

final class CustomWebDialogFragment$a
  extends WebViewClient
{
  private CustomWebDialogFragment$a(CustomWebDialogFragment paramCustomWebDialogFragment) {}
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Log.e(CustomWebDialogFragment.a(), paramString2);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    CustomWebDialogFragment.a();
    CustomWebDialogFragment.a();
    if ((paramString != null) && (!paramString.equals(" ")) && ((paramString.contains("cbs-svod://")) || (paramString.contains("cbs://"))))
    {
      paramWebView = Uri.parse(Util.d(paramString));
      CustomWebDialogFragment.a();
      UriHandler.a(a.getActivity(), paramWebView);
      CustomWebDialogFragment.a(a).dismiss();
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.CustomWebDialogFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */