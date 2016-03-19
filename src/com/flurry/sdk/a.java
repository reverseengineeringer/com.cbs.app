package com.flurry.sdk;

import com.flurry.android.b;
import java.util.Map;

public class a
  implements ap
{
  private i a;
  
  public static a a()
  {
    try
    {
      a locala = (a)y.a().a(a.class);
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static l f()
  {
    be localbe = bf.a().c();
    if (localbe == null) {
      return null;
    }
    return (l)localbe.b(l.class);
  }
  
  public final b a(String paramString, Map<String, String> paramMap)
  {
    l locall = f();
    b localb = b.a;
    if (locall != null) {
      localb = locall.a(paramString, paramMap);
    }
    return localb;
  }
  
  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    l locall = f();
    if (locall != null) {
      locall.a(paramString1, paramString2, paramThrowable.getClass().getName(), paramThrowable);
    }
  }
  
  public final void b()
  {
    be.a(l.class);
    a = new i();
  }
  
  public final i c()
  {
    return a;
  }
  
  public final void d()
  {
    l locall = f();
    if (locall != null) {
      locall.d();
    }
  }
  
  public final void e()
  {
    l locall = f();
    if (locall != null) {
      locall.f();
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */