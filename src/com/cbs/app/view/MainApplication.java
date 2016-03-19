package com.cbs.app.view;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.multidex.MultiDexApplication;
import android.util.DisplayMetrics;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.DataManager;
import com.cbs.app.androiddata.DataManagerConfiguration;
import com.cbs.app.androiddata.PersistentCookieStore;
import com.cbs.app.cast.CBSVideoCastConsumer;
import com.cbs.app.cast.CBSVideoCastControllerActivity;
import com.cbs.app.livetv.controllers.MVPDController;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.d.a.a.a.a.b;
import com.d.a.b.d;
import com.d.a.b.e.a;
import com.nielsen.app.sdk.l;
import com.nielsen.app.sdk.n;
import com.urbanairship.p;
import com.urbanairship.push.j;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class MainApplication
  extends MultiDexApplication
  implements Application.ActivityLifecycleCallbacks
{
  public static String a;
  public static String b;
  private static final String c = MainApplication.class.getSimpleName();
  private static boolean d = false;
  private static com.google.android.libraries.cast.companionlibrary.cast.c e;
  private String f = "androidphone";
  private l g;
  private String h;
  private PersistentCookieStore i;
  private List<FavoriteShow> j = new ArrayList();
  private DisplayMetrics k;
  
  public static boolean a()
  {
    return d;
  }
  
  public static void b()
  {
    d = true;
  }
  
  public static void c()
  {
    d = false;
  }
  
  public static boolean d()
  {
    boolean bool = false;
    if (e != null)
    {
      new StringBuilder("route count: ").append(e.b());
      bool = e.c();
    }
    return bool;
  }
  
  public static com.google.android.libraries.cast.companionlibrary.cast.c getVideoCastManager()
  {
    return e;
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    android.support.multidex.a.a(this);
  }
  
  public final void e()
  {
    Object localObject = Preferences.b(this, "chromecast_id", "0BBDC217");
    localObject = com.google.android.libraries.cast.companionlibrary.cast.c.a(getApplicationContext(), (String)localObject, CBSVideoCastControllerActivity.class, "urn:x-cast:com.cbs");
    e = (com.google.android.libraries.cast.companionlibrary.cast.c)localObject;
    ((com.google.android.libraries.cast.companionlibrary.cast.c)localObject).p();
    com.google.android.libraries.cast.companionlibrary.cast.c.B().y().a(getString(2131230914), Boolean.valueOf(true));
    e.a(new CBSVideoCastConsumer(this));
    e.g(10);
  }
  
  public String getAppName()
  {
    return getResources().getString(2131230843);
  }
  
  public PersistentCookieStore getCookieStore()
  {
    return i;
  }
  
  public int getDensityDpi()
  {
    return k.densityDpi;
  }
  
  public String getDeviceType()
  {
    return f;
  }
  
  public List<FavoriteShow> getMycbsShows()
  {
    return j;
  }
  
  public l getNielsenSdk()
  {
    return g;
  }
  
  public String getNielsenUrl()
  {
    return h;
  }
  
  public double getScreenWidth()
  {
    return Math.sqrt(Math.pow(k.widthPixels / k.xdpi, 2.0D) + Math.pow(k.heightPixels / k.ydpi, 2.0D));
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    AnalyticsManager.a(paramActivity);
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    AnalyticsManager.b(paramActivity);
  }
  
  public void onCreate()
  {
    super.onCreate();
    a = getResources().getString(2131231285);
    b = getResources().getString(2131231284);
    MVPDController.a(this);
    registerActivityLifecycleCallbacks(this);
    Object localObject2 = Preferences.b(this, "visitor_id", null);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = UUID.randomUUID().toString();
      Preferences.a(this, "visitor_id", (String)localObject1);
    }
    com.cbs.app.visualon.player.CBSPlayer.d = (String)localObject1;
    com.cbs.app.visualon.player.CBSPlayer.e = UUID.randomUUID().toString();
    k = getResources().getDisplayMetrics();
    Util.b(this, getString(2131230819));
    localObject1 = getString(2131230876);
    localObject2 = getString(2131230877);
    if (localObject1 == null)
    {
      localObject1 = localObject2;
      localObject2 = PreferenceManager.getDefaultSharedPreferences(this).edit();
      ((SharedPreferences.Editor)localObject2).putString("cbs_base_uri", (String)localObject1);
      if (!Util.e(this)) {
        break label655;
      }
      if (!Util.G(this)) {
        break label632;
      }
      f = "androidphone";
      ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", "9a06af4666595a16");
    }
    for (;;)
    {
      ((SharedPreferences.Editor)localObject2).commit();
      if (Build.VERSION.SDK_INT < 21) {
        CookieSyncManager.createInstance(this);
      }
      i = new PersistentCookieStore(this);
      CookieHandler.setDefault(new CookieManager(i, CookiePolicy.ACCEPT_ALL));
      boolean bool1 = Preferences.a(this, "allow_https", true);
      boolean bool2 = Preferences.a(this, "useResponseCache", true);
      localObject1 = Preferences.b(this, "cbs_base_uri", null);
      localObject2 = Preferences.b(this, "cbs_appsecret", "");
      String str1 = Preferences.b(this, "syncbackurl", "http://cbsservice.aws.syncbak.com");
      String str2 = getResources().getString(2131231313);
      String str3 = getResources().getString(2131231314);
      DataManagerConfiguration localDataManagerConfiguration = new DataManagerConfiguration();
      localDataManagerConfiguration.setCbsAppSecret((String)localObject2);
      localDataManagerConfiguration.setDeviceType(f);
      localDataManagerConfiguration.setSyncbakAppKey(str2);
      localDataManagerConfiguration.setSyncbakAppSecret(str3);
      localDataManagerConfiguration.setUseHttps(bool1);
      localDataManagerConfiguration.setUseResponseCache(bool2);
      localDataManagerConfiguration.setCbsHost((String)localObject1);
      localDataManagerConfiguration.setParallelExcecuationAllowed(true);
      localDataManagerConfiguration.setSyncbakHost(str1);
      localDataManagerConfiguration.setLoggingEnabled(true);
      DataManager.getInstance().a(localDataManagerConfiguration);
      if (Util.m(this)) {
        Util.d(this);
      }
      AnalyticsManager.a(this);
      localObject1 = com.d.a.c.e.a(this, true);
      localObject1 = new e.a(getApplicationContext()).a(new b((File)localObject1)).a().b().c().d();
      d.a().a((com.d.a.b.e)localObject1);
      localObject1 = com.urbanairship.a.a(this);
      l = true;
      h = "622419776613";
      c = "D59tS59jQTyeGAlkeU0A3A";
      d = "wkcW_NPDQ9isKrWQ6yviNQ";
      a = "y-NCfE6ZSrmghhueVZkFpQ";
      b = "FbUXkLD2Qs6Dy3tNcJNeaA";
      p = 0;
      q = 3;
      p.a(this, (com.urbanairship.a)localObject1);
      p.a().m().a(true);
      if (Build.VERSION.SDK_INT >= 19)
      {
        localObject1 = getApplicationInfo();
        int m = flags & 0x2;
        flags = m;
        if (m != 0) {
          WebView.setWebContentsDebuggingEnabled(true);
        }
      }
      if (Util.H(this)) {
        e();
      }
      h = Preferences.b(this, "nielsen_settings_url", null);
      g = l.a(this, "{\"appName\" : \"CBS\", \"appVersion\" : \"2.9.0\", \"sfcode\" : \"us\", \"appId\" : \"P1576C728-1641-4B4C-AE19-343CF249BCA8\",  \"nol_devDebug\": \"true\" }", new n()
      {
        public final void onAppSdkEvent(long paramAnonymousLong, int paramAnonymousInt, String paramAnonymousString)
        {
          MainApplication.f();
          new StringBuilder("onAppSdkEvent timestamp: ").append(paramAnonymousLong).append(" code: ").append(paramAnonymousInt).append(" eventDescription: ").append(paramAnonymousString);
          switch (paramAnonymousInt)
          {
          default: 
            return;
          }
          paramAnonymousString = MainApplication.this;
          MainApplication.a(MainApplication.this);
          MainApplication.a(paramAnonymousString, l.d());
          MainApplication.f();
          new StringBuilder("nielsen urlStr: ").append(MainApplication.b(MainApplication.this));
          Preferences.a(MainApplication.this, "nielsen_settings_url", MainApplication.b(MainApplication.this));
        }
      });
      return;
      break;
      label632:
      f = "androidphone";
      ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", "b700a363a73b9ada");
      continue;
      label655:
      if (Util.G(this))
      {
        f = "androidtablet";
        ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", "a308e8033bb2ce43");
      }
      else
      {
        f = "androidtablet";
        ((SharedPreferences.Editor)localObject2).putString("cbs_appsecret", "a37738ac19247e04");
      }
    }
  }
  
  public void setCookieStore(PersistentCookieStore paramPersistentCookieStore)
  {
    i = paramPersistentCookieStore;
  }
  
  public void setMycbsShows(List<FavoriteShow> paramList)
  {
    j = paramList;
  }
  
  public void setNielsenSdk(l paraml)
  {
    g = paraml;
  }
  
  public void setNielsenUrl(String paramString)
  {
    h = paramString;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.MainApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */