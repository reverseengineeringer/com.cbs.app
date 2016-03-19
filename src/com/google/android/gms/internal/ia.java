package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@fs
public final class ia
  extends hu
{
  public ia(hs paramhs, boolean paramBoolean)
  {
    super(paramhs, paramBoolean);
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    try
    {
      if (!"mraid.js".equalsIgnoreCase(new File(paramString).getName())) {
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      if (!(paramWebView instanceof hs))
      {
        b.a(5);
        return super.shouldInterceptRequest(paramWebView, paramString);
      }
      Object localObject2 = (hs)paramWebView;
      ((hs)localObject2).k().f();
      if (je)
      {
        localObject1 = ax.F;
        localObject1 = (String)o.n().a((at)localObject1);
      }
      for (;;)
      {
        new StringBuilder("shouldInterceptRequest(").append((String)localObject1).append(")");
        b.a(2);
        localObject2 = ((hs)localObject2).getContext();
        String str = a.n().b;
        HashMap localHashMap = new HashMap();
        localHashMap.put("User-Agent", o.e().a((Context)localObject2, str));
        localHashMap.put("Cache-Control", "max-stale=3600");
        localObject1 = (String)new ha((Context)localObject2).a((String)localObject1, localHashMap).get(60L, TimeUnit.SECONDS);
        if (localObject1 != null) {
          break;
        }
        return null;
        if (((hs)localObject2).o())
        {
          localObject1 = ax.E;
          localObject1 = (String)o.n().a((at)localObject1);
        }
        else
        {
          localObject1 = ax.D;
          localObject1 = (String)o.n().a((at)localObject1);
        }
      }
      Object localObject1 = new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(((String)localObject1).getBytes("UTF-8")));
      return (WebResourceResponse)localObject1;
    }
    catch (InterruptedException localInterruptedException)
    {
      new StringBuilder("Could not fetch MRAID JS. ").append(localInterruptedException.getMessage());
      b.a(5);
      return super.shouldInterceptRequest(paramWebView, paramString);
    }
    catch (TimeoutException localTimeoutException)
    {
      for (;;) {}
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */