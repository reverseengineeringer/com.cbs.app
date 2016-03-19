package com.google.android.libraries.cast.companionlibrary.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;

public final class c
{
  private final SharedPreferences a;
  
  public c(Context paramContext)
  {
    a = PreferenceManager.getDefaultSharedPreferences(paramContext);
  }
  
  public final String a(String paramString)
  {
    return b(paramString, null);
  }
  
  public final void a(String paramString, Boolean paramBoolean)
  {
    if (paramBoolean == null)
    {
      a.edit().remove(paramString).apply();
      return;
    }
    a.edit().putBoolean(paramString, paramBoolean.booleanValue()).apply();
  }
  
  public final void a(String paramString, Long paramLong)
  {
    if (paramLong == null)
    {
      a.edit().remove(paramString).apply();
      return;
    }
    a.edit().putLong(paramString, paramLong.longValue()).apply();
  }
  
  public final void a(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      a.edit().remove(paramString1).apply();
      return;
    }
    a.edit().putString(paramString1, paramString2).apply();
  }
  
  public final long b(String paramString)
  {
    return a.getLong(paramString, 0L);
  }
  
  public final String b(String paramString1, String paramString2)
  {
    return a.getString(paramString1, paramString2);
  }
  
  public final boolean c(String paramString)
  {
    return a.getBoolean(paramString, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */