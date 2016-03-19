package com.flurry.sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;

public class ac
{
  private static ac a;
  private static final String b = ac.class.getSimpleName();
  private Object c;
  
  private ac()
  {
    if ((Build.VERSION.SDK_INT >= 14) && (c == null))
    {
      Context localContext = y.a().b();
      if ((localContext instanceof Application))
      {
        c = new Application.ActivityLifecycleCallbacks()
        {
          private static void a(Activity paramAnonymousActivity, ab.a paramAnonymousa)
          {
            ab localab = new ab();
            a = paramAnonymousActivity;
            b = paramAnonymousa;
            ai.a().a(localab);
          }
          
          public final void onActivityCreated(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
          {
            am.a(3, ac.c(), "onActivityCreated for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.a);
          }
          
          public final void onActivityDestroyed(Activity paramAnonymousActivity)
          {
            am.a(3, ac.c(), "onActivityDestroyed for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.b);
          }
          
          public final void onActivityPaused(Activity paramAnonymousActivity)
          {
            am.a(3, ac.c(), "onActivityPaused for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.c);
          }
          
          public final void onActivityResumed(Activity paramAnonymousActivity)
          {
            am.a(3, ac.c(), "onActivityResumed for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.d);
          }
          
          public final void onActivitySaveInstanceState(Activity paramAnonymousActivity, Bundle paramAnonymousBundle)
          {
            am.a(3, ac.c(), "onActivitySaveInstanceState for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.g);
          }
          
          public final void onActivityStarted(Activity paramAnonymousActivity)
          {
            am.a(3, ac.c(), "onActivityStarted for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.e);
          }
          
          public final void onActivityStopped(Activity paramAnonymousActivity)
          {
            am.a(3, ac.c(), "onActivityStopped for activity:" + paramAnonymousActivity);
            a(paramAnonymousActivity, ab.a.f);
          }
        };
        ((Application)localContext).registerActivityLifecycleCallbacks((Application.ActivityLifecycleCallbacks)c);
      }
    }
  }
  
  public static ac a()
  {
    try
    {
      if (a == null) {
        a = new ac();
      }
      ac localac = a;
      return localac;
    }
    finally {}
  }
  
  public final boolean b()
  {
    return c != null;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */