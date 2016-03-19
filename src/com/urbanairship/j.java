package com.urbanairship;

import android.util.Log;

public final class j
{
  public static int a = 6;
  public static String b = "UALib";
  
  public static void a(String paramString)
  {
    if ((a <= 6) && (paramString != null)) {
      Log.e(b, paramString);
    }
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if ((a <= 6) && (paramString != null)) {
      Log.e(b, paramString, paramThrowable);
    }
  }
  
  public static void a(Throwable paramThrowable)
  {
    if (a <= 6) {
      Log.e(b, "", paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */