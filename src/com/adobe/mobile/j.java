package com.adobe.mobile;

import android.app.Activity;
import android.content.Context;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;

public final class j
{
  public static String a()
  {
    Object localObject = new FutureTask(new Callable() {});
    am.j().execute((Runnable)localObject);
    try
    {
      localObject = (String)((FutureTask)localObject).get();
      return (String)localObject;
    }
    catch (Exception localException)
    {
      am.a("Analytics - Unable to get UserIdentifier (%s)", new Object[] { localException.getMessage() });
    }
    return null;
  }
  
  public static void a(Activity paramActivity)
  {
    if (am.o())
    {
      am.b("Analytics - Method collectLifecycleData is not available for Wearable", new Object[0]);
      return;
    }
    am.j().execute(new Runnable()
    {
      public final void run()
      {
        l.a(a);
      }
    });
  }
  
  public static void a(Context paramContext, a parama)
  {
    am.a(paramContext);
    am.a(parama);
    if (parama == a.b) {
      am.j().execute(new Runnable()
      {
        public final void run() {}
      });
    }
  }
  
  public static void b()
  {
    if (am.o())
    {
      am.b("Analytics - Method pauseCollectingLifecycleData is not available for Wearable", new Object[0]);
      return;
    }
    n.h();
    am.j().execute(new Runnable()
    {
      public final void run() {}
    });
  }
  
  public static enum a
  {
    private final int c;
    
    private a(int paramInt)
    {
      c = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */