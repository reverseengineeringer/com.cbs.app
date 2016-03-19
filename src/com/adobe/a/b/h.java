package com.adobe.a.b;

import java.util.Hashtable;

final class h
{
  private String a;
  private Hashtable<String, String> b = new Hashtable();
  
  protected h(String paramString)
  {
    paramString = paramString.split("\t");
    if ((paramString.length > 0) && (paramString[0].length() > 0)) {
      a = paramString[0];
    }
    int i = 1;
    while ((i < paramString.length) && (i + 1 <= paramString.length))
    {
      Object localObject1 = paramString[i];
      Object localObject2 = paramString[(i + 1)];
      if ((((String)localObject1).trim().length() > 0) && (((String)localObject2).trim().length() > 0)) {
        b.put(localObject1, localObject2);
      }
      i += 2;
    }
  }
  
  protected final String a()
  {
    return a;
  }
  
  protected final Hashtable<String, String> b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */