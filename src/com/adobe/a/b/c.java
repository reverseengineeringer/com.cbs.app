package com.adobe.a.b;

import java.util.Hashtable;

final class c
{
  protected Object a = null;
  protected Hashtable<String, Object> b = new Hashtable();
  
  protected final void a(String paramString, c paramc)
  {
    b.put(paramString, paramc);
  }
  
  protected final boolean a(String paramString)
  {
    return b.containsKey(paramString);
  }
  
  protected final c b(String paramString)
  {
    return (c)b.get(paramString);
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
 * Qualified Name:     com.adobe.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */