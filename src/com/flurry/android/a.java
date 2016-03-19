package com.flurry.android;

import android.app.Application;
import android.content.Context;
import android.os.Build.VERSION;
import com.flurry.sdk.am;
import com.flurry.sdk.bf;
import com.flurry.sdk.bx;
import com.flurry.sdk.y;
import java.util.Map;

public final class a
{
  private static final String a = a.class.getSimpleName();
  
  public static b a(String paramString, Map<String, String> paramMap)
  {
    b localb = b.a;
    if (Build.VERSION.SDK_INT < 10)
    {
      am.b(a, "Device SDK Version older than 10");
      return localb;
    }
    if (paramString == null)
    {
      am.b(a, "String eventId passed to logEvent was null.");
      return localb;
    }
    try
    {
      paramMap = com.flurry.sdk.a.a().a(paramString, paramMap);
      return paramMap;
    }
    catch (Throwable paramMap)
    {
      am.a(a, "Failed to log event: " + paramString, paramMap);
    }
    return localb;
  }
  
  public static void a()
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      am.b(a, "Device SDK Version older than 10");
      return;
    }
    try
    {
      com.flurry.sdk.a.a().e();
      return;
    }
    catch (Throwable localThrowable)
    {
      am.a(a, "", localThrowable);
    }
  }
  
  public static void a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      am.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramContext == null) {
      throw new NullPointerException("Null context");
    }
    if ((paramContext instanceof Application)) {
      throw new NullPointerException("Cannot start a session with an Application context");
    }
    if (y.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before starting a session");
    }
    try
    {
      bf.a().b(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      am.a(a, "", paramContext);
    }
  }
  
  public static void a(Context paramContext, String paramString)
  {
    for (;;)
    {
      try
      {
        if (Build.VERSION.SDK_INT < 10)
        {
          am.b(a, "Device SDK Version older than 10");
          return;
        }
        if (paramContext == null) {
          throw new NullPointerException("Null context");
        }
      }
      finally {}
      if ((paramString == null) || (paramString.length() == 0)) {
        throw new IllegalArgumentException("apiKey not specified");
      }
      try
      {
        bx.a();
        y.a(paramContext, paramString);
      }
      catch (Throwable paramContext)
      {
        am.a(a, "", paramContext);
      }
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      am.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramBoolean)
    {
      am.b();
      return;
    }
    am.a();
  }
  
  public static void b(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 10)
    {
      am.b(a, "Device SDK Version older than 10");
      return;
    }
    if (paramContext == null) {
      throw new NullPointerException("Null context");
    }
    if ((paramContext instanceof Application)) {
      throw new IllegalArgumentException("Cannot end a session with an Application context");
    }
    if (y.a() == null) {
      throw new IllegalStateException("Flurry SDK must be initialized before ending a session");
    }
    try
    {
      bf.a().c(paramContext);
      return;
    }
    catch (Throwable paramContext)
    {
      am.a(a, "", paramContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */