package com.adobe.adobepass.accessenabler.b;

import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.cookie.Cookie;
import org.apache.http.message.BasicNameValuePair;

public final class b
{
  private ArrayList<a> a = new ArrayList();
  
  private void a(a parama)
  {
    Iterator localIterator = a.iterator();
    a locala;
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      locala = (a)localIterator.next();
    } while (!a.equals(a));
    for (;;)
    {
      if (locala != null)
      {
        b = b;
        return;
      }
      a.add(parama);
      return;
      locala = null;
    }
  }
  
  public static void a(List<Cookie> paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0)) {}
    CookieSyncManager localCookieSyncManager;
    CookieManager localCookieManager;
    do
    {
      return;
      localCookieSyncManager = CookieSyncManager.getInstance();
      localCookieManager = CookieManager.getInstance();
    } while (localCookieManager == null);
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Cookie localCookie = (Cookie)paramList.next();
      if (localCookie.getName().equals("$Version")) {
        break;
      }
      String str = localCookie.getName() + "=" + localCookie.getValue() + "; domain=" + localCookie.getDomain();
      localCookieManager.setCookie(localCookie.getDomain(), str);
    }
    localCookieSyncManager.sync();
  }
  
  public final BasicNameValuePair a()
  {
    Iterator localIterator = a.iterator();
    String str = "";
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (b == null) {
        str = str + a + ";";
      } else {
        str = str + a + "=" + b + ";";
      }
    }
    return new BasicNameValuePair("Cookie", str);
  }
  
  public final void a(String paramString)
  {
    if (paramString == null) {
      return;
    }
    paramString = paramString.split(";");
    int j = paramString.length;
    int i = 0;
    label17:
    String[] arrayOfString;
    if (i < j)
    {
      arrayOfString = paramString[i].trim().split("=");
      if (arrayOfString.length != 1) {
        break label66;
      }
      a(new a(arrayOfString[0], null));
    }
    for (;;)
    {
      i += 1;
      break label17;
      break;
      label66:
      a(new a(arrayOfString[0], arrayOfString[1]));
    }
  }
  
  public final void a(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getHeaders("Set-Cookie");
    int j = paramHttpResponse.length;
    int i = 0;
    while (i < j)
    {
      a(paramHttpResponse[i].getValue());
      i += 1;
    }
  }
  
  private final class a
  {
    public String a;
    public String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */