package com.adobe.b.a.b;

public final class b
  implements Runnable
{
  private com.adobe.b.a.b a;
  private Object b;
  
  public b(com.adobe.b.a.b paramb)
  {
    this(paramb, null);
  }
  
  public b(com.adobe.b.a.b paramb, Object paramObject)
  {
    a = paramb;
    b = paramObject;
  }
  
  public final void run()
  {
    if (a == null) {
      return;
    }
    a.call(b);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */