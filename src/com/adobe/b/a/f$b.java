package com.adobe.b.a;

import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class f$b
{
  private final String a;
  private final f.a b;
  private final Map<String, String> c;
  
  public f$b(String paramString, f.a parama)
  {
    this(paramString, parama, (byte)0);
  }
  
  private f$b(String paramString, f.a parama, byte paramByte)
  {
    a = paramString;
    b = parama;
    c = null;
  }
  
  public final f.a a()
  {
    return b;
  }
  
  public final String b()
  {
    return a;
  }
  
  public final String c()
  {
    if (c == null) {
      return "";
    }
    Object localObject1 = c.entrySet().iterator();
    Object localObject2;
    String str2;
    for (String str1 = ""; ((Iterator)localObject1).hasNext(); str1 = str1 + str2 + "=" + (String)localObject2 + "&")
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      str2 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
    }
    localObject1 = str1;
    if (str1.length() > 0) {
      localObject1 = str1.substring(0, str1.length() - 1);
    }
    return (String)localObject1;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.f.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */