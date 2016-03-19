package com.urbanairship.push.iam;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.pm.ActivityInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.R.animator;
import com.urbanairship.i;
import com.urbanairship.j;
import com.urbanairship.l;
import com.urbanairship.p;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
  extends com.urbanairship.d
{
  private static i a;
  private static com.urbanairship.e b;
  private static int c = 0;
  private static boolean d = false;
  private final l e;
  private final Handler f;
  private WeakReference<Activity> g;
  private b h;
  private boolean i;
  private boolean j;
  private InAppMessage k;
  private final List<Object> l = new ArrayList();
  private final Object m = new Object();
  private c n;
  private long o;
  private final Runnable p = new d.1(this);
  private final b.a q = new d.4(this);
  
  public d(l paraml)
  {
    e = paraml;
    o = 3000L;
    f = new Handler(Looper.getMainLooper());
    i = j;
    if (Build.VERSION.SDK_INT >= 11) {
      n = new d.2(this);
    }
  }
  
  @TargetApi(14)
  public static void a(Application paramApplication)
  {
    if (a == null)
    {
      paramApplication = new d.5(paramApplication);
      a = paramApplication;
      paramApplication.a();
    }
  }
  
  @TargetApi(14)
  private boolean a(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3)
  {
    boolean bool2 = false;
    synchronized (m)
    {
      ??? = d();
      if ((??? != null) && (((InAppMessage)???).b()))
      {
        paramActivity = e.b((InAppMessage)???);
        p.a().q().a(paramActivity);
        a(null);
        return false;
      }
      bool1 = bool2;
      if (paramActivity == null) {
        break label443;
      }
      bool1 = bool2;
      if (??? == null) {
        break label443;
      }
      if (Build.VERSION.SDK_INT < 14)
      {
        j.a("InAppMessageManager - Unable to show in-app messages on Android versions older than API 14 (Ice Cream Sandwich).");
        return false;
      }
    }
    if (paramActivity.isFinishing())
    {
      j.a("InAppMessageManager - Unable to display in-app messages for an activity that is finishing.");
      return false;
    }
    if (Looper.getMainLooper() != Looper.myLooper())
    {
      j.a("InAppMessageManager - Show message must be called on the main thread.");
      return false;
    }
    boolean bool1 = bool2;
    if (h == null)
    {
      if (!com.urbanairship.d.h.a(((InAppMessage)???).c(), e.a("com.urbanairship.push.iam.LAST_DISPLAYED_ID")))
      {
        new StringBuilder("InAppMessageManager - Displaying pending message: ").append(???).append(" for first time.");
        ??? = new a((InAppMessage)???);
        p.a().q().a((com.urbanairship.analytics.h)???);
        e.a("com.urbanairship.push.iam.LAST_DISPLAYED_ID", ((InAppMessage)???).c());
      }
      if ((k != null) && (k.equals(???)))
      {
        ??? = e.a(k, (InAppMessage)???);
        p.a().q().a((com.urbanairship.analytics.h)???);
      }
    }
    try
    {
      ??? = n;
      if (??? == null)
      {
        j.a("InAppMessageManager - InAppMessageFragmentFactory is null, unable to display an in-app message.");
        return false;
      }
      h = ((c)???).a();
      if (h == null)
      {
        j.a("InAppMessageManager - InAppMessageFragmentFactory returned a null fragment, unable to display an in-app message.");
        return false;
      }
      ??? = b.a((InAppMessage)???, paramInt3);
      if (h.getArguments() != null) {
        ((Bundle)???).putAll(h.getArguments());
      }
      h.setArguments((Bundle)???);
      h.a(q);
      h.c();
      k = ((InAppMessage)???);
      synchronized (l)
      {
        ??? = l.iterator();
        if (((Iterator)???).hasNext()) {
          ((Iterator)???).next();
        }
      }
      paramActivity.getFragmentManager().beginTransaction().setCustomAnimations(paramInt2, 0).add(16908290, h, "com.urbanairship.in_app_fragment").commit();
      bool1 = true;
      label443:
      return bool1;
    }
    catch (IllegalStateException paramActivity) {}
    return false;
  }
  
  private Activity l()
  {
    if (g == null) {
      return null;
    }
    return (Activity)g.get();
  }
  
  protected final void a()
  {
    Object localObject = d();
    if ((localObject != null) && (((InAppMessage)localObject).b()))
    {
      localObject = e.b((InAppMessage)localObject);
      p.a().q().a((com.urbanairship.analytics.h)localObject);
      a(null);
    }
  }
  
  public final void a(InAppMessage paramInAppMessage)
  {
    Object localObject = m;
    if (paramInAppMessage == null) {}
    for (;;)
    {
      try
      {
        e.c("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE");
        return;
      }
      finally {}
      InAppMessage localInAppMessage = d();
      if (paramInAppMessage.equals(localInAppMessage)) {
        return;
      }
      f.post(new d.3(this, paramInAppMessage));
      e.a("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE", paramInAppMessage);
      if ((k == null) && (localInAppMessage != null))
      {
        paramInAppMessage = e.a(localInAppMessage, paramInAppMessage);
        p.a().q().a(paramInAppMessage);
      }
      if ((j) && (l() != null))
      {
        i = true;
        f.removeCallbacks(p);
        f.post(p);
      }
    }
  }
  
  @TargetApi(14)
  public final boolean a(Activity paramActivity)
  {
    for (;;)
    {
      synchronized (m)
      {
        InAppMessage localInAppMessage = d();
        if ((paramActivity == null) || (localInAppMessage == null)) {
          return false;
        }
        if (localInAppMessage.i() == 1)
        {
          i2 = R.animator.ua_iam_slide_in_top;
          i1 = R.animator.ua_iam_slide_out_top;
          boolean bool = a(paramActivity, 16908290, i2, i1);
          return bool;
        }
      }
      int i2 = R.animator.ua_iam_slide_in_bottom;
      int i1 = R.animator.ua_iam_slide_out_bottom;
    }
  }
  
  final void b(Activity paramActivity)
  {
    new StringBuilder("InAppMessageManager - Activity paused: ").append(paramActivity);
    g = null;
    f.removeCallbacks(p);
  }
  
  public final boolean b()
  {
    return j;
  }
  
  final void c(Activity paramActivity)
  {
    new StringBuilder("InAppMessageManager - Activity resumed: ").append(paramActivity);
    ActivityInfo localActivityInfo = com.urbanairship.d.d.b(paramActivity.getClass());
    if ((localActivityInfo != null) && (metaData != null) && (metaData.getBoolean("com.urbanairship.push.iam.EXCLUDE_FROM_AUTO_SHOW", false))) {}
    do
    {
      return;
      g = new WeakReference(paramActivity);
      f.removeCallbacks(p);
    } while (!i);
    f.postDelayed(p, o);
  }
  
  public final boolean c()
  {
    return e.a("com.urbanairship.push.iam.AUTO_DISPLAY_ENABLED", true);
  }
  
  public final InAppMessage d()
  {
    synchronized (m)
    {
      String str = e.a("com.urbanairship.push.iam.PENDING_IN_APP_MESSAGE");
      if (str != null) {
        try
        {
          InAppMessage localInAppMessage = InAppMessage.b(str);
          return localInAppMessage;
        }
        catch (com.urbanairship.json.a locala)
        {
          j.a("InAppMessageManager - Failed to read pending in-app message: " + str, locala);
          a(null);
        }
      }
      return null;
    }
  }
  
  public final InAppMessage e()
  {
    return k;
  }
  
  final void f()
  {
    Object localObject = d();
    if (((k == null) && (localObject != null)) || ((localObject != null) && (!((InAppMessage)localObject).equals(k))))
    {
      if (k != null)
      {
        localObject = e.a(k, (InAppMessage)localObject);
        p.a().q().a((com.urbanairship.analytics.h)localObject);
      }
      k = null;
      i = true;
      f.removeCallbacks(p);
      f.postDelayed(p, o);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */