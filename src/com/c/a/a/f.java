package com.c.a.a;

import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.message.BasicNameValuePair;

public final class f
{
  private static String c = "UTF-8";
  protected ConcurrentHashMap<String, String> a;
  protected ConcurrentHashMap<String, a> b;
  
  public f()
  {
    b();
  }
  
  public f(String paramString1, String paramString2)
  {
    b();
    a(paramString1, paramString2);
  }
  
  private void b()
  {
    a = new ConcurrentHashMap();
    b = new ConcurrentHashMap();
  }
  
  private List<BasicNameValuePair> c()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = a.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    return localLinkedList;
  }
  
  public final HttpEntity a()
  {
    Object localObject1;
    if (!b.isEmpty())
    {
      h localh = new h();
      localObject1 = a.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localh.a((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      int j = b.entrySet().size();
      Object localObject2 = b.entrySet().iterator();
      int i = 0;
      localObject1 = localh;
      if (!((Iterator)localObject2).hasNext()) {
        break label265;
      }
      localObject1 = (Map.Entry)((Iterator)localObject2).next();
      a locala = (a)((Map.Entry)localObject1).getValue();
      boolean bool;
      if (a != null)
      {
        if (i != j - 1) {
          break label213;
        }
        bool = true;
        label167:
        if (c == null) {
          break label218;
        }
        localh.a((String)((Map.Entry)localObject1).getKey(), locala.a(), a, c, bool);
      }
      for (;;)
      {
        i += 1;
        break;
        label213:
        bool = false;
        break label167;
        label218:
        localh.a((String)((Map.Entry)localObject1).getKey(), locala.a(), a, "application/octet-stream", bool);
      }
    }
    try
    {
      localObject1 = new UrlEncodedFormEntity(c(), c);
      label265:
      return (HttpEntity)localObject1;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null)) {
      a.put(paramString1, paramString2);
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    return localStringBuilder.toString();
  }
  
  private static final class a
  {
    public InputStream a;
    public String b;
    public String c;
    
    public final String a()
    {
      if (b != null) {
        return b;
      }
      return "nofilename";
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */