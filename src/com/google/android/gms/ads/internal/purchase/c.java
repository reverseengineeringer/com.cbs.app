package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.fs;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@fs
public final class c
  extends gr
  implements ServiceConnection
{
  private final Object a = new Object();
  private boolean b = false;
  private Context c;
  private ew d;
  private b e;
  private h f;
  private List<f> g = null;
  private k h;
  
  public c(Context paramContext, ew paramew, k paramk)
  {
    this(paramContext, paramew, paramk, new b(paramContext), h.a(paramContext.getApplicationContext()));
  }
  
  private c(Context paramContext, ew paramew, k paramk, b paramb, h paramh)
  {
    c = paramContext;
    d = paramew;
    h = paramk;
    e = paramb;
    f = paramh;
    g = f.a();
  }
  
  private void a(long paramLong)
  {
    do
    {
      if (!b(paramLong)) {
        com.google.android.gms.ads.internal.util.client.b.a(2);
      }
    } while (!b);
  }
  
  private boolean b(long paramLong)
  {
    paramLong = 60000L - (SystemClock.elapsedRealtime() - paramLong);
    if (paramLong <= 0L) {
      return false;
    }
    try
    {
      a.wait(paramLong);
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.a(5);
      }
    }
  }
  
  public final void a()
  {
    synchronized (a)
    {
      Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
      localIntent.setPackage("com.android.vending");
      com.google.android.gms.common.stats.b.a().a(c, localIntent, this, 1);
      a(SystemClock.elapsedRealtime());
      com.google.android.gms.common.stats.b.a().a(c, this);
      e.a = null;
      return;
    }
  }
  
  public final void b()
  {
    synchronized (a)
    {
      com.google.android.gms.common.stats.b.a().a(c, this);
      e.a = null;
      return;
    }
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Object localObject2;
    synchronized (a)
    {
      e.a(paramIBinder);
      if (g.isEmpty()) {
        break label383;
      }
      paramIBinder = new HashMap();
      paramComponentName = g.iterator();
      if (paramComponentName.hasNext())
      {
        localObject2 = (f)paramComponentName.next();
        paramIBinder.put(c, localObject2);
      }
    }
    paramComponentName = null;
    paramComponentName = e.b(c.getPackageName(), paramComponentName);
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int i;
    if (paramComponentName != null)
    {
      o.o();
      if (i.a(paramComponentName) == 0)
      {
        localObject2 = paramComponentName.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        localArrayList1 = paramComponentName.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        localArrayList2 = paramComponentName.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        paramComponentName = paramComponentName.getString("INAPP_CONTINUATION_TOKEN");
        i = 0;
      }
    }
    for (;;)
    {
      if (i < ((ArrayList)localObject2).size())
      {
        if (paramIBinder.containsKey(((ArrayList)localObject2).get(i)))
        {
          String str1 = (String)((ArrayList)localObject2).get(i);
          String str2 = (String)localArrayList1.get(i);
          String str3 = (String)localArrayList2.get(i);
          f localf = (f)paramIBinder.get(str1);
          o.o();
          Object localObject3 = i.a(str2);
          if (b.equals(localObject3))
          {
            localObject3 = new Intent();
            o.o();
            ((Intent)localObject3).putExtra("RESPONSE_CODE", 0);
            o.o();
            ((Intent)localObject3).putExtra("INAPP_PURCHASE_DATA", str2);
            o.o();
            ((Intent)localObject3).putExtra("INAPP_DATA_SIGNATURE", str3);
            gw.a.post(new c.1(this, localf, (Intent)localObject3));
            paramIBinder.remove(str1);
          }
        }
      }
      else
      {
        if ((paramComponentName == null) || (paramIBinder.isEmpty()))
        {
          paramComponentName = paramIBinder.keySet().iterator();
          while (paramComponentName.hasNext())
          {
            localObject2 = (String)paramComponentName.next();
            f.a((f)paramIBinder.get(localObject2));
          }
          label383:
          b = true;
          a.notify();
          return;
        }
        break;
      }
      i += 1;
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    com.google.android.gms.ads.internal.util.client.b.a(4);
    e.a = null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */