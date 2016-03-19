package com.adobe.b.c.a.b.a.d.a;

import java.util.HashMap;

public class e
{
  private final String a;
  private final HashMap<String, a> b;
  
  e(String paramString)
  {
    a = paramString;
    b = new HashMap();
  }
  
  final void a(String paramString, Object paramObject1, Object paramObject2)
  {
    synchronized (b)
    {
      b.put(paramString, new a(paramObject1, paramObject2));
      return;
    }
  }
  
  public final String f()
  {
    return a;
  }
  
  public final HashMap<String, a> g()
  {
    synchronized (b)
    {
      HashMap localHashMap2 = b;
      return localHashMap2;
    }
  }
  
  public static final class a
  {
    public final Object a;
    public final Object b;
    
    public a(Object paramObject1, Object paramObject2)
    {
      a = paramObject1;
      b = paramObject2;
    }
  }
  
  public static enum b
  {
    private b() {}
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.d.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */