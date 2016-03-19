package com.c.a.a;

import java.io.IOException;
import java.net.ConnectException;
import java.net.UnknownHostException;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

final class b
  implements Runnable
{
  private final AbstractHttpClient a;
  private final HttpContext b;
  private final HttpUriRequest c;
  private final c d;
  private boolean e;
  private int f;
  
  public b(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, c paramc)
  {
    a = paramAbstractHttpClient;
    b = paramHttpContext;
    c = paramHttpUriRequest;
    d = paramc;
    if ((paramc instanceof d)) {
      e = true;
    }
  }
  
  public final void run()
  {
    try
    {
      if (d != null) {
        d.a();
      }
      localObject = a.getHttpRequestRetryHandler();
      bool = true;
      localHttpResponse = null;
    }
    catch (IOException localIOException1)
    {
      IOException localIOException3;
      for (;;)
      {
        try
        {
          HttpResponse localHttpResponse;
          if (!Thread.currentThread().isInterrupted())
          {
            localHttpResponse = a.execute(c, b);
            if ((!Thread.currentThread().isInterrupted()) && (d != null)) {
              d.a(localHttpResponse);
            }
          }
          if (d == null) {
            return;
          }
          d.b();
          return;
        }
        catch (UnknownHostException localUnknownHostException)
        {
          if (d != null)
          {
            d.b(localUnknownHostException, "can't resolve host");
            continue;
            localIOException1 = localIOException1;
            if (d == null) {
              return;
            }
            d.b();
            if (!e) {
              break;
            }
            d.a(localIOException1, null);
            return;
          }
        }
        catch (IOException localIOException2)
        {
          i = f + 1;
          f = i;
          bool = ((HttpRequestRetryHandler)localObject).retryRequest(localIOException2, i, b);
        }
        catch (NullPointerException localNullPointerException)
        {
          localIOException3 = new IOException("NPE in HttpClient" + localNullPointerException.getMessage());
          int i = f + 1;
          f = i;
          boolean bool = ((HttpRequestRetryHandler)localObject).retryRequest(localIOException3, i, b);
        }
      }
      Object localObject = new ConnectException();
      ((ConnectException)localObject).initCause(localIOException3);
      throw ((Throwable)localObject);
      d.b(localIOException3, null);
    }
    if (bool) {}
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */