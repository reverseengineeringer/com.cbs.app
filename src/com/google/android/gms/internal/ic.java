package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.internal.y;
import java.net.URI;
import java.net.URISyntaxException;

@fs
public final class ic
  extends WebViewClient
{
  private final String a;
  private boolean b;
  private final hs c;
  private final fe d;
  
  public ic(fe paramfe, hs paramhs, String paramString)
  {
    a = b(paramString);
    b = false;
    c = paramhs;
    d = paramfe;
  }
  
  private boolean a(String paramString)
  {
    paramString = b(paramString);
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return false;
      try
      {
        Object localObject1 = new URI(paramString);
        if ("passback".equals(((URI)localObject1).getScheme()))
        {
          b.a(3);
          d.b();
          return true;
        }
        if (!TextUtils.isEmpty(a))
        {
          Object localObject2 = new URI(a);
          paramString = ((URI)localObject2).getHost();
          String str = ((URI)localObject1).getHost();
          localObject2 = ((URI)localObject2).getPath();
          localObject1 = ((URI)localObject1).getPath();
          if ((y.a(paramString, str)) && (y.a(localObject2, localObject1)))
          {
            b.a(3);
            d.b();
            return true;
          }
        }
      }
      catch (URISyntaxException paramString)
      {
        b.a(paramString.getMessage());
      }
    }
    return false;
  }
  
  private static String b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return paramString;
      try
      {
        if (paramString.endsWith("/"))
        {
          String str = paramString.substring(0, paramString.length() - 1);
          return str;
        }
      }
      catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
      {
        b.a(localIndexOutOfBoundsException.getMessage());
      }
    }
    return paramString;
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    new StringBuilder("JavascriptAdWebViewClient::onLoadResource: ").append(paramString);
    b.a(3);
    if (!a(paramString)) {
      c.k().onLoadResource(c.a(), paramString);
    }
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    new StringBuilder("JavascriptAdWebViewClient::onPageFinished: ").append(paramString);
    b.a(3);
    if (!b)
    {
      d.a();
      b = true;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    new StringBuilder("JavascriptAdWebViewClient::shouldOverrideUrlLoading: ").append(paramString);
    b.a(3);
    if (a(paramString))
    {
      b.a(3);
      return true;
    }
    return c.k().shouldOverrideUrlLoading(c.a(), paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */