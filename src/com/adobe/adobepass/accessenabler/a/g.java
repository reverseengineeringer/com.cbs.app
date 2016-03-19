package com.adobe.adobepass.accessenabler.a;

import java.io.Serializable;

public final class g
  implements Serializable
{
  private String a;
  private String b;
  private String c;
  private String d;
  private boolean e;
  private boolean f;
  
  public g() {}
  
  public g(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean1, boolean paramBoolean2)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramBoolean1;
    f = paramBoolean2;
  }
  
  public final String a()
  {
    return a;
  }
  
  public final String b()
  {
    return b;
  }
  
  public final String c()
  {
    return c;
  }
  
  public final String d()
  {
    return d;
  }
  
  public final boolean e()
  {
    return e;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof g)) {
      return false;
    }
    return a.equals(a);
  }
  
  public final boolean f()
  {
    return f;
  }
  
  public final String toString()
  {
    return a + "(^)" + b + "(^)" + c + "(^)" + d;
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.a.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */