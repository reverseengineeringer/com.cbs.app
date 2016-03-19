package com.adobe.adobepass.accessenabler.b;

import android.os.Build.VERSION;
import com.adobe.adobepass.accessenabler.d.c;
import com.adobe.adobepass.accessenabler.d.f;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.CookieStore;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public final class a
{
  DefaultHttpClient a = new DefaultHttpClient();
  HttpContext b = new BasicHttpContext();
  
  public a()
  {
    a.getParams().setParameter("http.useragent", "AdobePassNativeClient/1.8 (Linux; U; Android " + Build.VERSION.RELEASE + "; en-us)");
  }
  
  public final List<Cookie> a()
  {
    return a.getCookieStore().getCookies();
  }
  
  public final HttpResponse a(String paramString, List<NameValuePair> paramList1, List<NameValuePair> paramList2, boolean paramBoolean)
  {
    paramString = new HttpPost(f.a(paramString, null, paramBoolean));
    if (paramList1 != null)
    {
      paramList1 = paramList1.iterator();
      while (paramList1.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)paramList1.next();
        paramString.addHeader(localNameValuePair.getName(), localNameValuePair.getValue());
      }
    }
    try
    {
      paramString.setEntity(new UrlEncodedFormEntity(paramList2));
      try
      {
        paramString = a.execute(paramString, b);
        return paramString;
      }
      catch (IOException paramString)
      {
        c.b("HttpConnector", paramString.toString());
        return null;
      }
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      c.b("HttpConnector", paramString.toString());
    }
  }
  
  public final HttpResponse a(String paramString, List<NameValuePair> paramList, boolean paramBoolean)
  {
    paramString = new HttpGet(f.a(paramString, null, paramBoolean));
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        NameValuePair localNameValuePair = (NameValuePair)paramList.next();
        paramString.addHeader(localNameValuePair.getName(), localNameValuePair.getValue());
      }
    }
    try
    {
      paramString = a.execute(paramString, b);
      return paramString;
    }
    catch (IOException paramString)
    {
      c.b("HttpConnector", paramString.toString());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */