package com.cbs.app.visualon.player;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public class CCSettingPreferences
{
  public static void a(int paramInt, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putInt("ccFontSize", paramInt);
    paramContext.commit();
  }
  
  public static void a(String paramString, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("ccFontColor", paramString);
    paramContext.commit();
  }
  
  public static void b(int paramInt, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putInt("ccFontOpacity", paramInt);
    paramContext.commit();
  }
  
  public static void b(String paramString, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("ccFontFace", paramString);
    paramContext.commit();
  }
  
  public static void c(int paramInt, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putInt("ccFontEdgeType", paramInt);
    paramContext.commit();
  }
  
  public static void c(String paramString, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("ccBackgroundColor", paramString);
    paramContext.commit();
  }
  
  public static void d(int paramInt, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putInt("ccBackgroundOpacity", paramInt);
    paramContext.commit();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.visualon.player.CCSettingPreferences
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */