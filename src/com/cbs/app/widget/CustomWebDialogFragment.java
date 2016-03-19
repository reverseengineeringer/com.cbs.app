package com.cbs.app.widget;

import android.app.Dialog;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.utils.Util;

public class CustomWebDialogFragment
  extends DialogFragment
{
  private static final String a = CustomWebDialogFragment.class.getSimpleName();
  private WebView b = null;
  private String c = null;
  private Dialog d = null;
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    b.loadUrl(c);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    d = super.onCreateDialog(paramBundle);
    d.getWindow().requestFeature(1);
    return d;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903185, paramViewGroup, false);
    b = ((WebView)paramLayoutInflater.findViewById(2131690074));
    paramViewGroup = b;
    paramViewGroup.getSettings().setJavaScriptEnabled(true);
    paramViewGroup.clearCache(true);
    paramViewGroup.setScrollBarStyle(0);
    paramViewGroup.setWebViewClient(new a((byte)0));
    c = getArguments().getString("launchUrl");
    return paramLayoutInflater;
  }
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
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
        UriHandler.a(getActivity(), paramWebView);
        CustomWebDialogFragment.a(CustomWebDialogFragment.this).dismiss();
        return true;
      }
      return super.shouldOverrideUrlLoading(paramWebView, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.CustomWebDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */