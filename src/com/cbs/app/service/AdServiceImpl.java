package com.cbs.app.service;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.manager.StatusManager;
import com.cbs.app.view.utils.Util;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.c;
import com.google.android.gms.ads.c.a;
import com.google.android.gms.ads.d;
import java.util.Random;

public class AdServiceImpl
  implements AdService
{
  public static final String a = AdServiceImpl.class.getSimpleName();
  private static final String[] b = { "a", "b", "c", "d" };
  private static final String[] c = { "1", "2", "3", "4" };
  private static Random d = new Random();
  private static Random e = new Random();
  private static String f = null;
  private static String g = null;
  private com.google.android.gms.ads.a h = new com.google.android.gms.ads.a()
  {
    public final void a()
    {
      super.a();
      String str = AdServiceImpl.a;
    }
    
    public final void a(int paramAnonymousInt)
    {
      super.a(paramAnonymousInt);
      String str = AdServiceImpl.a;
    }
  };
  
  private static AdView a(Context paramContext, d paramd)
  {
    String str = StatusManager.getAdServer();
    AdView localAdView = new AdView(paramContext);
    if (paramd == null)
    {
      if ((str != null) && (str.toLowerCase().trim().equals("test"))) {}
      for (paramContext = paramContext.getResources().getString(2131231324);; paramContext = paramContext.getResources().getString(2131231222))
      {
        localAdView.setAdSize(d.a);
        localAdView.setAdUnitId(paramContext);
        localAdView.setEnabled(false);
        localAdView.setClickable(false);
        localAdView.setHovered(false);
        return localAdView;
      }
    }
    if ((str != null) && (str.toLowerCase().trim().equals("test"))) {}
    for (paramContext = paramContext.getResources().getString(2131231323);; paramContext = paramContext.getResources().getString(2131231221))
    {
      localAdView.setAdSize(paramd);
      break;
    }
  }
  
  public static void a()
  {
    f = b[d.nextInt(b.length)];
    g = c[e.nextInt(c.length)];
    new StringBuilder("refreshAdSessionId: session + subses ").append(f).append(g);
  }
  
  private static void a(Context paramContext, ViewGroup paramViewGroup, AdView paramAdView)
  {
    paramViewGroup.setVisibility(0);
    int i = (int)(getResourcesgetDisplayMetricsdensity * 50.0F + 0.5F);
    if ((paramViewGroup.getLayoutParams() instanceof FrameLayout.LayoutParams))
    {
      paramContext = new FrameLayout.LayoutParams(-1, i);
      gravity = 81;
    }
    for (;;)
    {
      paramAdView.setId(2131689476);
      paramViewGroup.setLayoutParams(paramContext);
      paramViewGroup.addView(paramAdView);
      paramViewGroup.setClickable(false);
      paramViewGroup.setEnabled(false);
      paramViewGroup.clearFocus();
      paramViewGroup.setHovered(false);
      paramViewGroup.clearChildFocus(paramAdView);
      return;
      paramContext = new RelativeLayout.LayoutParams(-1, i);
      ((RelativeLayout.LayoutParams)paramContext).addRule(1);
      ((RelativeLayout.LayoutParams)paramContext).addRule(12);
    }
  }
  
  private void a(Context paramContext, String paramString1, AdView paramAdView, String paramString2)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
    if (paramContext != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("APP_VERSION", "2.9.0");
      localBundle.putString("OriginPage", paramString1);
      if (paramString2 != null) {
        localBundle.putString("Show_ID", String.valueOf(paramString2));
      }
      localBundle.putString("session", f);
      localBundle.putString("subses", g);
      localBundle.putString("sb", Util.a(AuthStatusManager.getUserAuthStatus()));
      paramContext = new c.a().b(c.a).b(paramContext).a(new com.google.android.gms.ads.b.a.a(localBundle)).a();
      paramAdView.setAdListener(h);
      paramAdView.a(paramContext);
    }
  }
  
  public static void a(ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof AdView)) {
        ((AdView)localView).c();
      }
      i += 1;
    }
  }
  
  public static void b(ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof AdView)) {
        ((AdView)localView).b();
      }
      i += 1;
    }
  }
  
  public static void c(ViewGroup paramViewGroup)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof AdView)) {
        ((AdView)localView).a();
      }
      i += 1;
    }
    paramViewGroup.removeAllViews();
  }
  
  public final void a(Context paramContext, ViewGroup paramViewGroup, long paramLong, String paramString)
  {
    if (paramContext != null)
    {
      AdView localAdView = a(paramContext, null);
      a(paramContext, paramViewGroup, localAdView);
      a(paramContext, paramString, localAdView, String.valueOf(paramLong));
    }
  }
  
  public final void a(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    if (paramContext != null)
    {
      AdView localAdView = a(paramContext, new d(137, 37));
      a(paramContext, paramViewGroup, localAdView);
      a(paramContext, paramString, localAdView, null);
    }
  }
  
  public final void b(Context paramContext, ViewGroup paramViewGroup, String paramString)
  {
    if (paramContext != null)
    {
      AdView localAdView = a(paramContext, null);
      a(paramContext, paramViewGroup, localAdView);
      a(paramContext, paramString, localAdView, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.AdServiceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */