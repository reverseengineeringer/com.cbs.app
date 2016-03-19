package com.flurry.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public final class bp
{
  private static final String a = bp.class.getSimpleName();
  
  public static String a(Context paramContext)
  {
    paramContext = b(paramContext);
    if ((paramContext != null) && (packageName != null)) {
      return packageName;
    }
    return "";
  }
  
  private static PackageInfo b(Context paramContext)
  {
    PackageInfo localPackageInfo = null;
    if (paramContext != null) {}
    try
    {
      localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 20815);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      am.a(a, "Cannot find package info for package: " + paramContext.getPackageName());
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */