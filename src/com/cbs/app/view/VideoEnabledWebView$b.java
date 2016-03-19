package com.cbs.app.view;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;

final class VideoEnabledWebView$b
  extends WebChromeClient
{
  private VideoEnabledWebView$b(VideoEnabledWebView paramVideoEnabledWebView) {}
  
  public final View getVideoLoadingProgressView()
  {
    if (VideoEnabledWebView.e(a) == null)
    {
      LayoutInflater localLayoutInflater = LayoutInflater.from(VideoEnabledWebView.c(a));
      VideoEnabledWebView.b(a, localLayoutInflater.inflate(2130903316, null));
    }
    return VideoEnabledWebView.e(a);
  }
  
  public final void onHideCustomView()
  {
    VideoEnabledWebView.b();
    a.a();
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    if (VideoEnabledWebView.a(a) != null)
    {
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    if (VideoEnabledWebView.b(a) != null) {
      VideoEnabledWebView.b(a).a(a);
    }
    VideoEnabledWebView.b();
    FrameLayout localFrameLayout = (FrameLayout)VideoEnabledWebView.c(a).getWindow().getDecorView();
    VideoEnabledWebView.a(a, new VideoEnabledWebView.a(VideoEnabledWebView.c(a)));
    VideoEnabledWebView.d(a).addView(paramView, VideoEnabledWebView.a);
    localFrameLayout.addView(VideoEnabledWebView.d(a), VideoEnabledWebView.a);
    VideoEnabledWebView.a(a, paramView);
    a.setFullscreen(true);
    a.setVisibility(4);
    VideoEnabledWebView.a(a, paramCustomViewCallback);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoEnabledWebView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */