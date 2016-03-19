package com.adobe.adobepass.accessenabler.a;

import java.io.Serializable;

public final class f
  implements Serializable
{
  private String a;
  private Object b;
  private boolean c;
  
  public f()
  {
    this(null, null, false);
  }
  
  public f(Object paramObject, boolean paramBoolean)
  {
    this(null, paramObject, paramBoolean);
  }
  
  public f(String paramString)
  {
    this(paramString, null, false);
  }
  
  private f(String paramString, Object paramObject, boolean paramBoolean)
  {
    a = paramString;
    b = paramObject;
    c = paramBoolean;
  }
  
  public final Object a()
  {
    return b;
  }
  
  public final boolean b()
  {
    return c;
  }
  
  public final String toString()
  {
    if ((a == null) && (b == null)) {}
    do
    {
      return null;
      if (a != null) {
        return a;
      }
    } while (b == null);
    return "Value: " + b + " | Encrypted: " + c;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */