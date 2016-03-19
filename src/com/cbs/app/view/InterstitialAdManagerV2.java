package com.cbs.app.view;

import android.app.Activity;
import android.content.res.Resources;
import com.cbs.app.manager.StatusManager;
import com.cbs.app.view.utils.Preferences;
import com.google.android.gms.ads.a;
import com.google.android.gms.ads.doubleclick.c.a;
import com.google.android.gms.ads.doubleclick.d;

public class InterstitialAdManagerV2
{
  private static final String a = InterstitialAdManagerV2.class.getSimpleName();
  private static a b = new a()
  {
    public final void a()
    {
      InterstitialAdManagerV2.c();
      InterstitialAdManagerV2.b();
    }
    
    public final void a(int paramAnonymousInt)
    {
      String str;
      switch (paramAnonymousInt)
      {
      default: 
        str = "Unknown error";
      }
      for (;;)
      {
        String.format("onAdFailedToLoad (%s)", new Object[] { str });
        InterstitialAdManagerV2.c();
        return;
        str = "Internal error";
        continue;
        str = "Invalid request";
        continue;
        str = "Network Error";
        continue;
        str = "No fill";
      }
    }
    
    public final void b()
    {
      InterstitialAdManagerV2.c();
    }
    
    public final void c()
    {
      InterstitialAdManagerV2.c();
    }
    
    public final void d()
    {
      InterstitialAdManagerV2.c();
    }
  };
  private static d c = null;
  private static int d = 1;
  private static Activity e = null;
  
  public static void a()
  {
    d = 1;
  }
  
  public static void a(Activity paramActivity)
  {
    a(paramActivity, 8);
  }
  
  public static void a(Activity paramActivity, int paramInt)
  {
    new StringBuilder("checkToShowAd: ").append(paramInt).append(" counter: ").append(d);
    e = paramActivity;
    if (paramActivity != null)
    {
      if (Preferences.a(paramActivity)) {
        break label207;
      }
      new StringBuilder("ad not blocked... counter : ").append(d);
      c = new d(e);
      paramActivity = StatusManager.getAdServer();
      if ((paramActivity == null) || (!paramActivity.toLowerCase().trim().equals("test"))) {
        break label171;
      }
      paramActivity = e.getResources().getString(2131231325);
      c.a(paramActivity);
      c.a(b);
      if (d % paramInt != 0) {
        break label186;
      }
      new StringBuilder("load it: ").append(d % paramInt);
      c.a(new c.a().a());
    }
    for (;;)
    {
      d += 1;
      return;
      label171:
      paramActivity = e.getResources().getString(2131231223);
      break;
      label186:
      new StringBuilder("don't load it: ").append(d % paramInt);
    }
    label207:
    Preferences.a(paramActivity, false);
  }
  
  public static void b()
  {
    if ((c != null) && (c.a())) {
      c.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.InterstitialAdManagerV2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */