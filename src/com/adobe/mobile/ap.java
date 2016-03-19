package com.adobe.mobile;

import android.content.Context;
import java.lang.reflect.Method;
import java.util.Map;

final class ap
{
  private static Class<?> a;
  private static Class<?> b;
  
  protected static void a(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2)
  {
    if ((am.o()) || (!af.a().c())) {
      return;
    }
    try
    {
      e().getDeclaredMethod("syncVidService", new Class[] { String.class, String.class, String.class, Long.TYPE, Long.TYPE }).invoke(null, new Object[] { paramString1, paramString2, paramString3, Long.valueOf(paramLong1), Long.valueOf(paramLong2) });
      return;
    }
    catch (Exception paramString1)
    {
      am.a("Wearable - Error syncing vistor id service (%s)", new Object[] { paramString1.getLocalizedMessage() });
    }
  }
  
  protected static void a(String paramString1, Map<String, String> paramMap, int paramInt, String paramString2)
  {
    try
    {
      d().getDeclaredMethod("sendGenericRequest", new Class[] { String.class, Map.class, Integer.TYPE, String.class }).invoke(null, new Object[] { paramString1, null, Integer.valueOf(5000), paramString2 });
      return;
    }
    catch (Exception paramString1)
    {
      am.a("Wearable - Error sending request (%s)", new Object[] { paramString1.getLocalizedMessage() });
    }
  }
  
  protected static boolean a()
  {
    try
    {
      Object localObject1 = ap.class.getClassLoader().loadClass("com.google.android.gms.common.GoogleApiAvailability");
      Object localObject3 = ((Class)localObject1).getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
      localObject1 = ((Class)localObject1).getDeclaredMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(localObject3, new Object[] { am.s() });
      if ((localObject1 instanceof Integer))
      {
        i = ((Integer)localObject1).intValue();
        return i == 0;
      }
    }
    catch (IllegalStateException localIllegalStateException1)
    {
      int i;
      am.c("Wearable - Google Play Services is not enabled in your app's AndroidManifest.xml", new Object[] { localIllegalStateException1.getLocalizedMessage() });
      try
      {
        Object localObject2 = ap.class.getClassLoader().loadClass("com.google.android.gms.common.GooglePlayServicesUtil").getDeclaredMethod("isGooglePlayServicesAvailable", new Class[] { Context.class }).invoke(null, new Object[] { am.s() });
        if ((localObject2 instanceof Integer))
        {
          i = ((Integer)localObject2).intValue();
          return i == 0;
        }
      }
      catch (IllegalStateException localIllegalStateException2)
      {
        am.c("Wearable - Google Play Services is not enabled in your app's AndroidManifest.xml", new Object[] { localIllegalStateException2.getLocalizedMessage() });
        return false;
      }
      catch (Exception localException1)
      {
        for (;;) {}
      }
    }
    catch (Exception localException2)
    {
      for (;;) {}
    }
  }
  
  protected static boolean a(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt)
  {
    try
    {
      paramString1 = d().getDeclaredMethod("sendAnalyticsRequest", new Class[] { String.class, String.class, Map.class, Integer.TYPE }).invoke(null, new Object[] { paramString1, paramString2, paramMap, Integer.valueOf(5000) });
      if ((paramString1 instanceof Boolean))
      {
        boolean bool = ((Boolean)paramString1).booleanValue();
        return bool;
      }
    }
    catch (Exception paramString1)
    {
      am.a("Wearable - Error sending request (%s)", new Object[] { paramString1.getLocalizedMessage() });
    }
    return false;
  }
  
  protected static boolean b()
  {
    if (!am.o()) {
      return true;
    }
    try
    {
      Object localObject = d().getDeclaredMethod("shouldSendHit", new Class[0]).invoke(null, new Object[0]);
      if ((localObject instanceof Boolean))
      {
        boolean bool = ((Boolean)localObject).booleanValue();
        return bool;
      }
    }
    catch (Exception localException)
    {
      am.a("Wearable - Error checking status of handheld app (%s)", new Object[] { localException.getLocalizedMessage() });
    }
    return true;
  }
  
  protected static byte[] b(String paramString1, Map<String, String> paramMap, int paramInt, String paramString2)
  {
    try
    {
      paramString1 = d().getDeclaredMethod("retrieveData", new Class[] { String.class, Map.class, Integer.TYPE, String.class }).invoke(null, new Object[] { paramString1, null, Integer.valueOf(paramInt), paramString2 });
      if ((paramString1 instanceof byte[]))
      {
        paramString1 = (byte[])paramString1;
        return paramString1;
      }
    }
    catch (Exception paramString1)
    {
      am.a("Wearable - Error sending request (%s)", new Object[] { paramString1.getLocalizedMessage() });
    }
    return null;
  }
  
  protected static void c()
  {
    if (!am.o()) {
      return;
    }
    try
    {
      e().getDeclaredMethod("syncConfigFromHandheld", new Class[0]).invoke(null, new Object[0]);
      return;
    }
    catch (Exception localException)
    {
      am.a("Wearable - Error syncing config (%s)", new Object[] { localException.getLocalizedMessage() });
    }
  }
  
  private static Class<?> d()
  {
    if (a != null) {
      return a;
    }
    try
    {
      a = ap.class.getClassLoader().loadClass("com.adobe.mobile.WearableFunction");
      return a;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("Wearable - Failed to load class com.adobe.mobile.WearableFunction", new Object[] { localException.getLocalizedMessage() });
      }
    }
  }
  
  private static Class<?> e()
  {
    if (b != null) {
      return b;
    }
    try
    {
      b = ap.class.getClassLoader().loadClass("com.adobe.mobile.ConfigSynchronizer");
      return b;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        am.a("Wearable - Failed to load class com.adobe.mobile.ConfigSynchronizer", new Object[] { localException.getLocalizedMessage() });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */