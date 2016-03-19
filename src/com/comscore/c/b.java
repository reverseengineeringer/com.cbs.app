package com.comscore.c;

import com.comscore.utils.e;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class b
{
  protected HashMap<String, a> a = new HashMap();
  protected String b;
  protected long c;
  
  protected b(com.comscore.a.b paramb)
  {
    b = paramb.D();
    c = System.currentTimeMillis();
  }
  
  private void a(String paramString, Boolean paramBoolean1, Boolean paramBoolean2)
  {
    a locala = (a)a.get(paramString);
    if ((locala != null) && ((!(locala instanceof d)) || (paramBoolean2.booleanValue()) || (paramBoolean1.booleanValue()))) {
      a.remove(paramString);
    }
  }
  
  private void b(a parama)
  {
    if (a.get(a) == null) {
      a.put(a, parama);
    }
  }
  
  public final Boolean a(String paramString)
  {
    return Boolean.valueOf(a.containsKey(paramString));
  }
  
  public final String a(String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    HashMap localHashMap = new HashMap(a);
    int j = paramArrayOfString.length;
    int i = 0;
    String str;
    a locala;
    while (i < j)
    {
      str = paramArrayOfString[i];
      locala = (a)localHashMap.get(str);
      if (locala != null)
      {
        localStringBuilder.append(locala.a());
        localHashMap.remove(str);
      }
      i += 1;
    }
    if (paramArrayOfString != e.c)
    {
      paramArrayOfString = e.c;
      j = paramArrayOfString.length;
      i = 0;
      while (i < j)
      {
        str = paramArrayOfString[i];
        locala = (a)localHashMap.get(str);
        if (locala != null)
        {
          localStringBuilder.append(locala.a());
          localHashMap.remove(str);
        }
        i += 1;
      }
    }
    paramArrayOfString = localHashMap.values().iterator();
    while (paramArrayOfString.hasNext()) {
      localStringBuilder.append(((a)paramArrayOfString.next()).a());
    }
    if ((localStringBuilder.length() > 0) && (localStringBuilder.charAt(0) == '&')) {
      return localStringBuilder.substring(1);
    }
    return localStringBuilder.toString();
  }
  
  public final void a(a parama)
  {
    a(a, c, Boolean.valueOf(parama instanceof d));
    b(parama);
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, Boolean.valueOf(false));
  }
  
  public final void a(String paramString1, String paramString2, Boolean paramBoolean)
  {
    a(paramString1, paramBoolean, Boolean.valueOf(false));
    if (Boolean.valueOf(false).booleanValue())
    {
      b(new d(paramString1, paramString2, paramBoolean));
      return;
    }
    b(new a(paramString1, paramString2, paramBoolean));
  }
  
  protected final void a(HashMap<String, String> paramHashMap)
  {
    a(paramHashMap, false);
  }
  
  protected final void a(HashMap<String, String> paramHashMap, boolean paramBoolean)
  {
    if (paramHashMap != null)
    {
      Iterator localIterator = paramHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(str, (String)paramHashMap.get(str), Boolean.valueOf(paramBoolean));
      }
    }
  }
  
  public final void b(String paramString)
  {
    b = paramString;
  }
  
  public final String c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.comscore.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */