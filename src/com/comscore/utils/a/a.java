package com.comscore.utils.a;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import com.comscore.utils.l;
import com.comscore.utils.n;

public final class a
{
  private static final String[] a = { "0123456789ABCDEF", "0123456789abcdef", "9774d56d682e549c", "9774D56D682E549C", "unknown", "UNKNOWN", "android_id", "ANDROID_ID" };
  private Context b;
  private boolean c;
  private String d;
  private l e;
  
  public a(Context paramContext, l paraml)
  {
    b = paramContext;
    e = paraml;
    c = false;
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    boolean bool2 = false;
    paramString2 = e.b(paramString2).split(";");
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < paramString2.length)
      {
        if (paramString2[i].equals(paramString1)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  private String b()
  {
    int k = 0;
    if (c) {
      return d;
    }
    c = true;
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {}
    for (String str1 = Build.SERIAL;; str1 = null)
    {
      String str2;
      if (str1 != null)
      {
        str2 = str1;
        if (str1.length() != 0) {}
      }
      else
      {
        if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 3)
        {
          str1 = Settings.Secure.getString(b.getContentResolver(), "android_id");
          if ((str1 == null) || (str1.length() <= 0)) {}
        }
        for (;;)
        {
          if (str1 != null)
          {
            str2 = str1;
            if (str1.length() != 0) {
              break;
            }
          }
          return null;
          str1 = null;
        }
      }
      int i = 0;
      for (;;)
      {
        int j = k;
        if (i < a.length)
        {
          if (a[i].equals(str2)) {
            j = 1;
          }
        }
        else
        {
          if (j == 0) {
            break;
          }
          d = str2;
          return str2;
        }
        i += 1;
      }
      return null;
    }
  }
  
  private void b(String paramString1, String paramString2)
  {
    String str2 = e.b(paramString2);
    String str1 = paramString1;
    if (str2.length() > 0) {
      str1 = str2 + ";" + paramString1;
    }
    e.a(paramString2, str1);
  }
  
  public final boolean a()
  {
    String str = b();
    if (str == null) {}
    while (a(str, "idCheckData")) {
      return true;
    }
    b(str, "idCheckData");
    return false;
  }
  
  public final boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0)) {}
    String str;
    do
    {
      do
      {
        return true;
        str = b();
      } while ((str == null) || (a(str, "adIdCheckData")));
      b(str, "adIdCheckData");
    } while (!n.a(str).equals(paramString));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */