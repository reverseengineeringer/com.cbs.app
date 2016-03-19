package com.adobe.b.a.a;

public final class e
{
  private String a;
  private String b;
  private String c;
  
  public e(String paramString1, String paramString2, String paramString3)
  {
    a = paramString1;
    b = paramString2;
    if (paramString3.equals(""))
    {
      c = (a + ":" + b);
      return;
    }
    c = paramString3;
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
    return a + ":" + b;
  }
  
  public final String d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */