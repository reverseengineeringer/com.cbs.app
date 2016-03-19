package com.adobe.adobepass.accessenabler.api;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.webkit.CookieManager;
import com.adobe.adobepass.accessenabler.a.g;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.d.c;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class e
{
  private static e f;
  private final String a = "PassiveAuthnService";
  private final String b = "; secure";
  private final String c = "; Expires=Thu, 01-Jan-1970 00:00:01 GMT";
  private b d;
  private AccessEnablerService e;
  
  private e(b paramb, AccessEnablerService paramAccessEnablerService)
  {
    d = paramb;
    e = paramAccessEnablerService;
  }
  
  public static e a(b paramb, AccessEnablerService paramAccessEnablerService)
  {
    if (f == null) {
      f = new e(paramb, paramAccessEnablerService);
    }
    return f;
  }
  
  private static HashSet<String> a(CookieManager paramCookieManager, String paramString)
  {
    HashSet localHashSet = new HashSet();
    if (paramString.startsWith("http://"))
    {
      paramString = a(paramCookieManager.getCookie(paramString));
      paramCookieManager = new HashSet();
    }
    Object localObject;
    for (;;)
    {
      localObject = paramCookieManager.iterator();
      while (((Iterator)localObject).hasNext())
      {
        String str = (String)((Iterator)localObject).next();
        localHashSet.add(str + "; secure");
      }
      if (paramString.startsWith("https://"))
      {
        localObject = new HashSet();
        paramCookieManager = a(paramCookieManager.getCookie(paramString));
        paramString = (String)localObject;
      }
      else
      {
        localObject = a(paramCookieManager.getCookie("http://" + paramString));
        paramCookieManager = a(paramCookieManager.getCookie("https://" + paramString));
        paramCookieManager.removeAll((Collection)localObject);
        paramString = (String)localObject;
      }
    }
    paramString = paramString.iterator();
    while (paramString.hasNext())
    {
      localObject = (String)paramString.next();
      if (!paramCookieManager.contains(localObject)) {
        localHashSet.add(localObject);
      }
    }
    return localHashSet;
  }
  
  private static HashSet<String> a(String paramString)
  {
    if (paramString == null)
    {
      paramString = new HashSet();
      return paramString;
    }
    String[] arrayOfString = paramString.split(";");
    HashSet localHashSet = new HashSet();
    int j = arrayOfString.length;
    int i = 0;
    for (;;)
    {
      paramString = localHashSet;
      if (i >= j) {
        break;
      }
      String str = arrayOfString[i];
      paramString = str.substring(0, str.indexOf('=')).trim();
      str = str.substring(str.indexOf('=') + 1).trim();
      localHashSet.add(paramString + "=" + str);
      i += 1;
    }
  }
  
  public final void a(List<String> paramList)
  {
    CookieManager localCookieManager = CookieManager.getInstance();
    HashMap localHashMap = new HashMap();
    Object localObject1 = paramList.iterator();
    int i = 0;
    Object localObject2;
    int j;
    int k;
    label68:
    int m;
    if (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((String)((Iterator)localObject1).next()).split("\\.");
      if (localObject2 != null)
      {
        j = localObject2.length;
        k = j - 1;
        paramList = "";
        if (k < 0) {
          break label213;
        }
        m = j - k;
        if (m <= i) {
          break label504;
        }
        i = m;
      }
    }
    label213:
    label340:
    label481:
    label504:
    for (;;)
    {
      Object localObject3 = new StringBuilder().append(localObject2[k]);
      if (m > 1) {}
      for (paramList = "." + paramList;; paramList = "")
      {
        paramList = paramList;
        if (m > 1)
        {
          if (localHashMap.get(Integer.valueOf(m)) == null) {
            localHashMap.put(Integer.valueOf(m), new HashSet());
          }
          ((HashSet)localHashMap.get(Integer.valueOf(m))).add(paramList);
        }
        k -= 1;
        break label68;
        j = -1;
        break;
      }
      break;
      localObject1 = new HashMap();
      j = 2;
      while (j <= i)
      {
        paramList = (HashSet)localHashMap.get(Integer.valueOf(j));
        k = i;
        if (paramList != null)
        {
          localObject2 = paramList.iterator();
          ArrayList localArrayList;
          String[] arrayOfString;
          int n;
          do
          {
            k = i;
            if (!((Iterator)localObject2).hasNext()) {
              break label481;
            }
            localObject3 = (String)((Iterator)localObject2).next();
            localArrayList = new ArrayList(a(localCookieManager, (String)localObject3));
            ((HashMap)localObject1).put(localObject3, localArrayList);
            arrayOfString = ((String)localObject3).split("\\.");
            if (arrayOfString == null) {
              break;
            }
            k = arrayOfString.length;
            paramList = "";
            n = k - 1;
            m = i;
            i = m;
          } while (n < 0);
          int i1 = k - n;
          i = m;
          if (i1 > m) {
            i = i1;
          }
          StringBuilder localStringBuilder = new StringBuilder().append(arrayOfString[n]);
          if (i1 > 1) {}
          for (paramList = "." + paramList;; paramList = "")
          {
            paramList = paramList;
            if ((i1 > 1) && (!paramList.equals(localObject3)) && (((HashMap)localObject1).get(paramList) != null)) {
              localArrayList.removeAll((Collection)((HashMap)localObject1).get(paramList));
            }
            n -= 1;
            m = i;
            break label340;
            k = -1;
            break;
          }
        }
        j += 1;
        i = k;
      }
      d.h.a((Map)localObject1);
      return;
    }
  }
  
  public final boolean a()
  {
    d.h.g();
    d.h.h();
    String str = d.h.c();
    g localg = d.f.c(str);
    if ((localg != null) && (!localg.e())) {}
    Object localObject;
    label134:
    do
    {
      return false;
      localObject = d.h.a(d.f, str, com.adobe.adobepass.accessenabler.a.a.a.a, false);
      if (localObject != null) {}
      for (localObject = d.f.c(((com.adobe.adobepass.accessenabler.a.a)localObject).c());; localObject = null)
      {
        if (localg != null) {
          break label134;
        }
        if ((localObject == null) || (!((g)localObject).f())) {
          break;
        }
        d.h.b(((g)localObject).a());
        return true;
      }
    } while ((d.h.a(true) != null) || (localObject == null) || (!((g)localObject).a().equals(str)) || (!((g)localObject).f()));
    return true;
  }
  
  public final void b()
  {
    d.a = a.a;
    Object localObject1 = d.h.c();
    localObject1 = d.f.c((String)localObject1);
    Object localObject2 = e.a((g)localObject1, true);
    localObject1 = d.h.a();
    Handler localHandler;
    Message localMessage;
    try
    {
      localHandler = a.a.a(null).b();
      localMessage = localHandler.obtainMessage();
      Bundle localBundle = new Bundle();
      localBundle.putString("url", (String)localObject2);
      localBundle.putStringArrayList("domains", new ArrayList(((Map)localObject1).keySet()));
      localObject2 = ((Map)localObject1).keySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        localBundle.putStringArrayList(str, (ArrayList)((Map)localObject1).get(str));
      }
      localMessage.setData(localBundle);
    }
    catch (Exception localException)
    {
      c.b("PassiveAuthnService", "Passive AuthN failed while grabbing the AccessEnabler singleton");
      e.a();
      return;
    }
    localHandler.sendMessage(localMessage);
  }
  
  public final void c()
  {
    CookieManager localCookieManager = CookieManager.getInstance();
    Map localMap = d.h.a();
    Iterator localIterator1 = localMap.keySet().iterator();
    while (localIterator1.hasNext())
    {
      String str = (String)localIterator1.next();
      Iterator localIterator2 = ((ArrayList)localMap.get(str)).iterator();
      while (localIterator2.hasNext())
      {
        String[] arrayOfString = ((String)localIterator2.next()).split(";");
        if ((arrayOfString != null) && (arrayOfString.length > 1)) {
          localCookieManager.setCookie(str, arrayOfString[0] + "; Expires=Thu, 01-Jan-1970 00:00:01 GMT");
        }
      }
    }
  }
  
  public static enum a
  {
    private a() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.api.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */