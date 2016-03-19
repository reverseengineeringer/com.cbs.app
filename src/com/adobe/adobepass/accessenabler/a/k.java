package com.adobe.adobepass.accessenabler.a;

import com.google.e.e;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class k
{
  private Long a;
  private Map<String, Object> b;
  private List c;
  
  public static k c(String paramString)
  {
    try
    {
      e locale = new e();
      if (paramString == null) {}
      for (paramString = null;; paramString = locale.a(new StringReader(paramString), k.class)) {
        return (k)com.google.e.b.i.a(k.class).cast(paramString);
      }
      return null;
    }
    catch (Exception paramString)
    {
      paramString.toString();
    }
  }
  
  public static k d(String paramString)
  {
    int i = paramString.indexOf("<userMeta>");
    int j = paramString.indexOf("</userMeta>");
    if ((i < 0) || (j < 0) || (i >= j)) {
      return null;
    }
    return c(paramString.substring(i + 10, j));
  }
  
  public final long a()
  {
    if (a != null) {
      return a.longValue();
    }
    return 0L;
  }
  
  public final Object a(String paramString)
  {
    if (b != null) {
      return b.get(paramString);
    }
    return null;
  }
  
  public final void a(k paramk)
  {
    if ((paramk == null) || (!paramk.b())) {
      break label11;
    }
    for (;;)
    {
      label11:
      return;
      if (a.longValue() < a.longValue())
      {
        a = a;
        Object localObject = b.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          b.put(str, b.get(str));
        }
        if (c == null) {
          break;
        }
        if (c == null)
        {
          c = c;
          return;
        }
        paramk = c.iterator();
        while (paramk.hasNext())
        {
          localObject = paramk.next();
          if (!c.contains(localObject)) {
            c.add(localObject);
          }
        }
      }
    }
  }
  
  public final boolean b()
  {
    return (a != null) && (b != null);
  }
  
  public final boolean b(String paramString)
  {
    return (c != null) && (c.contains(paramString));
  }
  
  public final String c()
  {
    try
    {
      Object localObject1 = new e();
      if (this == null)
      {
        localObject2 = com.google.e.k.a;
        localStringWriter = new StringWriter();
        ((e)localObject1).a((com.google.e.i)localObject2, localStringWriter);
        return localStringWriter.toString();
      }
      Object localObject2 = getClass();
      StringWriter localStringWriter = new StringWriter();
      ((e)localObject1).a(this, (Type)localObject2, localStringWriter);
      localObject1 = localStringWriter.toString();
      return (String)localObject1;
    }
    catch (Exception localException)
    {
      localException.toString();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */