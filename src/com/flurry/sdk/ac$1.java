package com.flurry.sdk;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;

final class ac$1
  implements Application.ActivityLifecycleCallbacks
{
  ac$1(ac paramac) {}
  
  private static void a(Activity paramActivity, ab.a parama)
  {
    ab localab = new ab();
    a = paramActivity;
    b = parama;
    ai.a().a(localab);
  }
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    am.a(3, ac.c(), "onActivityCreated for activity:" + paramActivity);
    a(paramActivity, ab.a.a);
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    am.a(3, ac.c(), "onActivityDestroyed for activity:" + paramActivity);
    a(paramActivity, ab.a.b);
  }
  
  public final void onActivityPaused(Activity paramActivity)
  {
    am.a(3, ac.c(), "onActivityPaused for activity:" + paramActivity);
    a(paramActivity, ab.a.c);
  }
  
  public final void onActivityResumed(Activity paramActivity)
  {
    am.a(3, ac.c(), "onActivityResumed for activity:" + paramActivity);
    a(paramActivity, ab.a.d);
  }
  
  public final void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle)
  {
    am.a(3, ac.c(), "onActivitySaveInstanceState for activity:" + paramActivity);
    a(paramActivity, ab.a.g);
  }
  
  public final void onActivityStarted(Activity paramActivity)
  {
    am.a(3, ac.c(), "onActivityStarted for activity:" + paramActivity);
    a(paramActivity, ab.a.e);
  }
  
  public final void onActivityStopped(Activity paramActivity)
  {
    am.a(3, ac.c(), "onActivityStopped for activity:" + paramActivity);
    a(paramActivity, ab.a.f);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ac.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */