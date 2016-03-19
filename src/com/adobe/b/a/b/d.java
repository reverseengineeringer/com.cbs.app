package com.adobe.b.a.b;

import com.adobe.b.a.c;
import java.util.HashMap;
import java.util.Map;

public final class d
{
  private c a;
  private Map<String, a> b;
  
  public d(c paramc)
  {
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL");
    }
    a = paramc;
    b = new HashMap();
  }
  
  public final a a(String paramString)
  {
    if (b.get(paramString) == null) {
      b.put(paramString, new a(paramString, a));
    }
    return (a)b.get(paramString);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.b.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */