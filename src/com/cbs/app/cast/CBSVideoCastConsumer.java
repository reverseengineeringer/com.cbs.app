package com.cbs.app.cast;

import android.content.Context;
import android.support.v7.media.MediaRouter.RouteInfo;
import android.util.Log;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.MainApplication;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.j;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.libraries.cast.companionlibrary.cast.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import java.util.HashMap;
import java.util.Locale;

public class CBSVideoCastConsumer
  extends d
{
  private Context a;
  
  public CBSVideoCastConsumer(Context paramContext)
  {
    a = paramContext;
  }
  
  public final void a() {}
  
  public final void a(double paramDouble, boolean paramBoolean)
  {
    super.a(paramDouble, paramBoolean);
  }
  
  public final void a(int paramInt) {}
  
  public final void a(int paramInt1, int paramInt2)
  {
    new StringBuilder("onFailed: ").append(paramInt1).append(" status: ").append(paramInt2);
    MainApplication.getVideoCastManager().c(false);
  }
  
  public final void a(MediaRouter.RouteInfo paramRouteInfo)
  {
    new StringBuilder("onCastDeviceDetected: ").append(paramRouteInfo.getName());
  }
  
  public final void a(ApplicationMetadata paramApplicationMetadata, String paramString, boolean paramBoolean)
  {
    super.a(paramApplicationMetadata, paramString, paramBoolean);
    new StringBuilder("onApplicationConnected: ").append(paramString).append(" ").append(paramBoolean);
  }
  
  public final void a(CastDevice paramCastDevice)
  {
    super.a(paramCastDevice);
    if (paramCastDevice != null)
    {
      new StringBuilder("device: ").append(paramCastDevice.c()).append(" ").append(paramCastDevice.i());
      paramCastDevice = Action.bU;
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event19");
      localHashMap.put("appState", paramCastDevice.getAppState());
      AnalyticsManager.a(a, paramCastDevice, localHashMap);
    }
  }
  
  public final void a(j paramj)
  {
    super.a(paramj);
    if (paramj != null) {
      new StringBuilder("onTextTrackStyleChanged: ").append(paramj.e()).append(" ").append(paramj.b());
    }
  }
  
  public final void a(ConnectionResult paramConnectionResult)
  {
    new StringBuilder("onConnectionFailed: ").append(paramConnectionResult.c());
    super.a(paramConnectionResult);
  }
  
  public final void a(String paramString)
  {
    super.a(paramString);
  }
  
  public final void a(Locale paramLocale)
  {
    super.a(paramLocale);
    if (paramLocale != null)
    {
      new StringBuilder("onTextTrackLocaleChanged: ").append(paramLocale.getCountry()).append(" ").append(paramLocale.getLanguage());
      return;
    }
    Log.e("CBSVideoCastConsumer", "onTextTrackLocaleChanged returned NULL for local...");
  }
  
  public final void a(boolean paramBoolean)
  {
    super.a(paramBoolean);
  }
  
  public final void b()
  {
    super.b();
  }
  
  public final void b(int paramInt)
  {
    super.b(paramInt);
    if (paramInt == 2100) {
      MainApplication.getVideoCastManager().c(false);
    }
  }
  
  public final void b(String paramString)
  {
    super.b(paramString);
  }
  
  public final void b(boolean paramBoolean)
  {
    super.b(paramBoolean);
  }
  
  public final void c()
  {
    super.c();
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
  }
  
  public final void c(boolean paramBoolean)
  {
    super.c(paramBoolean);
  }
  
  public final void d()
  {
    super.d();
    Action localAction = Action.bV;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event90");
    localHashMap.put("appState", localAction.getAppState());
    AnalyticsManager.a(a, localAction, localHashMap);
  }
  
  public final void d(int paramInt)
  {
    super.d(paramInt);
  }
  
  public final void e()
  {
    super.e();
    Action localAction = Action.bW;
    HashMap localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("appState", localAction.getAppState());
    AnalyticsManager.a(a, localAction, localHashMap);
    localAction = Action.bX;
    localHashMap = new HashMap();
    localHashMap.put("events", "event19");
    localHashMap.put("appState", localAction.getAppState());
    AnalyticsManager.a(a, localAction, localHashMap);
  }
  
  public final void e(int paramInt)
  {
    super.e(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.CBSVideoCastConsumer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */