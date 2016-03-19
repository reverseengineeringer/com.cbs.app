package android.support.v4.app;

import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class BundleCompatDonut
{
  private static final String TAG = "BundleCompatDonut";
  private static Method sGetIBinderMethod;
  private static boolean sGetIBinderMethodFetched;
  private static Method sPutIBinderMethod;
  private static boolean sPutIBinderMethodFetched;
  
  public static IBinder getBinder(Bundle paramBundle, String paramString)
  {
    if (!sGetIBinderMethodFetched) {}
    try
    {
      Method localMethod = Bundle.class.getMethod("getIBinder", new Class[] { String.class });
      sGetIBinderMethod = localMethod;
      localMethod.setAccessible(true);
      sGetIBinderMethodFetched = true;
      if (sGetIBinderMethod != null) {}
      try
      {
        paramBundle = (IBinder)sGetIBinderMethod.invoke(paramBundle, new Object[] { paramString });
        return paramBundle;
      }
      catch (IllegalArgumentException paramBundle)
      {
        sGetIBinderMethod = null;
        return null;
      }
      catch (InvocationTargetException paramBundle)
      {
        for (;;) {}
      }
      catch (IllegalAccessException paramBundle)
      {
        for (;;) {}
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  public static void putBinder(Bundle paramBundle, String paramString, IBinder paramIBinder)
  {
    if (!sPutIBinderMethodFetched) {}
    try
    {
      Method localMethod = Bundle.class.getMethod("putIBinder", new Class[] { String.class, IBinder.class });
      sPutIBinderMethod = localMethod;
      localMethod.setAccessible(true);
      sPutIBinderMethodFetched = true;
      if (sPutIBinderMethod != null) {}
      try
      {
        sPutIBinderMethod.invoke(paramBundle, new Object[] { paramString, paramIBinder });
        return;
      }
      catch (IllegalArgumentException paramBundle)
      {
        sPutIBinderMethod = null;
        return;
      }
      catch (InvocationTargetException paramBundle)
      {
        for (;;) {}
      }
      catch (IllegalAccessException paramBundle)
      {
        for (;;) {}
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.BundleCompatDonut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */