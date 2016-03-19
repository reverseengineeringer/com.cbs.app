package com.cbs.app.view.fragments.settings;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.view.AbstractAsyncFragment;

public class SettingsWebviewFragment
  extends AbstractAsyncFragment
{
  protected static final String h = SettingsWebviewFragment.class.getSimpleName();
  private String i = null;
  
  @SuppressLint({"SetJavaScriptEnabled"})
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = getArguments();
    if (paramBundle != null) {
      i = paramBundle.getString("pageUrl");
    }
    paramLayoutInflater = paramLayoutInflater.inflate(2130903266, paramViewGroup, false);
    if ((paramLayoutInflater != null) && (i != null))
    {
      paramViewGroup = (WebView)paramLayoutInflater.findViewById(2131690176);
      if (paramViewGroup != null)
      {
        paramViewGroup.setWebViewClient(new a((byte)0));
        paramBundle = paramViewGroup.getSettings();
        paramBundle.setBuiltInZoomControls(true);
        paramBundle.setDisplayZoomControls(false);
        paramBundle.setSupportZoom(true);
        paramBundle.setJavaScriptEnabled(true);
        paramViewGroup.loadUrl(i);
      }
    }
    return paramLayoutInflater;
  }
  
  private final class a
    extends WebViewClient
  {
    private boolean b = false;
    
    private a() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      paramWebView = SettingsWebviewFragment.h;
      d();
    }
    
    public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      paramWebView = SettingsWebviewFragment.h;
      if (!b)
      {
        b();
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            d();
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
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.SettingsWebviewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */