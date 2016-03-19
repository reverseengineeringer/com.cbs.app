package com.cbs.app.view.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public final class Preferences
{
  public static void a(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putBoolean(paramString, true);
      paramContext.commit();
    }
  }
  
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putInt(paramString, paramInt);
      paramContext.commit();
    }
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putString(paramString1, paramString2);
      paramContext.commit();
    }
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putBoolean("shouldWeBlockAds", paramBoolean);
    paramContext.commit();
  }
  
  public static boolean a(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("shouldWeBlockAds", false);
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    boolean bool = paramBoolean;
    if (paramContext != null) {
      bool = PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean(paramString, paramBoolean);
    }
    return bool;
  }
  
  public static int b(Context paramContext, String paramString, int paramInt)
  {
    int i = paramInt;
    if (paramContext != null) {
      i = PreferenceManager.getDefaultSharedPreferences(paramContext).getInt(paramString, paramInt);
    }
    return i;
  }
  
  public static String b(Context paramContext)
  {
    String str = null;
    if (paramContext != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("deepLink", null);
    }
    return str;
  }
  
  public static String b(Context paramContext, String paramString1, String paramString2)
  {
    String str = paramString2;
    if (paramContext != null) {
      str = PreferenceManager.getDefaultSharedPreferences(paramContext).getString(paramString1, paramString2);
    }
    return str;
  }
  
  public static void b(Context paramContext, String paramString)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putString("deepLink", paramString);
      paramContext.commit();
    }
  }
  
  public static void b(Context paramContext, boolean paramBoolean)
  {
    if (paramContext != null)
    {
      paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
      paramContext.putBoolean("weWantedToSeeNeilsen", paramBoolean);
      paramContext.commit();
    }
  }
  
  public static void c(Context paramContext, boolean paramBoolean)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putBoolean("tou_failed", paramBoolean);
    paramContext.commit();
  }
  
  public static boolean c(Context paramContext)
  {
    boolean bool = false;
    if (paramContext != null) {
      bool = PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("weWantedToSeeNeilsen", false);
    }
    return bool;
  }
  
  public static boolean d(Context paramContext)
  {
    return PreferenceManager.getDefaultSharedPreferences(paramContext).getBoolean("tou_failed", false);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.Preferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */