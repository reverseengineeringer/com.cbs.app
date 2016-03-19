package com.cbs.app.cast;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;
import android.os.IBinder;
import android.os.SystemClock;
import com.cbs.app.view.utils.Util;
import com.google.android.libraries.cast.companionlibrary.a.b;
import com.google.android.libraries.cast.companionlibrary.a.d;
import com.google.android.libraries.cast.companionlibrary.cast.a;
import java.util.Timer;
import java.util.TimerTask;

public class ReconnectionService
  extends Service
{
  private static final String a = b.a(ReconnectionService.class);
  private BroadcastReceiver b;
  private com.google.android.libraries.cast.companionlibrary.cast.c c;
  private BroadcastReceiver d;
  private boolean e = true;
  private Timer f;
  private TimerTask g;
  
  private void b()
  {
    b.a("setUpEndTimer(): setting up a timer for the end of current media");
    long l = d();
    if (l <= 0L)
    {
      stopSelf();
      return;
    }
    c();
    f = new Timer();
    g = new TimerTask()
    {
      public final void run()
      {
        ReconnectionService.a();
        b.a("setUpEndTimer(): stopping ReconnectionService since reached the end of allotted time");
        ReconnectionService.b(ReconnectionService.this);
      }
    };
    f.schedule(g, l);
  }
  
  private void c()
  {
    if (g != null)
    {
      g.cancel();
      g = null;
    }
    if (f != null)
    {
      f.cancel();
      f = null;
    }
  }
  
  private long d()
  {
    return c.y().b("media-end") - SystemClock.elapsedRealtime();
  }
  
  public final void a(boolean paramBoolean, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder("WIFI connectivity changed to ");
    if (paramBoolean) {}
    for (String str = "enabled";; str = "disabled")
    {
      b.a(str);
      if ((!paramBoolean) || (e)) {
        break;
      }
      e = true;
      if (c.e(8))
      {
        c.i();
        c.a(15, paramString);
      }
      return;
    }
    e = paramBoolean;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    b.a("onCreate() is called");
    if (Util.H(this))
    {
      c = com.google.android.libraries.cast.companionlibrary.cast.c.B();
      if ((!c.j()) && (!c.k())) {
        c.g(10);
      }
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
      localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
      b = new BroadcastReceiver()
      {
        public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          ReconnectionService.a();
          b.a("ScreenOnOffBroadcastReceiver: onReceive(): " + paramAnonymousIntent.getAction());
          if (ReconnectionService.a(ReconnectionService.this) < 500L) {
            ReconnectionService.b(ReconnectionService.this);
          }
        }
      };
      registerReceiver(b, localIntentFilter);
      localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.net.wifi.STATE_CHANGE");
      d = new BroadcastReceiver()
      {
        public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
        {
          boolean bool;
          if (paramAnonymousIntent.getAction().equals("android.net.wifi.STATE_CHANGE"))
          {
            bool = ((NetworkInfo)paramAnonymousIntent.getParcelableExtra("networkInfo")).isConnected();
            if (!bool) {
              break label44;
            }
          }
          label44:
          for (paramAnonymousContext = d.a(paramAnonymousContext);; paramAnonymousContext = null)
          {
            a(bool, paramAnonymousContext);
            return;
          }
        }
      };
      registerReceiver(d, localIntentFilter);
    }
    super.onCreate();
  }
  
  public void onDestroy()
  {
    b.a("onDestroy()");
    if (Util.H(this))
    {
      if (b != null)
      {
        unregisterReceiver(b);
        b = null;
      }
      if (d != null)
      {
        unregisterReceiver(d);
        d = null;
      }
      c();
    }
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    b.a("onStartCommand() is called");
    b();
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.cast.ReconnectionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */