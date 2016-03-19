package com.comscore.utils;

import android.util.Log;

public final class b
{
  public static void a(Class<? extends Object> paramClass)
  {
    if (e.a) {
      paramClass.getSimpleName();
    }
  }
  
  public static void a(Class<? extends Object> paramClass, String paramString)
  {
    if (e.a) {
      Log.e(paramClass.getSimpleName(), paramString);
    }
  }
  
  public static void a(Exception paramException)
  {
    if (e.a) {
      paramException.printStackTrace();
    }
  }
  
  public static void a(Object paramObject, String paramString)
  {
    if (e.a) {
      a(paramObject.getClass());
    }
  }
  
  public static void b(Object paramObject, String paramString)
  {
    if (e.a) {
      a(paramObject.getClass(), paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */