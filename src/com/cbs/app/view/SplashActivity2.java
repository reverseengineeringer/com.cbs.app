package com.cbs.app.view;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.amazon.device.messaging.ADM;
import com.cbs.app.GlobalConstants;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.manager.AuthStatusManager;
import com.cbs.app.manager.AuthStatusManager.AuthStatusResponseListener;
import com.cbs.app.manager.StatusManager;
import com.cbs.app.manager.StatusManager.StatusResponseListener;
import com.cbs.app.service.AdServiceImpl;
import com.cbs.app.service.AuthService;
import com.cbs.app.service.AuthServiceImpl;
import com.cbs.app.service.HomeService;
import com.cbs.app.service.HomeServiceImpl;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.service.TonightService;
import com.cbs.app.service.TonightServiceImpl;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.model.DeviceHome;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.registration.UserStatus;
import com.cbs.app.view.model.rest.AuthStatusEndpointResponse;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.model.rest.HomeEndpointResponse;
import com.cbs.app.view.model.rest.MarqueeResponse;
import com.cbs.app.view.model.rest.ScheduleResponse;
import com.cbs.app.view.model.rest.TonightEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import com.d.a.b.f.c;
import com.urbanairship.p;
import com.urbanairship.push.j;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class SplashActivity2
  extends Activity
{
  private static final String k = SplashActivity2.class.getSimpleName();
  private static final String l = Action.b.getName();
  private boolean A = true;
  private boolean B = false;
  public boolean a = false;
  public boolean b = false;
  public boolean c = false;
  public boolean d = false;
  DialogInterface.OnClickListener e = new DialogInterface.OnClickListener()
  {
    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      if (!isFinishing()) {
        finish();
      }
    }
  };
  ResponseModelListener f = new ResponseModelListener()
  {
    public final void a()
    {
      SplashActivity2.a(SplashActivity2.this);
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      if ((paramAnonymousResponseModel instanceof HomeEndpointResponse))
      {
        paramAnonymousResponseModel = (HomeEndpointResponse)paramAnonymousResponseModel;
        localObject = paramAnonymousResponseModel.getMarqueeResponse();
        if (localObject != null)
        {
          localObject = ((MarqueeResponse)localObject).getDeviceHomeList();
          if (localObject != null) {
            SplashActivity2.a(SplashActivity2.this, (DeviceHome[])((List)localObject).toArray(new DeviceHome[((List)localObject).size()]));
          }
        }
        paramAnonymousResponseModel = paramAnonymousResponseModel.getScheduleResponse();
        if (paramAnonymousResponseModel != null)
        {
          paramAnonymousResponseModel = paramAnonymousResponseModel.getScheduleList();
          if (paramAnonymousResponseModel != null) {
            SplashActivity2.a(SplashActivity2.this, (Episode[])paramAnonymousResponseModel.toArray(new Episode[paramAnonymousResponseModel.size()]));
          }
        }
        b = true;
        if (Util.y(SplashActivity2.this) != null)
        {
          paramAnonymousResponseModel = SplashActivity2.this;
          localObject = SplashActivity2.this;
          new MyCBSService().a((Context)localObject, new SplashActivity2.3(paramAnonymousResponseModel, (Context)localObject));
        }
      }
      while (!SplashActivity2.a(SplashActivity2.this))
      {
        Object localObject;
        return;
        b();
        return;
      }
      UnableToConnectDialogHelper.a(SplashActivity2.this, "Refresh", j, "Exit", e);
    }
  };
  StatusManager.StatusResponseListener g = new StatusManager.StatusResponseListener()
  {
    public final void a()
    {
      SplashActivity2.b(SplashActivity2.this);
      getUserStatus();
    }
    
    public final void b()
    {
      UnableToConnectDialogHelper.a(SplashActivity2.this, "Refresh", j, "Exit", e);
    }
    
    public final void c()
    {
      if (SplashActivity2.a(SplashActivity2.this)) {
        StatusManager.a(SplashActivity2.this);
      }
    }
    
    public final void d()
    {
      if (SplashActivity2.a(SplashActivity2.this)) {
        StatusManager.b(SplashActivity2.this);
      }
    }
  };
  ResponseModelListener h = new ResponseModelListener()
  {
    public final void a()
    {
      if (SplashActivity2.a(SplashActivity2.this)) {
        UnableToConnectDialogHelper.a(SplashActivity2.this, "Refresh", j, "Exit", e);
      }
    }
    
    public final void a(ResponseModel paramAnonymousResponseModel)
    {
      if ((paramAnonymousResponseModel instanceof TonightEndpointResponse))
      {
        SplashActivity2.a(SplashActivity2.this, (TonightEndpointResponse)paramAnonymousResponseModel);
        SplashActivity2.g(SplashActivity2.this);
        a = true;
      }
      while (!SplashActivity2.a(SplashActivity2.this)) {
        return;
      }
      UnableToConnectDialogHelper.a(SplashActivity2.this, "Refresh", j, "Exit", e);
    }
  };
  AuthStatusManager.AuthStatusResponseListener i = new AuthStatusManager.AuthStatusResponseListener()
  {
    public final void a()
    {
      c = true;
      SplashActivity2.this.a();
      getTonightData();
    }
    
    public final void b()
    {
      c = true;
      SplashActivity2.h(SplashActivity2.this);
      SplashActivity2.i(SplashActivity2.this);
      SplashActivity2.a(SplashActivity2.this, "ANONYMOUS");
      new AuthServiceImpl().a(SplashActivity2.this);
      getTonightData();
    }
  };
  DialogInterface.OnClickListener j = new DialogInterface.OnClickListener()
  {
    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
    {
      if (SplashActivity2.j(SplashActivity2.this))
      {
        if (c)
        {
          if (a)
          {
            getHomeData();
            return;
          }
          getTonightData();
          return;
        }
        getUserStatus();
        return;
      }
      StatusManager.a(SplashActivity2.this, g);
    }
  };
  private Episode[] m = null;
  private List<Episode> n = null;
  private DeviceHome[] o = null;
  private AuthStatusManager p = null;
  private AuthStatusEndpointResponse q = null;
  private UserStatus r = null;
  private String s = "ANONYMOUS";
  private int t = 0;
  private int u = 4;
  private TonightEndpointResponse v = null;
  private boolean w = false;
  private boolean x = false;
  private boolean y = false;
  private c z = new c()
  {
    public final void a()
    {
      SplashActivity2.c(SplashActivity2.this);
      if (SplashActivity2.d(SplashActivity2.this) == SplashActivity2.e(SplashActivity2.this)) {
        SplashActivity2.f(SplashActivity2.this);
      }
    }
    
    public final void a(String paramAnonymousString, View paramAnonymousView, Bitmap paramAnonymousBitmap)
    {
      SplashActivity2.c(SplashActivity2.this);
      if (SplashActivity2.d(SplashActivity2.this) == SplashActivity2.e(SplashActivity2.this)) {
        SplashActivity2.f(SplashActivity2.this);
      }
    }
    
    public final void b()
    {
      SplashActivity2.c(SplashActivity2.this);
      if (SplashActivity2.d(SplashActivity2.this) == SplashActivity2.e(SplashActivity2.this)) {
        SplashActivity2.f(SplashActivity2.this);
      }
    }
  };
  
  private void a(String paramString)
  {
    new AdServiceImpl().a(this, (ViewGroup)findViewById(2131689645), paramString);
  }
  
  private void c()
  {
    new Thread(new c((byte)0)).start();
    StatusManager.a(this, g);
  }
  
  public final void a()
  {
    q = AuthStatusManager.getUserAuthStatus();
    if (q != null)
    {
      r = q.getUserStatus();
      if (r != null) {
        s = r.getDescription();
      }
    }
  }
  
  public final void b()
  {
    new StringBuilder("GoToHome : homeReturned:").append(b).append("isResumed:").append(y);
    if (GlobalConstants.b) {}
    for (int i1 = 400;; i1 = 600)
    {
      if (y) {
        new Handler().postDelayed(new Runnable()
        {
          public final void run()
          {
            SplashActivity2 localSplashActivity2 = SplashActivity2.this;
            if (SplashActivity2.a(SplashActivity2.this)) {
              localSplashActivity2.runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  runOnUiThread(new Runnable()
                  {
                    public final void run()
                    {
                      Intent localIntent = new Intent(SplashActivity2.this, NavigationActivity.class);
                      if (GlobalConstants.b) {
                        localIntent.putExtra("url", getIntent().getStringExtra("url"));
                      }
                      localIntent.addFlags(65536);
                      localIntent.putExtra("homeMarquee", SplashActivity2.l(SplashActivity2.this));
                      localIntent.putExtra("episodeSchedule", SplashActivity2.m(SplashActivity2.this));
                      if (SplashActivity2.n(SplashActivity2.this) != null) {
                        localIntent.putExtra("tonightEpisodes", (Parcelable[])SplashActivity2.n(SplashActivity2.this).toArray(new Episode[SplashActivity2.n(SplashActivity2.this).size()]));
                      }
                      localIntent.addFlags(268468224);
                      startActivity(localIntent);
                      overridePendingTransition(0, 0);
                      if (isFinishing()) {
                        finish();
                      }
                      overridePendingTransition(0, 0);
                    }
                  });
                }
              });
            }
          }
        }, i1);
      }
      return;
    }
  }
  
  public void getHomeData()
  {
    new StringBuilder("getHomeData : homeReturned:").append(b).append("isResumed:").append(y);
    if (y) {
      new HomeServiceImpl().a(this, s, f);
    }
  }
  
  public View getSplashRootView()
  {
    return findViewById(2131689639);
  }
  
  public void getTonightData()
  {
    t = 0;
    new TonightServiceImpl().a(this, h);
  }
  
  public void getUserStatus()
  {
    p.h();
  }
  
  public void onBackPressed()
  {
    if (!isFinishing()) {
      finish();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903072);
    boolean bool = getIntent().getBooleanExtra("isdeeplink", false);
    GlobalConstants.b = bool;
    if (bool) {
      findViewById(2131689642).setVisibility(8);
    }
    if (Preferences.d(this)) {
      AccountUIHelper.a(this, null);
    }
    y = true;
    AuthServiceImpl.c(this);
    p = new AuthStatusManager(this, i);
    if (Util.e(this)) {
      switch (getResourcesgetConfigurationorientation)
      {
      }
    }
    for (;;)
    {
      c();
      new ShowServiceManager(this).getEverything();
      try
      {
        Class.forName("com.amazon.device.messaging.ADM");
        B = true;
        if (B)
        {
          paramBundle = new ADM(this);
          if ((paramBundle.isSupported()) && (paramBundle.getRegistrationId() == null)) {
            paramBundle.startRegister();
          }
        }
        return;
        int i1 = getWindowManager().getDefaultDisplay().getRotation();
        if ((i1 == 1) || (i1 == 2))
        {
          setRequestedOrientation(9);
          continue;
        }
        setRequestedOrientation(1);
        continue;
        setRequestedOrientation(1);
        continue;
        switch (getResourcesgetConfigurationorientation)
        {
        default: 
          break;
        case 1: 
          i1 = getWindowManager().getDefaultDisplay().getRotation();
          if ((i1 == 1) || (i1 == 2))
          {
            setRequestedOrientation(9);
            continue;
          }
          setRequestedOrientation(1);
          break;
        case 2: 
          i1 = getWindowManager().getDefaultDisplay().getRotation();
          if ((i1 == 0) || (i1 == 1))
          {
            if (Build.MANUFACTURER.contains("Amazon")) {
              break label369;
            }
            setRequestedOrientation(0);
            continue;
          }
          if (Build.MANUFACTURER.contains("Amazon"))
          {
            setRequestedOrientation(0);
            continue;
          }
          label369:
          setRequestedOrientation(8);
        }
      }
      catch (ClassNotFoundException paramBundle)
      {
        for (;;)
        {
          Log.e(k, "adm not found");
        }
      }
    }
  }
  
  protected void onDestroy()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131689645);
    if (localViewGroup != null)
    {
      new AdServiceImpl();
      AdServiceImpl.c(localViewGroup);
    }
    super.onDestroy();
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    boolean bool = getIntent().getBooleanExtra("isdeeplink", false);
    GlobalConstants.b = bool;
    if (bool) {
      findViewById(2131689642).setVisibility(8);
    }
  }
  
  public void onPause()
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131689645);
    if (localViewGroup != null)
    {
      new AdServiceImpl();
      AdServiceImpl.b(localViewGroup);
    }
    super.onPause();
    y = false;
  }
  
  public void onRestart()
  {
    super.onRestart();
    y = true;
    getHomeData();
  }
  
  public void onResume()
  {
    Object localObject = (ViewGroup)findViewById(2131689645);
    if (localObject != null)
    {
      new AdServiceImpl();
      AdServiceImpl.c((ViewGroup)localObject);
    }
    super.onResume();
    y = true;
    if (!A) {
      c();
    }
    A = false;
    localObject = new HashMap();
    Action localAction = Action.b;
    ((HashMap)localObject).put("pageView", "anything");
    AnalyticsManager.a(this, localAction, (HashMap)localObject);
  }
  
  public void onStart()
  {
    super.onStart();
    p.a().m().t();
  }
  
  public void onStop()
  {
    super.onStop();
    AnalyticsManager.b(this);
  }
  
  private final class a
    implements Animation.AnimationListener
  {
    public a() {}
    
    public final void onAnimationEnd(Animation paramAnimation)
    {
      if (SplashActivity2.a(SplashActivity2.this))
      {
        paramAnimation = getSplashRootView();
        if (paramAnimation != null)
        {
          paramAnimation = paramAnimation.findViewById(2131689641);
          if ((paramAnimation != null) && ((paramAnimation instanceof LinearLayout))) {
            ((LinearLayout)paramAnimation).setVisibility(0);
          }
        }
        SplashActivity2.o(SplashActivity2.this);
      }
    }
    
    public final void onAnimationRepeat(Animation paramAnimation) {}
    
    public final void onAnimationStart(Animation paramAnimation) {}
  }
  
  private static final class b
    extends c
  {
    public final void a() {}
    
    public final void a(String paramString, View paramView, Bitmap paramBitmap) {}
    
    public final void b() {}
  }
  
  private final class c
    implements Runnable
  {
    private c() {}
    
    public final void run()
    {
      if (SplashActivity2.a(SplashActivity2.this)) {}
      for (;;)
      {
        try
        {
          SplashActivity2 localSplashActivity2 = SplashActivity2.this;
          int j = 2130838055;
          if (Util.e(localSplashActivity2)) {
            break label213;
          }
          i = j;
          if (Util.i(localSplashActivity2))
          {
            i = j;
            if (Util.k(localSplashActivity2)) {
              break label213;
            }
          }
          Object localObject = new BitmapFactory.Options();
          inSampleSize = 1;
          localObject = BitmapFactory.decodeResource(localSplashActivity2.getResources(), i, (BitmapFactory.Options)localObject);
          i = Util.b(localSplashActivity2);
          j = Util.c(localSplashActivity2);
          if ((Util.e(localSplashActivity2)) && (Util.k(localSplashActivity2)))
          {
            i = Math.min(i, j);
            int k = ((Bitmap)localObject).getHeight();
            int m = ((Bitmap)localObject).getWidth();
            j = m;
            if (m > (int)Math.round(i / 1.5D))
            {
              j = (int)Math.round(i / 1.5D);
              k = (int)Math.round(((Bitmap)localObject).getHeight() / ((Bitmap)localObject).getWidth() * j);
            }
            localSplashActivity2.runOnUiThread(new SplashActivity2.d(localSplashActivity2, j, k, ThumbnailUtils.extractThumbnail((Bitmap)localObject, j, k)));
            return;
          }
        }
        catch (Exception localException)
        {
          SplashActivity2.o(SplashActivity2.this);
          return;
        }
        continue;
        label213:
        int i = 2130837987;
      }
    }
  }
  
  private final class d
    implements Runnable
  {
    int a;
    int b;
    Bitmap c;
    
    public d(int paramInt1, int paramInt2, Bitmap paramBitmap)
    {
      a = paramInt1;
      b = paramInt2;
      c = paramBitmap;
    }
    
    public final void run()
    {
      Object localObject1 = SplashActivity2.this;
      Object localObject2;
      Object localObject3;
      int j;
      int i;
      if (SplashActivity2.a(SplashActivity2.this))
      {
        localObject2 = ((SplashActivity2)localObject1).findViewById(2131689640);
        if ((localObject2 != null) && ((localObject2 instanceof ImageView)))
        {
          localObject2 = (ImageView)localObject2;
          localObject3 = new RelativeLayout.LayoutParams(a, b);
          j = Util.b((Context)localObject1);
          i = Util.c((Context)localObject1);
          if ((!Util.e((Context)localObject1)) || (!Util.k((Context)localObject1))) {
            break label333;
          }
          i = Math.max(Math.min(j, i), i);
        }
      }
      label320:
      label333:
      for (;;)
      {
        j = i / 2 - b;
        if (j <= 0) {
          j = Util.a((Context)localObject1, 120.0D);
        }
        for (;;)
        {
          ((RelativeLayout.LayoutParams)localObject3).setMargins(0, j, 0, 0);
          ((RelativeLayout.LayoutParams)localObject3).addRule(14);
          ((ImageView)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject3);
          ((ImageView)localObject2).setImageBitmap(c);
          localObject3 = ((SplashActivity2)localObject1).getSplashRootView();
          if (localObject3 != null)
          {
            Object localObject4 = ((View)localObject3).findViewById(2131689641);
            if ((localObject4 != null) && ((localObject4 instanceof LinearLayout)))
            {
              localObject4 = (LinearLayout)localObject4;
              RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, i - (j + b));
              localLayoutParams.addRule(3, 2131689640);
              localLayoutParams.setMargins(0, Util.a((Context)localObject1, 50.0D), 0, 0);
              ((LinearLayout)localObject4).setLayoutParams(localLayoutParams);
              ((LinearLayout)localObject4).setVisibility(8);
            }
            localObject3 = ((View)localObject3).findViewById(2131689643);
            if (localObject3 != null)
            {
              if (SplashActivity2.p(SplashActivity2.this) != null) {
                break label320;
              }
              ((View)localObject3).setVisibility(0);
            }
          }
          for (;;)
          {
            localObject1 = new TranslateAnimation(0.0F, 0.0F, Util.a((Context)localObject1, 120.0D), 0.0F);
            ((TranslateAnimation)localObject1).setDuration(800L);
            ((TranslateAnimation)localObject1).setAnimationListener(new SplashActivity2.a(SplashActivity2.this));
            ((ImageView)localObject2).startAnimation((Animation)localObject1);
            return;
            ((View)localObject3).setVisibility(8);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SplashActivity2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */