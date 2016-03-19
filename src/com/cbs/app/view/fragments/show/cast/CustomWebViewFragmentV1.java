package com.cbs.app.view.fragments.show.cast;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.cbs.app.uri.UriHandler;
import com.cbs.app.view.AbstractAsyncFragment;
import com.cbs.app.view.VideoEnabledWebView;
import com.cbs.app.view.VideoEnabledWebView.WebVideoListener;
import com.cbs.app.view.utils.Util;

public class CustomWebViewFragmentV1
  extends AbstractAsyncFragment
  implements VideoEnabledWebView.WebVideoListener
{
  protected static final String h = CustomWebViewFragmentV1.class.getSimpleName();
  private VideoEnabledWebView i;
  private String j = null;
  
  public final void a(VideoEnabledWebView paramVideoEnabledWebView)
  {
    if (getResourcesgetConfigurationorientation == 1) {}
    for (int k = 1;; k = 0)
    {
      FragmentActivity localFragmentActivity = getActivity();
      if ((k != 0) && (Util.e(localFragmentActivity))) {
        localFragmentActivity.setRequestedOrientation(4);
      }
      if ((localFragmentActivity instanceof VideoEnabledWebView.WebVideoListener)) {
        ((VideoEnabledWebView.WebVideoListener)localFragmentActivity).a(paramVideoEnabledWebView);
      }
      return;
    }
  }
  
  public final void b(VideoEnabledWebView paramVideoEnabledWebView)
  {
    FragmentActivity localFragmentActivity = getActivity();
    if (Util.e(localFragmentActivity)) {
      localFragmentActivity.setRequestedOrientation(1);
    }
    if ((localFragmentActivity instanceof VideoEnabledWebView.WebVideoListener)) {
      ((VideoEnabledWebView.WebVideoListener)localFragmentActivity).b(paramVideoEnabledWebView);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (i != null)
    {
      i.destroy();
      i = null;
    }
    paramLayoutInflater = getArguments();
    if (paramLayoutInflater != null)
    {
      j = paramLayoutInflater.getString("pageUrl");
      new StringBuilder("url in customWebviewfragment : ").append(j);
    }
    i = new VideoEnabledWebView(getActivity());
    i.setWebViewClient(new a((byte)0));
    i.setWebVideoListener(this);
    i.loadUrl(j);
    return i;
  }
  
  public void onDestroy()
  {
    if (i != null)
    {
      i.destroy();
      i = null;
    }
    super.onDestroy();
  }
  
  public void onPause()
  {
    super.onPause();
    i.onPause();
  }
  
  public void onResume()
  {
    i.onResume();
    super.onResume();
  }
  
  private final class a
    extends WebViewClient
  {
    private a() {}
    
    public final void onPageFinished(WebView paramWebView, String paramString)
    {
      d();
      super.onPageFinished(paramWebView, paramString);
      paramWebView = CustomWebViewFragmentV1.h;
    }
    
    public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
    {
      b();
      super.onPageStarted(paramWebView, paramString, paramBitmap);
      paramWebView = CustomWebViewFragmentV1.h;
    }
    
    public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
    {
      super.onReceivedError(paramWebView, paramSslError.getPrimaryError(), paramSslError.toString(), paramSslError.getUrl());
      paramWebView = CustomWebViewFragmentV1.h;
      new StringBuilder(" error message: ").append(paramSslError.getPrimaryError()).append(paramSslError.getUrl()).append(paramSslError.toString());
      paramSslErrorHandler.proceed();
    }
    
    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView = CustomWebViewFragmentV1.h;
      if ((paramString != null) && (!paramString.equals(" ")) && ((paramString.contains("cbs-svod://")) || (paramString.contains("cbs://"))))
      {
        paramWebView = Uri.parse(Util.d(paramString));
        UriHandler.a(getActivity(), paramWebView);
        return true;
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CustomWebViewFragmentV1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */