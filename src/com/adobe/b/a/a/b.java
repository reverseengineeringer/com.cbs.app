package com.adobe.b.a.a;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class b
{
  private c a;
  private com.adobe.b.a.e b;
  private String c;
  private Map<String, e> d;
  
  public b(com.adobe.b.a.e parame, c paramc, String paramString, ArrayList<e> paramArrayList)
  {
    b = parame;
    c = paramString;
    d = new HashMap();
    a = paramc;
    a(paramArrayList);
  }
  
  private void a(ArrayList<e> paramArrayList)
  {
    if (paramArrayList == null) {}
    for (;;)
    {
      return;
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        e locale = (e)paramArrayList.next();
        d.put(locale.c(), locale);
      }
    }
  }
  
  public final String a()
  {
    return c;
  }
  
  public final c b()
  {
    return a;
  }
  
  public final ArrayList<e> c()
  {
    ArrayList localArrayList = new ArrayList(d.values());
    Iterator localIterator = d.values().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add((e)localIterator.next());
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */