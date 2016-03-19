package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.ProgressBar;
import com.google.android.gms.R.string;
import com.google.android.gms.common.internal.r;

public final class b
{
  public static final int a = e.a;
  private static final b b = new b();
  
  public static int a(Context paramContext)
  {
    int j = e.a(paramContext);
    int i = j;
    if (e.b(paramContext, j)) {
      i = 18;
    }
    return i;
  }
  
  public static Dialog a(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject2 = new ProgressBar(paramActivity, null, 16842874);
    ((ProgressBar)localObject2).setIndeterminate(true);
    ((ProgressBar)localObject2).setVisibility(0);
    Object localObject1 = new AlertDialog.Builder(paramActivity);
    ((AlertDialog.Builder)localObject1).setView((View)localObject2);
    localObject2 = e.f(paramActivity);
    ((AlertDialog.Builder)localObject1).setMessage(paramActivity.getResources().getString(R.string.common_google_play_services_updating_text, new Object[] { localObject2 }));
    ((AlertDialog.Builder)localObject1).setTitle(R.string.common_google_play_services_updating_title);
    ((AlertDialog.Builder)localObject1).setPositiveButton("", null);
    localObject1 = ((AlertDialog.Builder)localObject1).create();
    e.a(paramActivity, paramOnCancelListener, "GooglePlayServicesUpdatingDialog", (Dialog)localObject1);
    return (Dialog)localObject1;
  }
  
  public static Intent a(Context paramContext, int paramInt, String paramString)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 1: 
    case 2: 
      return r.a("com.google.android.gms", b(paramContext, paramString));
    case 42: 
      return r.a();
    }
    return r.a("com.google.android.gms");
  }
  
  public static b a()
  {
    return b;
  }
  
  public static boolean a(int paramInt)
  {
    return e.c(paramInt);
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    return e.b(paramContext, paramInt);
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    return e.a(paramContext, paramString);
  }
  
  private static String b(Context paramContext, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("gcore_");
    localStringBuilder.append(a);
    localStringBuilder.append("-");
    if (!TextUtils.isEmpty(paramString)) {
      localStringBuilder.append(paramString);
    }
    localStringBuilder.append("-");
    if (paramContext != null) {
      localStringBuilder.append(paramContext.getPackageName());
    }
    localStringBuilder.append("-");
    if (paramContext != null) {}
    try
    {
      localStringBuilder.append(getPackageManagergetPackageInfogetPackageName0versionCode);
      return localStringBuilder.toString();
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;) {}
    }
  }
  
  public static void b(Context paramContext)
  {
    e.c(paramContext);
  }
  
  @Deprecated
  public final Intent b(int paramInt)
  {
    return a(null, paramInt, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */