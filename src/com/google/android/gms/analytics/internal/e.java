package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.b;

@Deprecated
public final class e
{
  private static volatile b a = new ad();
  
  public static b a()
  {
    return a;
  }
  
  public static void a(String paramString, Object paramObject)
  {
    int j = 0;
    Object localObject = f.b();
    if (localObject != null) {
      ((f)localObject).e(paramString, paramObject);
    }
    for (;;)
    {
      paramString = a;
      return;
      int i = j;
      if (a != null)
      {
        i = j;
        if (a.a() <= 3) {
          i = 1;
        }
      }
      if (i != 0)
      {
        localObject = paramString;
        if (paramObject != null) {
          localObject = paramString + ":" + paramObject;
        }
        Log.e((String)aj.c.a(), (String)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */