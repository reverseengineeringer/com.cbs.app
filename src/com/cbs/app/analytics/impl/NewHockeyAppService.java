package com.cbs.app.analytics.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import net.hockeyapp.android.a;
import net.hockeyapp.android.b;

public class NewHockeyAppService
{
  public static void a(Application paramApplication)
  {
    b.a(paramApplication, "7990f677bc8ffb027bb9b7fab538a24a", new net.hockeyapp.android.c()
    {
      public final boolean a()
      {
        return true;
      }
    });
  }
  
  public static void a(Context paramContext)
  {
    if (paramContext != null)
    {
      paramContext = (Activity)paramContext;
      long l = System.currentTimeMillis();
      if (paramContext != null)
      {
        SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("HockeyApp", 0).edit();
        localEditor.putLong("startTime" + paramContext.hashCode(), l);
        net.hockeyapp.android.e.c.a(localEditor);
      }
    }
  }
  
  public static void b(Context paramContext)
  {
    long l1;
    if (paramContext != null)
    {
      paramContext = (Activity)paramContext;
      l1 = System.currentTimeMillis();
      if (paramContext != null)
      {
        if (a.b != null) {
          break label157;
        }
        a.a(paramContext);
        if (a.b != null) {
          break label157;
        }
      }
    }
    label157:
    for (int i = 0;; i = 1)
    {
      if (i != 0)
      {
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("HockeyApp", 0);
        long l2 = localSharedPreferences.getLong("startTime" + paramContext.hashCode(), 0L);
        long l3 = localSharedPreferences.getLong("usageTime" + a.b, 0L);
        if (l2 > 0L)
        {
          paramContext = localSharedPreferences.edit();
          paramContext.putLong("usageTime" + a.b, l1 - l2 + l3);
          net.hockeyapp.android.e.c.a(paramContext);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.NewHockeyAppService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */