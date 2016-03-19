package com.c.a.a;

import android.os.Message;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public final class d
  extends c
{
  private static String[] a = { "image/jpeg", "image/png" };
  
  protected final void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      super.a(paramMessage);
      return;
    case 0: 
      paramMessage = obj;
      return;
    }
    a((Throwable)((Object[])obj)[0]);
  }
  
  protected final void a(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    b(a(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  final void a(HttpResponse paramHttpResponse)
  {
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    Object localObject = paramHttpResponse.getHeaders("Content-Type");
    if (localObject.length != 1)
    {
      a(new HttpResponseException(localStatusLine.getStatusCode(), "None, or more than one, Content-Type Header found!"), null);
      return;
    }
    localObject = localObject[0];
    String[] arrayOfString = a;
    int k = arrayOfString.length;
    int i = 0;
    int j = 0;
    while (i < k)
    {
      if (arrayOfString[i].equals(((Header)localObject).getValue())) {
        j = 1;
      }
      i += 1;
    }
    if (j == 0)
    {
      a(new HttpResponseException(localStatusLine.getStatusCode(), "Content-Type not allowed!"), null);
      return;
    }
    for (;;)
    {
      try
      {
        paramHttpResponse = paramHttpResponse.getEntity();
        if (paramHttpResponse == null) {
          break label213;
        }
        paramHttpResponse = new BufferedHttpEntity(paramHttpResponse);
        paramHttpResponse = EntityUtils.toByteArray(paramHttpResponse);
      }
      catch (IOException paramHttpResponse)
      {
        a(paramHttpResponse, null);
        paramHttpResponse = null;
        continue;
        b(a(0, paramHttpResponse));
        return;
      }
      if (localStatusLine.getStatusCode() >= 300)
      {
        a(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
        return;
      }
      label213:
      paramHttpResponse = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */