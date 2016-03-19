package com.urbanairship.location;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.support.v4.content.LocalBroadcastManager;
import android.util.SparseArray;
import com.urbanairship.analytics.c;
import com.urbanairship.d;
import com.urbanairship.j;
import com.urbanairship.json.a;
import com.urbanairship.l;
import com.urbanairship.l.b;
import com.urbanairship.p;
import java.util.ArrayList;
import java.util.List;

public final class e
  extends d
{
  private final Messenger a;
  private final Context b;
  private Messenger c;
  private boolean d;
  private boolean e;
  private int f = 1;
  private final SparseArray<e.b> g = new SparseArray();
  private final l h;
  private final List<Object> i = new ArrayList();
  private final ServiceConnection j = new e.1(this);
  private final l.b k = new e.2(this);
  
  public e(Context paramContext, l paraml)
  {
    b = paramContext.getApplicationContext();
    h = paraml;
    a = new Messenger(new e.a(Looper.getMainLooper()));
  }
  
  /* Error */
  private void a(android.os.IBinder paramIBinder)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: new 71	android/os/Messenger
    //   6: dup
    //   7: aload_1
    //   8: invokespecial 89	android/os/Messenger:<init>	(Landroid/os/IBinder;)V
    //   11: putfield 91	com/urbanairship/location/e:c	Landroid/os/Messenger;
    //   14: aload_0
    //   15: getfield 42	com/urbanairship/location/e:g	Landroid/util/SparseArray;
    //   18: astore_1
    //   19: aload_1
    //   20: monitorenter
    //   21: iconst_0
    //   22: istore_2
    //   23: iload_2
    //   24: aload_0
    //   25: getfield 42	com/urbanairship/location/e:g	Landroid/util/SparseArray;
    //   28: invokevirtual 95	android/util/SparseArray:size	()I
    //   31: if_icmpge +24 -> 55
    //   34: aload_0
    //   35: getfield 42	com/urbanairship/location/e:g	Landroid/util/SparseArray;
    //   38: iload_2
    //   39: invokevirtual 99	android/util/SparseArray:valueAt	(I)Ljava/lang/Object;
    //   42: checkcast 8	com/urbanairship/location/e$b
    //   45: invokevirtual 101	com/urbanairship/location/e$b:d	()V
    //   48: iload_2
    //   49: iconst_1
    //   50: iadd
    //   51: istore_2
    //   52: goto -29 -> 23
    //   55: aload_1
    //   56: monitorexit
    //   57: aload_0
    //   58: invokespecial 103	com/urbanairship/location/e:f	()V
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: astore_3
    //   65: aload_1
    //   66: monitorexit
    //   67: aload_3
    //   68: athrow
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	e
    //   0	74	1	paramIBinder	android.os.IBinder
    //   22	30	2	m	int
    //   64	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	48	64	finally
    //   55	57	64	finally
    //   65	67	64	finally
    //   2	21	69	finally
    //   57	61	69	finally
    //   67	69	69	finally
  }
  
  private boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (c == null) {
      return false;
    }
    Message localMessage = Message.obtain(null, paramInt1, paramInt2, 0);
    if (paramBundle != null) {
      localMessage.setData(paramBundle);
    }
    replyTo = a;
    try
    {
      c.send(localMessage);
      return true;
    }
    catch (RemoteException paramBundle) {}
    return false;
  }
  
  private void f()
  {
    if (e()) {}
    for (;;)
    {
      synchronized (i)
      {
        if (!i.isEmpty())
        {
          if (d) {
            h();
          }
        }
        else
        {
          ??? = new Intent(b, LocationService.class).setAction("com.urbanairship.location.ACTION_CHECK_LOCATION_UPDATES");
          if (b.startService((Intent)???) == null) {
            j.a("Unable to start location service. Check that the location service is added to the manifest.");
          }
          return;
        }
        g();
        return;
      }
      i();
      synchronized (g)
      {
        if (g.size() == 0) {
          j();
        }
      }
    }
  }
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 143	com/urbanairship/location/e:d	Z
    //   6: ifne +34 -> 40
    //   9: invokestatic 179	com/urbanairship/p:h	()Landroid/content/Context;
    //   12: astore_1
    //   13: aload_1
    //   14: new 147	android/content/Intent
    //   17: dup
    //   18: aload_1
    //   19: ldc -107
    //   21: invokespecial 152	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   24: aload_0
    //   25: getfield 54	com/urbanairship/location/e:j	Landroid/content/ServiceConnection;
    //   28: iconst_1
    //   29: invokevirtual 183	android/content/Context:bindService	(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    //   32: ifeq +11 -> 43
    //   35: aload_0
    //   36: iconst_1
    //   37: putfield 143	com/urbanairship/location/e:d	Z
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: ldc -71
    //   45: invokestatic 169	com/urbanairship/j:a	(Ljava/lang/String;)V
    //   48: goto -8 -> 40
    //   51: astore_1
    //   52: aload_0
    //   53: monitorexit
    //   54: aload_1
    //   55: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	56	0	this	e
    //   12	7	1	localContext	Context
    //   51	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	40	51	finally
    //   43	48	51	finally
  }
  
  private void h()
  {
    try
    {
      if ((!e) && (a(1, 0, null))) {
        e = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void i()
  {
    try
    {
      if (e)
      {
        a(2, 0, null);
        e = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void j()
  {
    try
    {
      if (d)
      {
        p.h().unbindService(j);
        d = false;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void k()
  {
    try
    {
      c = null;
      e = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  protected final void a()
  {
    h.a(k);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.urbanairship.analytics.APP_FOREGROUND");
    localIntentFilter.addAction("com.urbanairship.analytics.APP_BACKGROUND");
    LocalBroadcastManager.getInstance(b).registerReceiver(new e.3(this), localIntentFilter);
    f();
  }
  
  public final boolean b()
  {
    return h.a("com.urbanairship.location.LOCATION_UPDATES_ENABLED", false);
  }
  
  public final LocationRequestOptions c()
  {
    Object localObject4 = null;
    String str = h.a("com.urbanairship.location.LOCATION_OPTIONS");
    Object localObject1 = localObject4;
    if (str != null) {}
    try
    {
      localObject1 = LocationRequestOptions.a(str);
      localObject4 = localObject1;
      if (localObject1 == null) {
        localObject4 = new LocationRequestOptions(new LocationRequestOptions.a(), (byte)0);
      }
      return (LocationRequestOptions)localObject4;
    }
    catch (a locala)
    {
      for (;;)
      {
        j.a("UALocationManager - Failed parsing LocationRequestOptions from JSON: " + locala.getMessage());
        Object localObject2 = localObject4;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;)
      {
        j.a("UALocationManager - Invalid LocationRequestOptions from JSON: " + localIllegalArgumentException.getMessage());
        Object localObject3 = localObject4;
      }
    }
  }
  
  final l d()
  {
    return h;
  }
  
  final boolean e()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (b()) {
      if (!h.a("com.urbanairship.location.BACKGROUND_UPDATES_ALLOWED", false))
      {
        bool1 = bool2;
        if (!p.a().q().a()) {}
      }
      else
      {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */