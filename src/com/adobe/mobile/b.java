package com.adobe.mobile;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;

public final class b
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
      am.a("Analytics - Unable to get TrackingIdentifier (%s)", new Object[] { localException.getMessage() });
    }
    return null;
  }
  
  public static void a(final Map<String, Object> paramMap)
  {
    paramMap = new HashMap(paramMap);
    am.j().execute(new Runnable()
    {
      public final void run()
      {
        c.a(a, paramMap);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */