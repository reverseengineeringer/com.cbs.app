package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.z;

public final class a<O extends a>
{
  private final a.b<?, O> a;
  private final a.f<?, O> b;
  private final a.d<?> c;
  private final a.g<?> d;
  private final String e;
  
  public <C extends a.c> a(String paramString, a.b<C, O> paramb, a.d<C> paramd)
  {
    z.a(paramb, "Cannot construct an Api with a null ClientBuilder");
    z.a(paramd, "Cannot construct an Api with a null ClientKey");
    e = paramString;
    a = paramb;
    b = null;
    c = paramd;
    d = null;
  }
  
  public final a.b<?, O> a()
  {
    if (a != null) {}
    for (boolean bool = true;; bool = false)
    {
      z.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      return a;
    }
  }
  
  public final a.f<?, O> b()
  {
    if (b != null) {}
    for (boolean bool = true;; bool = false)
    {
      z.a(bool, "This API was constructed with a ClientBuilder. Use getClientBuilder");
      return b;
    }
  }
  
  public final a.d<?> c()
  {
    if (c != null) {}
    for (boolean bool = true;; bool = false)
    {
      z.a(bool, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
      return c;
    }
  }
  
  public final boolean d()
  {
    return d != null;
  }
  
  public final String e()
  {
    return e;
  }
  
  public static abstract interface a
  {
    public static abstract interface a
      extends a.a
    {}
    
    public static abstract interface b
      extends a.a
    {}
    
    public static abstract interface c
      extends a.a.a, a.a.b
    {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */