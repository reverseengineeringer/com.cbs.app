package com.cbs.app.view.fragments.show;

import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.utils.Util;

public class CustomWebViewFragment
  extends AbstractAsyncFragment
{
  private WebView h;
  private FrameLayout i;
  private FrameLayout j;
  private View k;
  private WebChromeClient l;
  private WebChromeClient.CustomViewCallback m;
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = paramLayoutInflater.inflate(2130903143, paramViewGroup, false);
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null) {}
    for (paramLayoutInflater = paramLayoutInflater.getString("pageUrl");; paramLayoutInflater = null)
    {
      h = ((WebView)paramViewGroup.findViewById(2131689901));
      h.setOnKeyListener(new View.OnKeyListener()
      {
        public final boolean onKey(View paramAnonymousView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
        {
          CustomWebViewFragment.a();
          if (paramAnonymousInt == 4)
          {
            if (CustomWebViewFragment.a(CustomWebViewFragment.this) != null)
            {
              CustomWebViewFragment.b(CustomWebViewFragment.this).onHideCustomView();
              return true;
            }
            if ((CustomWebViewFragment.c(CustomWebViewFragment.this) != null) && (CustomWebViewFragment.c(CustomWebViewFragment.this).canGoBack()))
            {
              CustomWebViewFragment.c(CustomWebViewFragment.this).goBack();
              return true;
            }
          }
          return false;
        }
      });
      h.setWebViewClient(new b((byte)0));
      l = new a((byte)0);
      h.setWebChromeClient(l);
      h.loadUrl(paramLayoutInflater);
      paramLayoutInflater = h.getSettings();
      paramLayoutInflater.setJavaScriptEnabled(true);
      paramLayoutInflater.setDomStorageEnabled(true);
      paramLayoutInflater.setUseWideViewPort(true);
      paramLayoutInflater.setLoadWithOverviewMode(true);
      i = ((FrameLayout)paramViewGroup.findViewById(2131689900));
      j = ((FrameLayout)paramViewGroup.findViewById(2131689902));
      return paramViewGroup;
    }
  }
  
  public void onDestroy()
  {
    if (h != null)
    {
      h.destroy();
      h = null;
    }
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
  }
  
  public void onPause()
  {
    super.onPause();
    h.onPause();
  }
  
  public void onResume()
  {
    h.onResume();
    super.onResume();
  }
  
  private final class a
    extends WebChromeClient
  {
    private a() {}
    
    public final void onHideCustomView()
    {
      CustomWebViewFragment.f();
      if (CustomWebViewFragment.a(CustomWebViewFragment.this) != null)
      {
        CustomWebViewFragment.a(CustomWebViewFragment.this).setVisibility(8);
        CustomWebViewFragment.d(CustomWebViewFragment.this).removeView(CustomWebViewFragment.a(CustomWebViewFragment.this));
        CustomWebViewFragment.a(CustomWebViewFragment.this, null);
        CustomWebViewFragment.d(CustomWebViewFragment.this).setVisibility(8);
        CustomWebViewFragment.f(CustomWebViewFragment.this).onCustomViewHidden();
        CustomWebViewFragment.e(CustomWebViewFragment.this).setVisibility(0);
      }
    }
    
    public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
    {
      CustomWebViewFragment.e();
      CustomWebViewFragment.a(CustomWebViewFragment.this, paramCustomViewCallback);
      CustomWebViewFragment.a(CustomWebViewFragment.this, paramView);
      CustomWebViewFragment.d(CustomWebViewFragment.this).addView(CustomWebViewFragment.a(CustomWebViewFragment.this));
      CustomWebViewFragment.e(CustomWebViewFragment.this).setVisibility(8);
      CustomWebViewFragment.d(CustomWebViewFragment.this).setVisibility(0);
      CustomWebViewFragment.d(CustomWebViewFragment.this).bringToFront();
    }
  }
  
  private final class b
    extends WebViewClient
  {
    private b() {}
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (paramWebView != null)
      {
        bool1 = bool2;
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
              UriHandler.a(getActivity(), paramWebView);
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.CustomWebViewFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */