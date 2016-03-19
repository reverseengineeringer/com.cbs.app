package com.adobe.a.b;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ssl.StrictHostnameVerifier;

final class g
{
  private static HttpURLConnection a(String paramString)
  {
    try
    {
      URL localURL = new URL(paramString);
      if (paramString.indexOf("https://") >= 0)
      {
        paramString = (HttpsURLConnection)localURL.openConnection();
        paramString.setHostnameVerifier(new StrictHostnameVerifier());
        return paramString;
      }
      paramString = (HttpURLConnection)localURL.openConnection();
      return paramString;
    }
    catch (Exception paramString)
    {
      e.a();
      new StringBuilder("Exception opening URL : ").append(paramString.getMessage());
    }
    return null;
  }
  
  protected static boolean a(String paramString, Hashtable<String, String> paramHashtable)
  {
    if (paramString == null) {
      return false;
    }
    for (;;)
    {
      try
      {
        HttpURLConnection localHttpURLConnection = a(paramString);
        if (localHttpURLConnection != null)
        {
          localHttpURLConnection.setConnectTimeout(5000);
          localHttpURLConnection.setReadTimeout(5000);
          if (paramHashtable != null)
          {
            paramHashtable = paramHashtable.entrySet().iterator();
            if (paramHashtable.hasNext())
            {
              Map.Entry localEntry = (Map.Entry)paramHashtable.next();
              String str = (String)localEntry.getValue();
              if (str.trim().length() <= 0) {
                continue;
              }
              localHttpURLConnection.setRequestProperty((String)localEntry.getKey(), str);
              continue;
            }
          }
        }
        boolean bool = false;
      }
      catch (SocketTimeoutException paramString)
      {
        e.a();
        return false;
        e.a();
        new StringBuilder("Request Sent : ").append(paramString);
        localHttpURLConnection.getResponseCode();
        localHttpURLConnection.getInputStream().close();
        localHttpURLConnection.disconnect();
        bool = true;
        return bool;
      }
      catch (IOException paramString)
      {
        e.a();
        new StringBuilder("IOException while sending request, retrying. Exception: ").append(paramString.getMessage());
        return false;
      }
      catch (Exception paramString)
      {
        e.a();
        new StringBuilder("Exception while attempting to send hit : ").append(paramString.getMessage());
        return true;
      }
      catch (Error paramString)
      {
        e.a();
        new StringBuilder("Exception while attempting to send hit : ").append(paramString.getMessage());
        return true;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */