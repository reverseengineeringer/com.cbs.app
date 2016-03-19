package com.adobe.a.b;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.io.File;
import java.util.Locale;
import java.util.UUID;

public final class e
  extends f
{
  private static a A = null;
  private static volatile boolean B = false;
  static SharedPreferences b;
  static SharedPreferences.Editor c;
  private static Integer u = Integer.valueOf(1);
  private static i v = null;
  protected Context a = null;
  private String w = null;
  private String x = null;
  private String y = null;
  private String z = "UTF-8";
  
  public static e a()
  {
    return a.a;
  }
  
  public static e a(Context paramContext)
  {
    e locale = a.a;
    d(paramContext);
    return a.a;
  }
  
  private static void c(Context paramContext)
  {
    Object localObject = null;
    e locale = a.a;
    if ((paramContext != null) && (!B)) {}
    try
    {
      a = paramContext;
      if (A == null) {
        A = new a(locale);
      }
      if (v == null) {
        v = new i(new File(a.getCacheDir(), "AppMeasurementOfflineCacheDatabase.sqlite").getPath());
      }
      paramContext = a.getSharedPreferences("APP_MEASUREMENT_CACHE", 0);
      b = paramContext;
      c = paramContext.edit();
      paramContext = (Context)localObject;
      if (a != null) {
        paramContext = b.getString("APP_MEASUREMENT_VISITOR_ID", null);
      }
      e = paramContext;
      if (e == null)
      {
        e = UUID.randomUUID().toString().replace("-", "");
        paramContext = e;
        if (a != null)
        {
          c.putString("APP_MEASUREMENT_VISITOR_ID", paramContext);
          c.commit();
        }
      }
      v.a();
      q = ("Mozilla/5.0 (Linux; U; Android " + Build.VERSION.RELEASE + "; " + locale.o() + "; " + Build.MODEL + " Build/" + Build.ID + ") " + locale.c());
      paramContext = new File(a.getCacheDir(), "ADMS_OfflineCache.offline");
      if (paramContext.exists()) {
        v.c(paramContext.getPath());
      }
      B = true;
      return;
    }
    finally {}
  }
  
  private static void d(Context paramContext)
  {
    if ((paramContext instanceof Activity)) {
      c(paramContext.getApplicationContext());
    }
    while (paramContext == null) {
      return;
    }
    c(paramContext);
  }
  
  protected static String i()
  {
    return Build.VERSION.RELEASE;
  }
  
  private String o()
  {
    if (y == null) {
      if (a != null) {
        break label25;
      }
    }
    label25:
    for (y = "en-US";; y = a.getResources().getConfiguration().locale.toString().replace('_', '-')) {
      return y;
    }
  }
  
  protected final void a(String paramString)
  {
    if (h) {}
    paramString = new StringBuilder(paramString);
    paramString.append("\tUser-Agent\t");
    paramString.append(q);
    paramString.append("\tAccept-Language\t");
    paramString.append(o());
    v.a(paramString.toString());
  }
  
  public final void b()
  {
    A.b(a);
  }
  
  public final void b(Context paramContext)
  {
    d(paramContext);
    A.a(a);
  }
  
  protected final String c()
  {
    if (w == null) {}
    try
    {
      if (a == null) {
        w = "";
      }
      for (;;)
      {
        return w;
        Object localObject2 = a.getPackageManager();
        ApplicationInfo localApplicationInfo = ((PackageManager)localObject2).getApplicationInfo(a.getPackageName(), 0);
        Object localObject1 = ((PackageManager)localObject2).getPackageInfo(a.getPackageName(), 0);
        localObject2 = (String)((PackageManager)localObject2).getApplicationLabel(localApplicationInfo);
        localObject1 = versionName;
        if (g((String)localObject2))
        {
          localObject2 = new StringBuilder().append((String)localObject2);
          if (!g((String)localObject1)) {
            break;
          }
          localObject1 = "/" + (String)localObject1;
          w = ((String)localObject1);
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        localNameNotFoundException.toString();
        localNameNotFoundException.getMessage();
        w = "";
        continue;
        String str = "";
      }
    }
  }
  
  public final Object clone()
  {
    throw new CloneNotSupportedException();
  }
  
  protected final String d()
  {
    if (x == null) {
      if (a != null) {
        break label25;
      }
    }
    label25:
    DisplayMetrics localDisplayMetrics;
    for (x = "";; x = (widthPixels + "x" + heightPixels))
    {
      return x;
      localDisplayMetrics = a.getResources().getDisplayMetrics();
    }
  }
  
  protected final String e()
  {
    return Build.MODEL;
  }
  
  protected final String f()
  {
    return "Android " + Build.VERSION.RELEASE;
  }
  
  protected final String g()
  {
    if (a == null) {
      return "";
    }
    return ((TelephonyManager)a.getSystemService("phone")).getNetworkOperatorName();
  }
  
  protected final String h()
  {
    return z;
  }
  
  private static final class a
  {
    public static e a = new e((byte)0);
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */