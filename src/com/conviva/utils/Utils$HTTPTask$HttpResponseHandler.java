package com.conviva.utils;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ResponseHandler;

class Utils$HTTPTask$HttpResponseHandler
  implements ResponseHandler<Void>
{
  private Utils$HTTPTask$HttpResponseHandler(Utils.HTTPTask paramHTTPTask) {}
  
  public Void handleResponse(HttpResponse paramHttpResponse)
  {
    int i;
    try
    {
      i = paramHttpResponse.getStatusLine().getStatusCode();
      if (i != 200) {
        break label95;
      }
      paramHttpResponse = paramHttpResponse.getEntity().getContent();
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        i = paramHttpResponse.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      Utils.HTTPTask.access$200(this$1, null, localByteArrayOutputStream.toByteArray());
    }
    catch (Exception paramHttpResponse)
    {
      Utils.HTTPTask.access$200(this$1, paramHttpResponse, null);
      return null;
    }
    return null;
    label95:
    Utils.HTTPTask.access$200(this$1, new Exception("Status code in HTTP response is not OK: " + i), null);
    return null;
  }
}

/* Location:
 * Qualified Name:     com.conviva.utils.Utils.HTTPTask.HttpResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */