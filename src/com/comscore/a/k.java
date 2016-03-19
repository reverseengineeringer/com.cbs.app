package com.comscore.a;

import android.content.Context;
import com.comscore.utils.b.a;

public final class k
{
  private static b a = new b();
  
  public static void a()
  {
    a.k();
  }
  
  public static void a(Context paramContext)
  {
    b localb = a;
    if ((aa != null) || (paramContext == null)) {
      return;
    }
    aa = paramContext;
    f = new a(localb);
    f.a(new j(localb), true);
  }
  
  public static void a(String paramString)
  {
    a.c(paramString);
  }
  
  public static void b()
  {
    a.l();
  }
  
  public static void b(String paramString)
  {
    a.a(paramString, true);
  }
  
  public static void c()
  {
    a.m();
  }
  
  public static void c(String paramString)
  {
    a.b(paramString);
  }
  
  public static void d()
  {
    a.n();
  }
  
  public static void e()
  {
    a.a(60, true);
  }
  
  public static String f()
  {
    return a.I();
  }
  
  public static b g()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.comscore.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */