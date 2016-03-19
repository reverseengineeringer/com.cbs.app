package com.c.a.a;

import android.content.Context;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public final class a
{
  private static int a = 10;
  private static int b = 10000;
  private final DefaultHttpClient c;
  private final HttpContext d;
  private ThreadPoolExecutor e;
  private final Map<Context, List<WeakReference<Future<?>>>> f;
  private final Map<String, String> g;
  
  public a()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, b);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(a));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, String.format("android-async-http/%s (http://loopj.com/android-async-http)", new Object[] { "1.4.1" }));
    Object localObject = new SchemeRegistry();
    ((SchemeRegistry)localObject).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    ((SchemeRegistry)localObject).register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    localObject = new ThreadSafeClientConnManager(localBasicHttpParams, (SchemeRegistry)localObject);
    d = new SyncBasicHttpContext(new BasicHttpContext());
    c = new DefaultHttpClient((ClientConnectionManager)localObject, localBasicHttpParams);
    c.addRequestInterceptor(new HttpRequestInterceptor()
    {
      public final void process(HttpRequest paramAnonymousHttpRequest, HttpContext paramAnonymousHttpContext)
      {
        if (!paramAnonymousHttpRequest.containsHeader("Accept-Encoding")) {
          paramAnonymousHttpRequest.addHeader("Accept-Encoding", "gzip");
        }
        paramAnonymousHttpContext = a.a(a.this).keySet().iterator();
        while (paramAnonymousHttpContext.hasNext())
        {
          String str = (String)paramAnonymousHttpContext.next();
          paramAnonymousHttpRequest.addHeader(str, (String)a.a(a.this).get(str));
        }
      }
    });
    c.addResponseInterceptor(new HttpResponseInterceptor()
    {
      public final void process(HttpResponse paramAnonymousHttpResponse, HttpContext paramAnonymousHttpContext)
      {
        paramAnonymousHttpContext = paramAnonymousHttpResponse.getEntity();
        if (paramAnonymousHttpContext == null) {}
        for (;;)
        {
          return;
          paramAnonymousHttpContext = paramAnonymousHttpContext.getContentEncoding();
          if (paramAnonymousHttpContext != null)
          {
            paramAnonymousHttpContext = paramAnonymousHttpContext.getElements();
            int j = paramAnonymousHttpContext.length;
            int i = 0;
            while (i < j)
            {
              if (paramAnonymousHttpContext[i].getName().equalsIgnoreCase("gzip"))
              {
                paramAnonymousHttpResponse.setEntity(new a.a(paramAnonymousHttpResponse.getEntity()));
                return;
              }
              i += 1;
            }
          }
        }
      }
    });
    c.setHttpRequestRetryHandler(new g());
    e = ((ThreadPoolExecutor)Executors.newCachedThreadPool());
    f = new WeakHashMap();
    g = new HashMap();
  }
  
  private void a(DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, String paramString, c paramc, Context paramContext)
  {
    e.submit(new b(paramDefaultHttpClient, paramHttpContext, paramHttpUriRequest, paramc));
  }
  
  public final void a()
  {
    HttpParams localHttpParams = c.getParams();
    ConnManagerParams.setTimeout(localHttpParams, 30000L);
    HttpConnectionParams.setSoTimeout(localHttpParams, 30000);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, 30000);
  }
  
  public final void a(String paramString, c paramc)
  {
    a(c, d, new HttpGet(paramString), null, paramc, null);
  }
  
  public final void a(String paramString, f paramf, c paramc)
  {
    paramf = paramf.a();
    DefaultHttpClient localDefaultHttpClient = c;
    HttpContext localHttpContext = d;
    paramString = new HttpPost(paramString);
    if (paramf != null) {
      paramString.setEntity(paramf);
    }
    a(localDefaultHttpClient, localHttpContext, paramString, null, paramc, null);
  }
  
  private static final class a
    extends HttpEntityWrapper
  {
    public a(HttpEntity paramHttpEntity)
    {
      super();
    }
    
    public final InputStream getContent()
    {
      return new GZIPInputStream(wrappedEntity.getContent());
    }
    
    public final long getContentLength()
    {
      return -1L;
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */