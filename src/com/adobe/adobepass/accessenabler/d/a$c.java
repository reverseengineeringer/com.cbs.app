package com.adobe.adobepass.accessenabler.d;

import java.util.HashMap;
import java.util.Map;

class a$c
  implements a.a
{
  private final Map a = new HashMap();
  private final b b = new b();
  
  public final int a(String paramString)
  {
    paramString = a.get(paramString);
    if (paramString == null) {
      return -1;
    }
    return ((Integer)paramString).intValue();
  }
  
  public final void a(String paramString, int paramInt)
  {
    a.put(paramString, Integer.valueOf(paramInt));
    b.a(paramInt, paramString);
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.d.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */