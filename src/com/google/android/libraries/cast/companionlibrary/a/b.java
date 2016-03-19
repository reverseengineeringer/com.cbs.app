package com.google.android.libraries.cast.companionlibrary.a;

import android.util.Log;
import com.google.android.libraries.cast.companionlibrary.cast.a;

public final class b
{
  private static final int a = 4;
  
  private static String a()
  {
    return "[v" + a.a() + "] ";
  }
  
  public static String a(Class<?> paramClass)
  {
    paramClass = paramClass.getSimpleName();
    if (paramClass.length() > 23 - a) {
      return "ccl_" + paramClass.substring(0, 23 - a - 1);
    }
    return "ccl_" + paramClass;
  }
  
  public static final void a(String paramString)
  {
    new StringBuilder().append(a()).append(paramString);
  }
  
  public static final void a(String paramString1, String paramString2)
  {
    Log.e(paramString1, a() + paramString2);
  }
  
  public static final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    Log.e(paramString1, a() + paramString2, paramThrowable);
  }
  
  public static final void b(String paramString)
  {
    new StringBuilder().append(a()).append(paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */