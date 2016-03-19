package com.cbs.app.view;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;

public class VideoEnabledWebView
  extends WebView
{
  public static final ViewGroup.LayoutParams a = new ViewGroup.LayoutParams(-1, -1);
  private static final String b = VideoEnabledWebView.class.getSimpleName();
  private FrameLayout c = null;
  private View d = null;
  private WebChromeClient.CustomViewCallback e;
  private Activity f;
  private View g;
  private WebVideoListener h;
  
  public VideoEnabledWebView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public VideoEnabledWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public VideoEnabledWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a(Context paramContext)
  {
    clearCache(true);
    clearHistory();
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setUseWideViewPort(true);
    localWebSettings.setLoadWithOverviewMode(true);
    f = ((Activity)paramContext);
    setWebChromeClient(new b((byte)0));
  }
  
  public final boolean a()
  {
    setVisibility(0);
    if (d == null) {
      return false;
    }
    setFullscreen(false);
    FrameLayout localFrameLayout = (FrameLayout)f.getWindow().getDecorView();
    c.removeView(d);
    localFrameLayout.removeView(c);
    c = null;
    d = null;
    if (h != null) {
      h.b(this);
    }
    e.onCustomViewHidden();
    return true;
  }
  
  public void destroy()
  {
    a();
    loadUrl("about:blank");
    stopLoading();
    super.destroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (a()) {
        return true;
      }
      if (canGoBack())
      {
        goBack();
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void setFullscreen(boolean paramBoolean)
  {
    Window localWindow = f.getWindow();
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    if (paramBoolean) {
      flags |= 0x400;
    }
    for (;;)
    {
      localWindow.setAttributes(localLayoutParams);
      return;
      flags &= 0xFBFF;
      if (d != null) {
        d.setSystemUiVisibility(0);
      }
    }
  }
  
  public void setWebVideoListener(WebVideoListener paramWebVideoListener)
  {
    h = paramWebVideoListener;
  }
  
  public static abstract interface WebVideoListener
  {
    public abstract void a(VideoEnabledWebView paramVideoEnabledWebView);
    
    public abstract void b(VideoEnabledWebView paramVideoEnabledWebView);
  }
  
  static final class a
    extends FrameLayout
  {
    public a(Context paramContext)
    {
      super();
      setBackgroundColor(-16777216);
    }
    
    public final boolean onTouchEvent(MotionEvent paramMotionEvent)
    {
      return true;
    }
  }
  
  private final class b
    extends WebChromeClient
  {
    private b() {}
    
    public final View getVideoLoadingProgressView()
    {
      if (VideoEnabledWebView.e(VideoEnabledWebView.this) == null)
      {
        LayoutInflater localLayoutInflater = LayoutInflater.from(VideoEnabledWebView.c(VideoEnabledWebView.this));
        VideoEnabledWebView.b(VideoEnabledWebView.this, localLayoutInflater.inflate(2130903316, null));
      }
      return VideoEnabledWebView.e(VideoEnabledWebView.this);
    }
    
    public final void onHideCustomView()
    {
      VideoEnabledWebView.b();
      a();
    }
    
    public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
    {
      if (VideoEnabledWebView.a(VideoEnabledWebView.this) != null)
      {
        paramCustomViewCallback.onCustomViewHidden();
        return;
      }
      if (VideoEnabledWebView.b(VideoEnabledWebView.this) != null) {
        VideoEnabledWebView.b(VideoEnabledWebView.this).a(VideoEnabledWebView.this);
      }
      VideoEnabledWebView.b();
      FrameLayout localFrameLayout = (FrameLayout)VideoEnabledWebView.c(VideoEnabledWebView.this).getWindow().getDecorView();
      VideoEnabledWebView.a(VideoEnabledWebView.this, new VideoEnabledWebView.a(VideoEnabledWebView.c(VideoEnabledWebView.this)));
      VideoEnabledWebView.d(VideoEnabledWebView.this).addView(paramView, VideoEnabledWebView.a);
      localFrameLayout.addView(VideoEnabledWebView.d(VideoEnabledWebView.this), VideoEnabledWebView.a);
      VideoEnabledWebView.a(VideoEnabledWebView.this, paramView);
      setFullscreen(true);
      setVisibility(4);
      VideoEnabledWebView.a(VideoEnabledWebView.this, paramCustomViewCallback);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoEnabledWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */