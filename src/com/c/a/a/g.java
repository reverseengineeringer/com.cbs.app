package com.c.a.a;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

final class g
  implements HttpRequestRetryHandler
{
  private static HashSet<Class<?>> a = new HashSet();
  private static HashSet<Class<?>> b = new HashSet();
  private final int c = 5;
  
  static
  {
    a.add(NoHttpResponseException.class);
    a.add(UnknownHostException.class);
    a.add(SocketException.class);
    b.add(InterruptedIOException.class);
    b.add(SSLHandshakeException.class);
  }
  
  public final boolean retryRequest(IOException paramIOException, int paramInt, HttpContext paramHttpContext)
  {
    boolean bool2 = true;
    Boolean localBoolean = (Boolean)paramHttpContext.getAttribute("http.request_sent");
    int i;
    boolean bool1;
    if ((localBoolean != null) && (localBoolean.booleanValue()))
    {
      i = 1;
      if (paramInt <= c) {
        break label96;
      }
      bool1 = false;
    }
    for (;;)
    {
      label43:
      if (bool1) {
        if (!((HttpUriRequest)paramHttpContext.getAttribute("http.request")).getMethod().equals("POST")) {
          bool1 = bool2;
        }
      }
      for (;;)
      {
        if (bool1)
        {
          SystemClock.sleep(1500L);
          return bool1;
          i = 0;
          break;
          label96:
          if (b.contains(paramIOException.getClass()))
          {
            bool1 = false;
            break label43;
          }
          if (a.contains(paramIOException.getClass()))
          {
            bool1 = true;
            break label43;
          }
          if (i != 0) {
            break label161;
          }
          bool1 = true;
          break label43;
          bool1 = false;
          continue;
        }
        paramIOException.printStackTrace();
        return bool1;
      }
      label161:
      bool1 = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */