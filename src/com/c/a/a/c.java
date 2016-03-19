package com.c.a.a;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class c
{
  private Handler a;
  
  public c()
  {
    if (Looper.myLooper() != null) {
      a = new Handler()
      {
        public final void handleMessage(Message paramAnonymousMessage)
        {
          a(paramAnonymousMessage);
        }
      };
    }
  }
  
  protected final Message a(int paramInt, Object paramObject)
  {
    if (a != null) {
      return a.obtainMessage(paramInt, paramObject);
    }
    Message localMessage = new Message();
    what = paramInt;
    obj = paramObject;
    return localMessage;
  }
  
  protected final void a()
  {
    b(a(2, null));
  }
  
  protected void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 0: 
      paramMessage = obj;
      return;
    }
    paramMessage = (Object[])obj;
    c((Throwable)paramMessage[0], (String)paramMessage[1]);
  }
  
  protected void a(String paramString)
  {
    b(a(0, paramString));
  }
  
  public void a(Throwable paramThrowable) {}
  
  public void a(Throwable paramThrowable, String paramString)
  {
    a(paramThrowable);
  }
  
  protected void a(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    b(a(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  void a(HttpResponse paramHttpResponse)
  {
    Object localObject = null;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    try
    {
      HttpEntity localHttpEntity = paramHttpResponse.getEntity();
      paramHttpResponse = (HttpResponse)localObject;
      if (localHttpEntity != null) {
        paramHttpResponse = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
      }
    }
    catch (IOException paramHttpResponse)
    {
      for (;;)
      {
        b(paramHttpResponse, null);
        paramHttpResponse = (HttpResponse)localObject;
      }
      a(paramHttpResponse);
    }
    if (localStatusLine.getStatusCode() >= 300)
    {
      b(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
      return;
    }
  }
  
  protected final void b()
  {
    b(a(3, null));
  }
  
  protected final void b(Message paramMessage)
  {
    if (a != null)
    {
      a.sendMessage(paramMessage);
      return;
    }
    a(paramMessage);
  }
  
  protected final void b(Throwable paramThrowable, String paramString)
  {
    b(a(1, new Object[] { paramThrowable, paramString }));
  }
  
  protected void c(Throwable paramThrowable, String paramString)
  {
    a(paramThrowable, paramString);
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */