package com.adobe.a.b;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public final class a
  extends b
{
  private e c = null;
  private Context d = null;
  private boolean e = false;
  
  protected a(e parame)
  {
    super(parame);
    c = parame;
  }
  
  protected final int a(String paramString)
  {
    return e.b.getInt(paramString, 0);
  }
  
  protected final void a()
  {
    super.a();
    b("Android " + e.i(), a);
  }
  
  protected final void a(Context paramContext)
  {
    d = paramContext;
    if (!e)
    {
      paramContext = getApplicationInfopackageName + "open";
      if (c(paramContext)) {
        a("ADMS_SuccessfulClose", false);
      }
      a(paramContext, true);
      e();
    }
    e = true;
  }
  
  protected final void a(String paramString, int paramInt)
  {
    e.c.putInt(paramString, paramInt);
    e.c.commit();
  }
  
  protected final void a(String paramString, long paramLong)
  {
    e.c.putLong(paramString, paramLong);
    e.c.commit();
  }
  
  protected final void a(String paramString1, String paramString2)
  {
    e.c.putString(paramString1, paramString2);
    e.c.commit();
  }
  
  protected final void a(String paramString, boolean paramBoolean)
  {
    e.c.putBoolean(paramString, paramBoolean);
    e.c.commit();
  }
  
  protected final long b(String paramString)
  {
    return e.b.getLong(paramString, 0L);
  }
  
  protected final String b()
  {
    try
    {
      String str = c.a.getPackageManager().getPackageInfo(c.a.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }
  
  protected final void b(Context paramContext)
  {
    a(getApplicationInfopackageName + "open", false);
    f();
    e = false;
  }
  
  protected final String c()
  {
    try
    {
      Object localObject = c.a.getPackageManager();
      localObject = (String)((PackageManager)localObject).getApplicationLabel(((PackageManager)localObject).getApplicationInfo(c.a.getPackageName(), 0));
      return (String)localObject;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return null;
  }
  
  protected final boolean c(String paramString)
  {
    return e.b.getBoolean(paramString, false);
  }
  
  protected final String d(String paramString)
  {
    return e.b.getString(paramString, null);
  }
  
  protected final void d()
  {
    if (!c("ADMS_ReferrerProcessed"))
    {
      String str1 = d("utm_source");
      String str2 = d("utm_medium");
      String str3 = d("utm_term");
      String str4 = d("utm_content");
      String str5 = d("utm_campaign");
      if ((str1 != null) && (str2 != null) && (str5 != null))
      {
        b(str1, "a.referrer.campaign.source");
        b(str2, "a.referrer.campaign.medium");
        b(str3, "a.referrer.campaign.term");
        b(str4, "a.referrer.campaign.content");
        b(str5, "a.referrer.campaign.name");
        a("ADMS_ReferrerProcessed", true);
      }
    }
  }
  
  protected final boolean e(String paramString)
  {
    return e.b.contains(paramString);
  }
  
  protected final void f(String paramString)
  {
    e.c.remove(paramString);
    e.c.commit();
  }
}

/* Location:
 * Qualified Name:     com.adobe.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */