package com.google.android.gms.internal;

import android.app.Activity;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

@fs
public class gx
{
  public static gx a(int paramInt)
  {
    if (paramInt >= 19) {
      return new gx.g();
    }
    if (paramInt >= 18) {
      return new gx.e();
    }
    if (paramInt >= 17) {
      return new gx.d();
    }
    if (paramInt >= 16) {
      return new gx.f();
    }
    if (paramInt >= 14) {
      return new gx.c();
    }
    if (paramInt >= 11) {
      return new gx.b();
    }
    if (paramInt >= 9) {
      return new gx.a();
    }
    return new gx();
  }
  
  public static boolean a(WebView paramWebView)
  {
    if (paramWebView == null) {
      return false;
    }
    paramWebView.onPause();
    return true;
  }
  
  public static boolean b(WebView paramWebView)
  {
    if (paramWebView == null) {
      return false;
    }
    paramWebView.onResume();
    return true;
  }
  
  public int a()
  {
    return 0;
  }
  
  public Drawable a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean, float paramFloat)
  {
    return new BitmapDrawable(paramContext.getResources(), paramBitmap);
  }
  
  public WebChromeClient a(hs paramhs)
  {
    return null;
  }
  
  public hu a(hs paramhs, boolean paramBoolean)
  {
    return new hu(paramhs, paramBoolean);
  }
  
  public String a(Context paramContext)
  {
    return "";
  }
  
  public String a(SslError paramSslError)
  {
    return "";
  }
  
  public Set<String> a(Uri paramUri)
  {
    if (paramUri.isOpaque()) {
      return Collections.emptySet();
    }
    paramUri = paramUri.getEncodedQuery();
    if (paramUri == null) {
      return Collections.emptySet();
    }
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int j = 0;
    int i;
    do
    {
      int k = paramUri.indexOf('&', j);
      i = k;
      if (k == -1) {
        i = paramUri.length();
      }
      int m = paramUri.indexOf('=', j);
      if (m <= i)
      {
        k = m;
        if (m != -1) {}
      }
      else
      {
        k = i;
      }
      localLinkedHashSet.add(Uri.decode(paramUri.substring(j, k)));
      i += 1;
      j = i;
    } while (i < paramUri.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }
  
  public void a(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramActivity = paramActivity.getWindow();
    if ((paramActivity != null) && (paramActivity.getDecorView() != null) && (paramActivity.getDecorView().getViewTreeObserver() != null)) {
      a(paramActivity.getDecorView().getViewTreeObserver(), paramOnGlobalLayoutListener);
    }
  }
  
  public void a(View paramView, Drawable paramDrawable)
  {
    paramView.setBackgroundDrawable(paramDrawable);
  }
  
  public void a(ViewTreeObserver paramViewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    paramViewTreeObserver.removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public boolean a(DownloadManager.Request paramRequest)
  {
    return false;
  }
  
  public boolean a(Context paramContext, WebSettings paramWebSettings)
  {
    return false;
  }
  
  public boolean a(View paramView)
  {
    return (paramView.getWindowToken() != null) || (paramView.getWindowVisibility() != 8);
  }
  
  public boolean a(Window paramWindow)
  {
    return false;
  }
  
  public int b()
  {
    return 1;
  }
  
  public boolean b(View paramView)
  {
    return false;
  }
  
  public int c()
  {
    return 5;
  }
  
  public boolean c(View paramView)
  {
    return false;
  }
  
  public ViewGroup.LayoutParams d()
  {
    return new ViewGroup.LayoutParams(-2, -2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */