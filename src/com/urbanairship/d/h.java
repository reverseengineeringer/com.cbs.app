package com.urbanairship.d;

import java.util.Collection;
import java.util.Iterator;

public abstract class h
{
  public static String a(String paramString1, int paramInt, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramInt)
    {
      localStringBuilder.append(paramString1);
      if (i + 1 != paramInt) {
        localStringBuilder.append(paramString2);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Collection<String> paramCollection, String paramString)
  {
    if (paramCollection == null) {
      throw new IllegalArgumentException("Collections and delimiters given to join cannot be null!");
    }
    StringBuilder localStringBuilder = new StringBuilder("");
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      localStringBuilder.append((String)paramCollection.next());
      if (paramCollection.hasNext()) {
        localStringBuilder.append(paramString);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static boolean a(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return paramString2 == null;
    }
    return paramString1.equals(paramString2);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.d.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */