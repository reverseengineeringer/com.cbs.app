package com.adobe.mobile;

import java.util.HashMap;

final class k
{
  protected Object a = null;
  protected HashMap<String, Object> b = new HashMap();
  
  protected final void a(String paramString, k paramk)
  {
    b.put(paramString, paramk);
  }
  
  protected final boolean a(String paramString)
  {
    return b.containsKey(paramString);
  }
  
  protected final k b(String paramString)
  {
    return (k)b.get(paramString);
  }
  
  public final String toString()
  {
    String str = "";
    try
    {
      if (a != null) {
        str = a.toString();
      }
      str = super.toString() + str;
      return str;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */