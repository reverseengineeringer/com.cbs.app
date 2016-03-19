package com.cbs.app.livetv.fragment;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.adobepass.accessenabler.api.a;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.view.model.MVPDConfig;
import java.net.URLDecoder;
import java.util.HashMap;

public class MvpdLoginFragment
  extends Fragment
{
  private String a;
  private View b;
  private MVPDConfig c;
  private final WebViewClient d = new WebViewClient()
  {
    public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
    }
    
    public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
    {
      super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
    }
    
    public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
    {
      super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
    }
    
    public final void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
    {
      paramAnonymousSslErrorHandler.proceed();
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
    {
      if (paramAnonymousString.equals(URLDecoder.decode(a.a))) {
        MVPDController.getInstance().getAuthenticationToken();
      }
      return false;
    }
  };
  
  public static MvpdLoginFragment a(String paramString, MVPDConfig paramMVPDConfig)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("url", paramString);
    localBundle.putParcelable("mvpd", paramMVPDConfig);
    paramString = new MvpdLoginFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getArguments().getString("url");
    c = ((MVPDConfig)getArguments().getParcelable("mvpd"));
    paramBundle = new HashMap();
    paramBundle.put("pageTitle", "live-tv|provider|signin");
    paramBundle.put("evar_6", "liveTV|provider|signin");
    paramBundle.put("evar_10", "provider_signin");
    paramBundle.put("pageView", Boolean.TRUE.toString());
    AnalyticsManager.a(getActivity(), Action.cX, paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903172, paramViewGroup, false);
    paramViewGroup = (WebView)paramLayoutInflater.findViewById(2131690023);
    paramViewGroup.setWebViewClient(d);
    paramViewGroup.setWebChromeClient(new a((byte)0));
    paramBundle = paramViewGroup.getSettings();
    paramBundle.setJavaScriptEnabled(true);
    paramBundle.setJavaScriptCanOpenWindowsAutomatically(true);
    new StringBuilder("Loading: ").append(a);
    paramViewGroup.loadUrl(a);
    b = paramLayoutInflater.findViewById(2131690024);
    return paramLayoutInflater;
  }
  
  private final class a
    extends WebChromeClient
  {
    private a() {}
    
    public final void onProgressChanged(WebView paramWebView, int paramInt)
    {
      super.onProgressChanged(paramWebView, paramInt);
      paramWebView = MvpdLoginFragment.a(MvpdLoginFragment.this);
      if ((paramInt > 0) && (paramInt < 100)) {}
      for (paramInt = 0;; paramInt = 8)
      {
        paramWebView.setVisibility(paramInt);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.MvpdLoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */