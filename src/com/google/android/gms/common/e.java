package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.NotificationManager;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Build;
import android.os.Bundle;
import android.os.UserManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.gms.R.string;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.l;
import com.google.android.gms.internal.js;
import com.google.android.gms.internal.ka;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

public final class e
{
  @Deprecated
  public static final int a = 8115000;
  public static boolean b = false;
  public static boolean c = false;
  static final AtomicBoolean d = new AtomicBoolean();
  private static int e = -1;
  private static final Object f = new Object();
  private static String g = null;
  private static Integer h = null;
  private static final AtomicBoolean i = new AtomicBoolean();
  
  @Deprecated
  public static int a(Context paramContext)
  {
    int j = 9;
    if (h.a) {
      j = 0;
    }
    for (;;)
    {
      return j;
      PackageManager localPackageManager = paramContext.getPackageManager();
      for (;;)
      {
        try
        {
          paramContext.getResources().getString(R.string.common_google_play_services_unknown_issue);
          if (("com.google.android.gms".equals(paramContext.getPackageName())) || (i.get())) {
            break label281;
          }
        }
        catch (Throwable localThrowable)
        {
          synchronized (f)
          {
            if (g == null)
            {
              g = paramContext.getPackageName();
              try
              {
                localObject3 = getPackageManagergetApplicationInfogetPackageName128metaData;
                if (localObject3 == null) {
                  continue;
                }
                h = Integer.valueOf(((Bundle)localObject3).getInt("com.google.android.gms.version"));
              }
              catch (PackageManager.NameNotFoundException localNameNotFoundException)
              {
                Object localObject3;
                Log.wtf("GooglePlayServicesUtil", "This should never happen.", localNameNotFoundException);
                continue;
              }
              localObject3 = h;
              if (localObject3 != null) {
                break;
              }
              throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
              localThrowable = localThrowable;
              Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
              continue;
              h = null;
            }
          }
        }
        if (!g.equals(paramContext.getPackageName())) {
          throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + g + "' and this call used package '" + paramContext.getPackageName() + "'.");
        }
      }
      if (localNameNotFoundException.intValue() != a) {
        throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + a + " but found " + localNameNotFoundException + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
      }
      label281:
      Object localObject2;
      try
      {
        localObject2 = localPackageManager.getPackageInfo("com.google.android.gms", 64);
        j.a();
        int k = versionCode;
        if (js.a(paramContext))
        {
          if (j.a((PackageInfo)localObject2, i.bb.a) == null) {
            continue;
          }
          label317:
          j = js.a(a);
          if (js.a(versionCode) >= j) {
            break label409;
          }
          new StringBuilder("Google Play services out of date.  Requires ").append(a).append(" but found ").append(versionCode);
          return 2;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        return 1;
      }
      label409:
      try
      {
        paramContext = j.a(localPackageManager.getPackageInfo("com.android.vending", 8256), i.bb.a);
        if (paramContext != null)
        {
          paramContext = j.a((PackageInfo)localObject2, new i.a[] { paramContext });
          if (paramContext != null) {
            break label317;
          }
          return 9;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext) {}
    }
    localObject2 = applicationInfo;
    paramContext = (Context)localObject2;
    if (localObject2 == null) {}
    try
    {
      paramContext = localPackageManager.getApplicationInfo("com.google.android.gms", 0);
      if (!enabled) {
        return 3;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", paramContext);
      return 1;
    }
    return 0;
    return 9;
  }
  
  @Deprecated
  public static Dialog a(int paramInt1, Activity paramActivity, int paramInt2)
  {
    return a(paramInt1, paramActivity, null, paramInt2, null);
  }
  
  private static Dialog a(int paramInt1, Activity paramActivity, Fragment paramFragment, int paramInt2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    Object localObject3 = null;
    if (paramInt1 == 0) {
      return null;
    }
    int j = paramInt1;
    if (js.a(paramActivity))
    {
      j = paramInt1;
      if (paramInt1 == 2) {
        j = 42;
      }
    }
    if (ka.c())
    {
      localObject1 = new TypedValue();
      paramActivity.getTheme().resolveAttribute(16843529, (TypedValue)localObject1, true);
      if (!"Theme.Dialog.Alert".equals(paramActivity.getResources().getResourceEntryName(resourceId))) {}
    }
    for (Object localObject1 = new AlertDialog.Builder(paramActivity, 5);; localObject1 = null)
    {
      Object localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = new AlertDialog.Builder(paramActivity);
      }
      ((AlertDialog.Builder)localObject2).setMessage(k.a(paramActivity, j, f(paramActivity)));
      if (paramOnCancelListener != null) {
        ((AlertDialog.Builder)localObject2).setOnCancelListener(paramOnCancelListener);
      }
      b.a();
      paramOnCancelListener = b.a(paramActivity, j, "d");
      if (paramFragment == null)
      {
        paramFragment = new l(paramActivity, paramOnCancelListener, paramInt2);
        paramOnCancelListener = k.a(paramActivity, j);
        if (paramOnCancelListener != null) {
          ((AlertDialog.Builder)localObject2).setPositiveButton(paramOnCancelListener, paramFragment);
        }
        paramFragment = paramActivity.getResources();
        paramActivity = (Activity)localObject3;
        switch (j)
        {
        default: 
          Log.e("GoogleApiAvailability", "Unexpected error code " + j);
          paramActivity = (Activity)localObject3;
        }
      }
      for (;;)
      {
        if (paramActivity != null) {
          ((AlertDialog.Builder)localObject2).setTitle(paramActivity);
        }
        return ((AlertDialog.Builder)localObject2).create();
        paramFragment = new l(paramFragment, paramOnCancelListener, paramInt2);
        break;
        paramActivity = paramFragment.getString(R.string.common_google_play_services_install_title);
        continue;
        paramActivity = paramFragment.getString(R.string.common_google_play_services_enable_title);
        continue;
        paramActivity = paramFragment.getString(R.string.common_google_play_services_updating_title);
        continue;
        paramActivity = paramFragment.getString(R.string.common_google_play_services_update_title);
        continue;
        paramActivity = paramFragment.getString(R.string.common_android_wear_update_title);
        continue;
        Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
        paramActivity = paramFragment.getString(R.string.common_google_play_services_unsupported_title);
        continue;
        Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
        paramActivity = paramFragment.getString(R.string.common_google_play_services_network_error_title);
        continue;
        Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
        paramActivity = paramFragment.getString(R.string.common_google_play_services_invalid_account_title);
        continue;
        Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
        paramActivity = (Activity)localObject3;
        continue;
        Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
        paramActivity = paramFragment.getString(R.string.common_google_play_services_sign_in_failed_title);
      }
    }
  }
  
  @Deprecated
  public static String a(int paramInt)
  {
    return ConnectionResult.a(paramInt);
  }
  
  public static void a(Activity paramActivity, DialogInterface.OnCancelListener paramOnCancelListener, String paramString, Dialog paramDialog)
  {
    if ((paramActivity instanceof FragmentActivity))
    {
      paramActivity = ((FragmentActivity)paramActivity).getSupportFragmentManager();
      SupportErrorDialogFragment.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
      return;
    }
    if (ka.a())
    {
      paramActivity = paramActivity.getFragmentManager();
      a.a(paramDialog, paramOnCancelListener).show(paramActivity, paramString);
      return;
    }
    throw new RuntimeException("This Activity does not support Fragments.");
  }
  
  public static boolean a(int paramInt, Activity paramActivity, Fragment paramFragment, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramFragment = a(paramInt, paramActivity, paramFragment, 2, paramOnCancelListener);
    if (paramFragment == null) {
      return false;
    }
    a(paramActivity, paramOnCancelListener, "GooglePlayServicesErrorDialog", paramFragment);
    return true;
  }
  
  public static boolean a(Context paramContext, int paramInt)
  {
    if (a(paramContext, paramInt, "com.google.android.gms"))
    {
      paramContext = paramContext.getPackageManager();
      if (j.a().a(paramContext, "com.google.android.gms")) {
        return true;
      }
    }
    return false;
  }
  
  private static boolean a(Context paramContext, int paramInt, String paramString)
  {
    boolean bool2 = false;
    if (ka.f()) {
      paramContext = (AppOpsManager)paramContext.getSystemService("appops");
    }
    for (;;)
    {
      try
      {
        paramContext.checkPackage(paramInt, paramString);
        bool1 = true;
        return bool1;
      }
      catch (SecurityException paramContext) {}
      paramContext = paramContext.getPackageManager().getPackagesForUid(paramInt);
      boolean bool1 = bool2;
      if (paramContext != null)
      {
        paramInt = 0;
        for (;;)
        {
          bool1 = bool2;
          if (paramInt >= paramContext.length) {
            break;
          }
          if (paramString.equals(paramContext[paramInt])) {
            return true;
          }
          paramInt += 1;
        }
      }
    }
    return false;
  }
  
  static boolean a(Context paramContext, String paramString)
  {
    int j = 1;
    Object localObject;
    if (ka.i())
    {
      localObject = paramContext.getPackageManager().getPackageInstaller().getAllSessions().iterator();
      while (((Iterator)localObject).hasNext()) {
        if (paramString.equals(((PackageInstaller.SessionInfo)((Iterator)localObject).next()).getAppPackageName())) {
          return true;
        }
      }
    }
    if (ka.e())
    {
      localObject = ((UserManager)paramContext.getSystemService("user")).getApplicationRestrictions(paramContext.getPackageName());
      if ((localObject == null) || (!"true".equals(((Bundle)localObject).getString("restricted_profile")))) {}
    }
    while (j != 0)
    {
      return false;
      j = 0;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      boolean bool = getApplicationInfo8192enabled;
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return false;
  }
  
  public static boolean a(PackageManager paramPackageManager)
  {
    if (!b(paramPackageManager)) {
      if (!b) {
        break label23;
      }
    }
    label23:
    for (boolean bool = c; !bool; bool = "user".equals(Build.TYPE)) {
      return true;
    }
    return false;
  }
  
  @Deprecated
  public static Intent b(int paramInt)
  {
    b.a();
    return b.a(null, paramInt, null);
  }
  
  @Deprecated
  public static void b(Context paramContext)
  {
    b.a();
    int j = b.a(paramContext);
    if (j != 0)
    {
      b.a();
      paramContext = b.a(paramContext, j, "e");
      Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + j);
      if (paramContext == null) {
        throw new c(j);
      }
      throw new d(j, "Google Play Services not available", paramContext);
    }
  }
  
  @Deprecated
  public static boolean b(Context paramContext, int paramInt)
  {
    if (paramInt == 18) {
      return true;
    }
    if (paramInt == 1) {
      return a(paramContext, "com.google.android.gms");
    }
    return false;
  }
  
  private static boolean b(PackageManager paramPackageManager)
  {
    for (boolean bool = true;; bool = false) {
      synchronized (f)
      {
        int j = e;
        if (j == -1) {}
        try
        {
          paramPackageManager = paramPackageManager.getPackageInfo("com.google.android.gms", 64);
          j.a();
          if (j.a(paramPackageManager, new i.a[] { i.b[1] }) != null) {}
          for (e = 1; e != 0; e = 0) {
            return bool;
          }
        }
        catch (PackageManager.NameNotFoundException paramPackageManager)
        {
          for (;;)
          {
            e = 0;
          }
        }
      }
    }
  }
  
  @Deprecated
  public static void c(Context paramContext)
  {
    if (d.getAndSet(true)) {
      return;
    }
    try
    {
      ((NotificationManager)paramContext.getSystemService("notification")).cancel(10436);
      return;
    }
    catch (SecurityException paramContext) {}
  }
  
  @Deprecated
  public static boolean c(int paramInt)
  {
    switch (paramInt)
    {
    case 4: 
    case 5: 
    case 6: 
    case 7: 
    case 8: 
    default: 
      return false;
    }
    return true;
  }
  
  public static Resources d(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication("com.google.android.gms");
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static Context e(Context paramContext)
  {
    try
    {
      paramContext = paramContext.createPackageContext("com.google.android.gms", 3);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static String f(Context paramContext)
  {
    Object localObject2 = getApplicationInfoname;
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = paramContext.getPackageName();
      localObject2 = paramContext.getApplicationContext().getPackageManager();
    }
    try
    {
      paramContext = ((PackageManager)localObject2).getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext != null) {
        localObject1 = ((PackageManager)localObject2).getApplicationLabel(paramContext).toString();
      }
      return (String)localObject1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
  }
  
  public static boolean g(Context paramContext)
  {
    paramContext = paramContext.getPackageManager();
    return (ka.i()) && (paramContext.hasSystemFeature("com.google.sidewinder"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */