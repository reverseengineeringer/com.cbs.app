package com.cbs.app.androiddata;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class PersistentCookieStore
  implements CookieStore
{
  private static final String a = PersistentCookieStore.class.getSimpleName();
  private SharedPreferences b;
  private Map<URI, Set<HttpCookie>> c;
  
  public PersistentCookieStore(Context paramContext)
  {
    b = paramContext.getSharedPreferences("cookieStore", 0);
    a();
  }
  
  private static URI a(URI paramURI, HttpCookie paramHttpCookie)
  {
    if (paramHttpCookie.getDomain() != null)
    {
      String str1 = paramHttpCookie.getDomain();
      if (str1.charAt(0) == '.')
      {
        str1 = str1.substring(1);
        try
        {
          for (;;)
          {
            String str2;
            if (paramURI.getScheme() == null)
            {
              str2 = "http";
              if (paramHttpCookie.getPath() != null) {
                break label68;
              }
            }
            label68:
            for (paramHttpCookie = "/";; paramHttpCookie = paramHttpCookie.getPath())
            {
              return new URI(str2, str1, paramHttpCookie, null);
              str2 = paramURI.getScheme();
              break;
            }
          }
        }
        catch (URISyntaxException paramHttpCookie)
        {
          return paramURI;
        }
      }
    }
    return paramURI;
  }
  
  private List<HttpCookie> a(URI paramURI)
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = c.keySet().iterator();
    Object localObject3;
    label96:
    label214:
    label216:
    label219:
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (URI)((Iterator)localObject1).next();
      localObject3 = ((URI)localObject2).getHost();
      String str = paramURI.getHost();
      if ((str.equals(localObject3)) || (str.endsWith("." + (String)localObject3)))
      {
        i = 1;
        if (i == 0) {
          break label214;
        }
        localObject3 = ((URI)localObject2).getPath();
        str = paramURI.getPath();
        if ((!str.equals(localObject3)) && ((!str.startsWith((String)localObject3)) || (((String)localObject3).charAt(((String)localObject3).length() - 1) != '/')) && ((!str.startsWith((String)localObject3)) || (str.substring(((String)localObject3).length() - 1).charAt(0) != '/'))) {
          break label216;
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label219;
        }
        localHashSet.addAll((Collection)c.get(localObject2));
        break;
        i = 0;
        break label96;
        break;
      }
    }
    localObject1 = new ArrayList();
    Object localObject2 = localHashSet.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (HttpCookie)((Iterator)localObject2).next();
      if ((localObject3 == null) || (((HttpCookie)localObject3).hasExpired()))
      {
        ((List)localObject1).add(localObject3);
        ((Iterator)localObject2).remove();
      }
    }
    if (!((List)localObject1).isEmpty()) {
      a(paramURI, (List)localObject1);
    }
    return new ArrayList(localHashSet);
  }
  
  private void a()
  {
    c = new HashMap();
    Iterator localIterator = b.getAll().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject1 = (Map.Entry)localIterator.next();
      Object localObject2 = ((String)((Map.Entry)localObject1).getKey()).split("\\|", 2);
      try
      {
        URI localURI = new URI(localObject2[0]);
        localObject1 = (String)((Map.Entry)localObject1).getValue();
        new SerializableHttpCookie();
        HttpCookie localHttpCookie = SerializableHttpCookie.a((String)localObject1);
        localObject2 = (Set)c.get(localURI);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject1 = new HashSet();
          c.put(localURI, localObject1);
        }
        ((Set)localObject1).add(localHttpCookie);
      }
      catch (URISyntaxException localURISyntaxException) {}
    }
  }
  
  private void a(URI paramURI, List<HttpCookie> paramList)
  {
    SharedPreferences.Editor localEditor = b.edit();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      HttpCookie localHttpCookie = (HttpCookie)paramList.next();
      if (localHttpCookie != null) {
        localEditor.remove(paramURI.toString() + "|" + localHttpCookie.getName());
      }
    }
    localEditor.apply();
  }
  
  public void add(URI paramURI, HttpCookie paramHttpCookie)
  {
    try
    {
      URI localURI = a(paramURI, paramHttpCookie);
      Set localSet = (Set)c.get(localURI);
      paramURI = localSet;
      if (localSet == null)
      {
        paramURI = new HashSet();
        c.put(localURI, paramURI);
      }
      paramURI.remove(paramHttpCookie);
      paramURI.add(paramHttpCookie);
      paramURI = b.edit();
      paramURI.putString(localURI.toString() + "|" + paramHttpCookie.getName(), new SerializableHttpCookie().a(paramHttpCookie));
      paramURI.apply();
      return;
    }
    finally {}
  }
  
  public List<HttpCookie> get(URI paramURI)
  {
    try
    {
      paramURI = a(paramURI);
      return paramURI;
    }
    finally
    {
      paramURI = finally;
      throw paramURI;
    }
  }
  
  public List<HttpCookie> getCookies()
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = c.keySet().iterator();
      while (localIterator.hasNext()) {
        localArrayList.addAll(a((URI)localIterator.next()));
      }
    }
    finally {}
    return localList;
  }
  
  public List<URI> getURIs()
  {
    try
    {
      ArrayList localArrayList = new ArrayList(c.keySet());
      return localArrayList;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean remove(URI paramURI, HttpCookie paramHttpCookie)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 79	com/cbs/app/androiddata/PersistentCookieStore:c	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 138 2 0
    //   12: checkcast 87	java/util/Set
    //   15: astore 4
    //   17: aload 4
    //   19: ifnull +75 -> 94
    //   22: aload 4
    //   24: aload_2
    //   25: invokeinterface 233 2 0
    //   30: istore_3
    //   31: iload_3
    //   32: ifeq +58 -> 90
    //   35: aload_0
    //   36: getfield 38	com/cbs/app/androiddata/PersistentCookieStore:b	Landroid/content/SharedPreferences;
    //   39: invokeinterface 211 1 0
    //   44: astore 4
    //   46: aload 4
    //   48: new 110	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 213	java/lang/StringBuilder:<init>	()V
    //   55: aload_1
    //   56: invokevirtual 214	java/net/URI:toString	()Ljava/lang/String;
    //   59: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: ldc -40
    //   64: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload_2
    //   68: invokevirtual 219	java/net/HttpCookie:getName	()Ljava/lang/String;
    //   71: invokevirtual 119	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokeinterface 224 2 0
    //   82: pop
    //   83: aload 4
    //   85: invokeinterface 227 1 0
    //   90: aload_0
    //   91: monitorexit
    //   92: iload_3
    //   93: ireturn
    //   94: iconst_0
    //   95: istore_3
    //   96: goto -65 -> 31
    //   99: astore_1
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_1
    //   103: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	104	0	this	PersistentCookieStore
    //   0	104	1	paramURI	URI
    //   0	104	2	paramHttpCookie	HttpCookie
    //   30	66	3	bool	boolean
    //   15	69	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	99	finally
    //   22	31	99	finally
    //   35	90	99	finally
  }
  
  public boolean removeAll()
  {
    try
    {
      c.clear();
      b.edit().clear().apply();
      return true;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.androiddata.PersistentCookieStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */