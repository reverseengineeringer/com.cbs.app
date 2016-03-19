package com.urbanairship;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import com.urbanairship.analytics.c;
import com.urbanairship.push.j;
import com.urbanairship.richpush.RichPushManager;
import java.util.ArrayList;
import java.util.List;

public final class p
{
  static volatile boolean a = false;
  static volatile boolean b = false;
  static Application c;
  static p d;
  private static final Object p = new Object();
  private static List<f> q;
  com.urbanairship.actions.d e;
  a f;
  c g;
  b h;
  l i;
  j j;
  RichPushManager k;
  com.urbanairship.location.e l;
  com.urbanairship.c.b m;
  com.urbanairship.push.iam.d n;
  g o;
  
  private p(Context paramContext, a parama, l paraml)
  {
    f = parama;
    i = paraml;
    g = new c(paramContext, paraml, parama);
    h = new b(paramContext, paraml);
    k = new RichPushManager(paramContext, paraml);
    l = new com.urbanairship.location.e(paramContext, paraml);
    n = new com.urbanairship.push.iam.d(paraml);
    j = new j(paramContext, paraml, parama);
    m = com.urbanairship.c.b.a(parama);
    e = new com.urbanairship.actions.d();
    o = new g(paramContext, parama, j);
  }
  
  public static e a(a parama)
  {
    return b(parama);
  }
  
  public static p a()
  {
    synchronized (p)
    {
      if (a)
      {
        p localp1 = d;
        return localp1;
      }
      if (!b) {
        throw new IllegalStateException("Take off must be called before shared()");
      }
    }
    int i1 = 0;
    try
    {
      for (;;)
      {
        boolean bool = a;
        if (bool) {
          break;
        }
        try
        {
          p.wait();
        }
        catch (InterruptedException localInterruptedException)
        {
          i1 = 1;
        }
      }
      p localp2 = d;
      if (i1 != 0) {
        Thread.currentThread().interrupt();
      }
      return localp2;
    }
    finally
    {
      if (i1 != 0) {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  public static void a(Application paramApplication, a parama)
  {
    a(paramApplication, parama, null);
  }
  
  /* Error */
  public static void a(Application paramApplication, a parama, a parama1)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +13 -> 14
    //   4: new 147	java/lang/IllegalArgumentException
    //   7: dup
    //   8: ldc -107
    //   10: invokespecial 150	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   13: athrow
    //   14: invokestatic 156	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   17: ifnull +62 -> 79
    //   20: invokestatic 159	android/os/Looper:getMainLooper	()Landroid/os/Looper;
    //   23: invokestatic 156	android/os/Looper:myLooper	()Landroid/os/Looper;
    //   26: if_acmpne +53 -> 79
    //   29: getstatic 165	android/os/Build$VERSION:SDK_INT	I
    //   32: bipush 16
    //   34: if_icmpge +9 -> 43
    //   37: ldc -89
    //   39: invokestatic 173	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   42: pop
    //   43: getstatic 47	com/urbanairship/p:p	Ljava/lang/Object;
    //   46: astore_3
    //   47: aload_3
    //   48: monitorenter
    //   49: getstatic 49	com/urbanairship/p:a	Z
    //   52: ifne +9 -> 61
    //   55: getstatic 51	com/urbanairship/p:b	Z
    //   58: ifeq +29 -> 87
    //   61: ldc -81
    //   63: invokestatic 179	com/urbanairship/j:a	(Ljava/lang/String;)V
    //   66: aload_3
    //   67: monitorexit
    //   68: return
    //   69: astore_3
    //   70: ldc -75
    //   72: aload_3
    //   73: invokestatic 184	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   76: goto -33 -> 43
    //   79: ldc -70
    //   81: invokestatic 179	com/urbanairship/j:a	(Ljava/lang/String;)V
    //   84: goto -41 -> 43
    //   87: iconst_1
    //   88: putstatic 51	com/urbanairship/p:b	Z
    //   91: aload_0
    //   92: putstatic 188	com/urbanairship/p:c	Landroid/app/Application;
    //   95: invokestatic 192	com/urbanairship/UrbanAirshipProvider:a	()V
    //   98: getstatic 165	android/os/Build$VERSION:SDK_INT	I
    //   101: bipush 14
    //   103: if_icmplt +11 -> 114
    //   106: aload_0
    //   107: invokestatic 195	com/urbanairship/analytics/c:a	(Landroid/app/Application;)V
    //   110: aload_0
    //   111: invokestatic 196	com/urbanairship/push/iam/d:a	(Landroid/app/Application;)V
    //   114: new 132	java/lang/Thread
    //   117: dup
    //   118: new 198	com/urbanairship/p$2
    //   121: dup
    //   122: aload_0
    //   123: aload_1
    //   124: aload_2
    //   125: invokespecial 200	com/urbanairship/p$2:<init>	(Landroid/app/Application;Lcom/urbanairship/a;Lcom/urbanairship/p$a;)V
    //   128: invokespecial 203	java/lang/Thread:<init>	(Ljava/lang/Runnable;)V
    //   131: invokevirtual 206	java/lang/Thread:start	()V
    //   134: aload_3
    //   135: monitorexit
    //   136: return
    //   137: astore_0
    //   138: aload_3
    //   139: monitorexit
    //   140: aload_0
    //   141: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	paramApplication	Application
    //   0	142	1	parama	a
    //   0	142	2	parama1	a
    //   69	70	3	localClassNotFoundException	ClassNotFoundException
    // Exception table:
    //   from	to	target	type
    //   37	43	69	java/lang/ClassNotFoundException
    //   49	61	137	finally
    //   61	68	137	finally
    //   87	114	137	finally
    //   114	136	137	finally
    //   138	140	137	finally
  }
  
  private static e b(a arg0)
  {
    p.1 local1 = new p.1(null, ???);
    synchronized (p)
    {
      if (a)
      {
        local1.run();
        return local1;
      }
      if (q == null) {
        q = new ArrayList();
      }
      q.add(local1);
    }
  }
  
  public static String b()
  {
    return h().getPackageName();
  }
  
  public static String c()
  {
    return h().getPackageName() + ".permission.UA_DATA";
  }
  
  public static PackageManager d()
  {
    return h().getPackageManager();
  }
  
  public static PackageInfo e()
  {
    try
    {
      PackageInfo localPackageInfo = h().getPackageManager().getPackageInfo(h().getPackageName(), 0);
      return localPackageInfo;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static ApplicationInfo f()
  {
    return h().getApplicationInfo();
  }
  
  public static String g()
  {
    if (h().getApplicationInfo() != null) {
      return h().getPackageManager().getApplicationLabel(h().getApplicationInfo()).toString();
    }
    return null;
  }
  
  public static Context h()
  {
    if (c == null) {
      throw new IllegalStateException("TakeOff must be called first.");
    }
    return c.getApplicationContext();
  }
  
  public static boolean i()
  {
    return a;
  }
  
  public static boolean j()
  {
    return b;
  }
  
  public static String k()
  {
    return "6.3.1";
  }
  
  public final a l()
  {
    return f;
  }
  
  public final j m()
  {
    return j;
  }
  
  public final RichPushManager n()
  {
    return k;
  }
  
  public final com.urbanairship.location.e o()
  {
    return l;
  }
  
  public final com.urbanairship.push.iam.d p()
  {
    return n;
  }
  
  public final c q()
  {
    return g;
  }
  
  public final b r()
  {
    return h;
  }
  
  public final com.urbanairship.c.b s()
  {
    return m;
  }
  
  public final com.urbanairship.actions.d t()
  {
    return e;
  }
  
  public final int u()
  {
    int i1 = 1;
    int i2 = 1;
    switch (i.a("com.urbanairship.application.device.PLATFORM", -1))
    {
    default: 
      if (com.urbanairship.a.a.a()) {
        i1 = i2;
      }
      break;
    }
    for (;;)
    {
      i.b("com.urbanairship.application.device.PLATFORM", i1);
      return i1;
      return 2;
      if (!com.urbanairship.google.a.d())
      {
        i1 = i2;
        if ("amazon".equalsIgnoreCase(Build.MANUFACTURER)) {}
      }
      else
      {
        i1 = 2;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(p paramp);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */