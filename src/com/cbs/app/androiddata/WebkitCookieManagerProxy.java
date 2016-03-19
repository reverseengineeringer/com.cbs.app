package com.cbs.app.androiddata;

import java.net.CookieStore;
import java.net.URI;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class WebkitCookieManagerProxy
  extends java.net.CookieManager
{
  private android.webkit.CookieManager a = android.webkit.CookieManager.getInstance();
  
  public WebkitCookieManagerProxy()
  {
    this((byte)0);
  }
  
  private WebkitCookieManagerProxy(byte paramByte)
  {
    super(null, null);
  }
  
  public Map<String, List<String>> get(URI paramURI, Map<String, List<String>> paramMap)
  {
    new StringBuilder("get: ").append(paramURI.toString());
    LG.a();
    if ((paramURI == null) || (paramMap == null)) {
      throw new IllegalArgumentException("Argument is null");
    }
    paramMap = paramURI.toString();
    paramURI = new HashMap();
    paramMap = a.getCookie(paramMap);
    new StringBuilder("cookie: ").append(paramMap);
    LG.a();
    if (paramMap != null) {
      paramURI.put("Cookie", Collections.singletonList(paramMap));
    }
    return paramURI;
  }
  
  public CookieStore getCookieStore()
  {
    throw new UnsupportedOperationException();
  }
  
  public void put(URI paramURI, Map<String, List<String>> paramMap)
  {
    new StringBuilder("put: ").append(paramURI.toString());
    LG.a();
    label28:
    Iterator localIterator;
    if ((paramURI == null) || (paramMap == null))
    {
      return;
    }
    else
    {
      paramURI = paramURI.toString();
      localIterator = paramMap.keySet().iterator();
    }
    for (;;)
    {
      if (!localIterator.hasNext()) {
        break label28;
      }
      Object localObject = (String)localIterator.next();
      if ((localObject == null) || ((!((String)localObject).equalsIgnoreCase("Set-Cookie2")) && (!((String)localObject).equalsIgnoreCase("Set-Cookie")))) {
        break;
      }
      localObject = ((List)paramMap.get(localObject)).iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        a.setCookie(paramURI, str);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.WebkitCookieManagerProxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */