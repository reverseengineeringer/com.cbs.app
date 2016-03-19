package com.adobe.b.a;

import android.util.Log;
import java.util.Date;

public final class d
  implements c
{
  private Boolean a = Boolean.valueOf(true);
  
  private static String d(String paramString)
  {
    Object localObject = new Date();
    localObject = "[" + ((Date)localObject).getTime() + "]";
    return (String)localObject + "[" + paramString + "]";
  }
  
  public final void a()
  {
    a = Boolean.valueOf(true);
  }
  
  public final void a(String paramString)
  {
    if (a.booleanValue()) {
      d(paramString);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    Log.e(d(paramString1), paramString2);
  }
  
  public final void b()
  {
    a = Boolean.valueOf(false);
  }
  
  public final void b(String paramString)
  {
    if (a.booleanValue()) {
      d(paramString);
    }
  }
  
  public final void c(String paramString)
  {
    if (a.booleanValue()) {
      d(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */