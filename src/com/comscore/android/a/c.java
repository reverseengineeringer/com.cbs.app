package com.comscore.android.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.provider.Settings.Secure;

public final class c
{
  public static final String[] a = { "0123456789ABCDEF", "0123456789abcdef", "9774d56d682e549c", "9774D56D682E549C", "unknown", "UNKNOWN", "android_id", "ANDROID_ID" };
  private static final String b = "com.google.android.gms";
  private static final String c = "com.google.android.gms.ads.identifier.service.START";
  private static boolean d = false;
  private static final boolean e = false;
  
  public static boolean a(Context paramContext)
  {
    boolean bool2 = false;
    bool3 = false;
    bool1 = false;
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (d) {
      bool2 = bool1;
    }
    do
    {
      return bool2;
      locald = new d((byte)0);
      Intent localIntent = new Intent(c);
      localIntent.setPackage(b);
      bool1 = bool3;
      if (paramContext.bindService(localIntent, locald, 1)) {}
      try
      {
        boolean bool4 = new e(locald.a()).b();
        bool1 = bool2;
        if (!bool4) {
          bool1 = true;
        }
        paramContext.unbindService(locald);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException = localException;
          paramContext.unbindService(locald);
          bool1 = bool3;
        }
      }
      finally
      {
        localObject = finally;
        paramContext.unbindService(locald);
        throw ((Throwable)localObject);
      }
      bool2 = bool1;
    } while (bool1);
    d = true;
    return bool1;
  }
  
  public static final b b(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    boolean bool;
    if (Build.VERSION.SDK_INT > 4) {
      if (e) {
        bool = true;
      }
    }
    while (bool)
    {
      return f(paramContext);
      bool = a.a(paramContext);
      continue;
      bool = false;
    }
    return c(paramContext);
  }
  
  public static b c(Context paramContext)
  {
    int j = 0;
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {
      if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {
        localObject = Build.SERIAL;
      }
    }
    String str;
    for (Object localObject = new b("AndroidSerial", (String)localObject, 3, 1);; localObject = null)
    {
      str = ((b)localObject).a();
      if (str == null) {
        break label228;
      }
      i = 0;
      while (i < a.length)
      {
        if (a[i].equals(str)) {
          break label228;
        }
        i += 1;
      }
      localObject = null;
      break;
    }
    if ((str.length() > 3) && (!str.substring(0, 3).equals("***")) && (!str.substring(0, 3).equals("000")))
    {
      i = 1;
      if (i != 0) {
        return localObject;
      }
      if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() < 3) {
        break label233;
      }
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if ((paramContext == null) || (paramContext.length() <= 0)) {
        break label233;
      }
      paramContext = new b("AndroidId", paramContext, 7, 2);
      label191:
      localObject = paramContext.a();
      i = 0;
      label198:
      if (i >= a.length) {
        break label245;
      }
      if (!a[i].equals(localObject)) {
        break label238;
      }
    }
    label228:
    label233:
    label238:
    label245:
    for (int i = j;; i = 1)
    {
      localObject = paramContext;
      if (i != 0) {
        return localObject;
      }
      return null;
      i = 0;
      break;
      paramContext = null;
      break label191;
      i += 1;
      break label198;
    }
    return (b)localObject;
  }
  
  private static boolean d(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    if (Build.VERSION.SDK_INT <= 8) {}
    for (;;)
    {
      return false;
      try
      {
        paramContext.getPackageManager().getPackageInfo("com.android.vending", 0);
        d locald = new d((byte)0);
        Intent localIntent = new Intent(c);
        localIntent.setPackage(b);
        if (paramContext.bindService(localIntent, locald, 1))
        {
          paramContext.unbindService(locald);
          return true;
        }
      }
      catch (Exception paramContext) {}
    }
    return false;
  }
  
  private static String e(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    String str = "";
    d locald = new d((byte)0);
    Intent localIntent = new Intent(c);
    localIntent.setPackage(b);
    if (paramContext.bindService(localIntent, locald, 1)) {}
    try
    {
      str = new e(locald.a()).a();
      paramContext.unbindService(locald);
      return str;
    }
    catch (Exception localException)
    {
      localException = localException;
      paramContext.unbindService(locald);
      return "";
    }
    finally
    {
      localObject = finally;
      paramContext.unbindService(locald);
      throw ((Throwable)localObject);
    }
  }
  
  private static b f(Context paramContext)
  {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      throw new IllegalStateException("Cannot be called from the main thread");
    }
    for (;;)
    {
      try
      {
        boolean bool = d(paramContext);
        if (!bool) {
          break;
        }
        if (a(paramContext))
        {
          paramContext = e(paramContext);
          return new b(paramContext);
        }
      }
      catch (IllegalStateException paramContext)
      {
        throw paramContext;
      }
      paramContext = "none";
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.comscore.android.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */