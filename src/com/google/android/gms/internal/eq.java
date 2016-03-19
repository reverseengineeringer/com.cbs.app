package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@fs
public final class eq
  implements eo
{
  final Set<WebView> a = Collections.synchronizedSet(new HashSet());
  private final Context b;
  
  public eq(Context paramContext)
  {
    b = paramContext;
  }
  
  public final WebView a()
  {
    WebView localWebView = new WebView(b);
    localWebView.getSettings().setJavaScriptEnabled(true);
    return localWebView;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    b.a(3);
    gw.a.post(new eq.1(this, paramString1, paramString2));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.eq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */