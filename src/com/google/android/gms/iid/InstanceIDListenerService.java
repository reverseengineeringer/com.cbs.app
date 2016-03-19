package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.gcm.GcmReceiver;
import java.io.IOException;

public class InstanceIDListenerService
  extends Service
{
  static String a = "action";
  private static String f = "google.com/iid";
  private static String g = "CMD";
  private static String h = "gcm.googleapis.com/refresh";
  MessengerCompat b = new MessengerCompat(new Handler(Looper.getMainLooper())
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      InstanceIDListenerService.a(InstanceIDListenerService.this, paramAnonymousMessage, MessengerCompat.a(paramAnonymousMessage));
    }
  });
  BroadcastReceiver c = new BroadcastReceiver()
  {
    public final void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (Log.isLoggable("InstanceID", 3))
      {
        paramAnonymousIntent.getStringExtra("registration_id");
        new StringBuilder("Received GSF callback using dynamic receiver: ").append(paramAnonymousIntent.getExtras());
      }
      a(paramAnonymousIntent);
      a();
    }
  };
  int d;
  int e;
  
  static void a(Context paramContext)
  {
    Intent localIntent = new Intent("com.google.android.gms.iid.InstanceID");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra(g, "SYNC");
    paramContext.startService(localIntent);
  }
  
  static void a(Context paramContext, e parame)
  {
    parame.b();
    parame = new Intent("com.google.android.gms.iid.InstanceID");
    parame.putExtra(g, "RST");
    parame.setPackage(paramContext.getPackageName());
    paramContext.startService(parame);
  }
  
  final void a()
  {
    try
    {
      d -= 1;
      if (d == 0) {
        stopSelf(e);
      }
      if (Log.isLoggable("InstanceID", 3)) {
        new StringBuilder("Stop ").append(d).append(" ").append(e);
      }
      return;
    }
    finally {}
  }
  
  public final void a(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("subtype");
    Object localObject1;
    Object localObject2;
    if (str == null)
    {
      localObject1 = a.b(this);
      localObject2 = paramIntent.getStringExtra(g);
      if ((paramIntent.getStringExtra("error") == null) && (paramIntent.getStringExtra("registration_id") == null)) {
        break label84;
      }
      if (Log.isLoggable("InstanceID", 3)) {}
      a.d().b(paramIntent);
    }
    label84:
    label245:
    do
    {
      do
      {
        return;
        localObject1 = new Bundle();
        ((Bundle)localObject1).putString("subtype", str);
        localObject1 = a.a(this, (Bundle)localObject1);
        break;
        if (Log.isLoggable("InstanceID", 3)) {
          new StringBuilder("Service command ").append(str).append(" ").append((String)localObject2).append(" ").append(paramIntent.getExtras());
        }
        if (paramIntent.getStringExtra("unregistered") != null)
        {
          localObject2 = a.c();
          if (str == null) {}
          for (localObject1 = "";; localObject1 = str)
          {
            ((e)localObject2).c((String)localObject1);
            a.d().b(paramIntent);
            return;
          }
        }
        if (h.equals(paramIntent.getStringExtra("from")))
        {
          a.c().c(str);
          b();
          return;
        }
        if ("RST".equals(localObject2))
        {
          ((a)localObject1).b();
          b();
          return;
        }
        if (!"RST_FULL".equals(localObject2)) {
          break label245;
        }
      } while (a.c().a());
      a.c().b();
      b();
      return;
      if ("SYNC".equals(localObject2))
      {
        a.c().c(str);
        b();
        return;
      }
    } while (!"PING".equals(localObject2));
    try
    {
      com.google.android.gms.gcm.a.a(this).a(f, d.a(), paramIntent.getExtras());
      return;
    }
    catch (IOException paramIntent) {}
  }
  
  public void b() {}
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((paramIntent != null) && ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))) {
      return b.a();
    }
    return null;
  }
  
  public void onCreate()
  {
    IntentFilter localIntentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
    localIntentFilter.addCategory(getPackageName());
    registerReceiver(c, localIntentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
  }
  
  public void onDestroy()
  {
    unregisterReceiver(c);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    try
    {
      d += 1;
      if (paramInt2 > e) {
        e = paramInt2;
      }
      if (paramIntent == null)
      {
        a();
        return 2;
      }
    }
    finally {}
    try
    {
      if ("com.google.android.gms.iid.InstanceID".equals(paramIntent.getAction()))
      {
        if (Build.VERSION.SDK_INT <= 18)
        {
          Intent localIntent = (Intent)paramIntent.getParcelableExtra("GSF");
          if (localIntent != null)
          {
            startService(localIntent);
            return 1;
          }
        }
        a(paramIntent);
      }
      a();
      if (paramIntent.getStringExtra("from") != null) {
        GcmReceiver.completeWakefulIntent(paramIntent);
      }
      return 2;
    }
    finally
    {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.iid.InstanceIDListenerService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */