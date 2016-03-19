package com.flurry.sdk;

import android.content.Context;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class bf
  implements bk.a
{
  private static bf a;
  private static final String b = bf.class.getSimpleName();
  private final Map<Context, be> c = new WeakHashMap();
  private final bg d = new bg();
  private final Object e = new Object();
  private long f;
  private long g;
  private be h;
  private ah<bh> i = new ah() {};
  private ah<ab> j = new ah() {};
  
  private bf()
  {
    bj localbj = bj.a();
    f = 0L;
    g = ((Long)localbj.a("ContinueSessionMillis")).longValue();
    localbj.a("ContinueSessionMillis", this);
    am.a(4, b, "initSettings, ContinueSessionMillis = " + g);
    ai.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", j);
    ai.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", i);
  }
  
  public static bf a()
  {
    try
    {
      if (a == null) {
        a = new bf();
      }
      bf localbf = a;
      return localbf;
    }
    finally {}
  }
  
  private int g()
  {
    try
    {
      int k = c.size();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 141
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 146	com/flurry/sdk/ac:a	()Lcom/flurry/sdk/ac;
    //   17: invokevirtual 149	com/flurry/sdk/ac:b	()Z
    //   20: ifeq -9 -> 11
    //   23: aload_1
    //   24: instanceof 151
    //   27: ifeq -16 -> 11
    //   30: iconst_3
    //   31: getstatic 45	com/flurry/sdk/bf:b	Ljava/lang/String;
    //   34: new 96	java/lang/StringBuilder
    //   37: dup
    //   38: ldc -103
    //   40: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 113	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual 158	com/flurry/sdk/bf:d	(Landroid/content/Context;)V
    //   58: goto -47 -> 11
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	bf
    //   0	66	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	61	finally
    //   14	58	61	finally
  }
  
  public final void a(String paramString, Object paramObject)
  {
    if (paramString.equals("ContinueSessionMillis"))
    {
      g = ((Long)paramObject).longValue();
      am.a(4, b, "onSettingUpdate, ContinueSessionMillis = " + g);
      return;
    }
    am.a(6, b, "onSettingUpdate internal error!");
  }
  
  public final long b()
  {
    return f;
  }
  
  /* Error */
  public final void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 141
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 146	com/flurry/sdk/ac:a	()Lcom/flurry/sdk/ac;
    //   17: invokevirtual 149	com/flurry/sdk/ac:b	()Z
    //   20: ifeq +10 -> 30
    //   23: aload_1
    //   24: instanceof 151
    //   27: ifne -16 -> 11
    //   30: iconst_3
    //   31: getstatic 45	com/flurry/sdk/bf:b	Ljava/lang/String;
    //   34: new 96	java/lang/StringBuilder
    //   37: dup
    //   38: ldc -85
    //   40: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 113	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual 158	com/flurry/sdk/bf:d	(Landroid/content/Context;)V
    //   58: goto -47 -> 11
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	bf
    //   0	66	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	61	finally
    //   14	30	61	finally
    //   30	58	61	finally
  }
  
  public final be c()
  {
    synchronized (e)
    {
      be localbe = h;
      return localbe;
    }
  }
  
  /* Error */
  public final void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 141
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 146	com/flurry/sdk/ac:a	()Lcom/flurry/sdk/ac;
    //   17: invokevirtual 149	com/flurry/sdk/ac:b	()Z
    //   20: ifeq +10 -> 30
    //   23: aload_1
    //   24: instanceof 151
    //   27: ifne -16 -> 11
    //   30: iconst_3
    //   31: getstatic 45	com/flurry/sdk/bf:b	Ljava/lang/String;
    //   34: new 96	java/lang/StringBuilder
    //   37: dup
    //   38: ldc -82
    //   40: invokespecial 101	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   43: aload_1
    //   44: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 108	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 113	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aload_0
    //   54: aload_1
    //   55: invokevirtual 176	com/flurry/sdk/bf:e	(Landroid/content/Context;)V
    //   58: goto -47 -> 11
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	bf
    //   0	66	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	61	finally
    //   14	30	61	finally
    //   30	58	61	finally
  }
  
  public final void d()
  {
    try
    {
      Iterator localIterator = c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        be localbe = (be)localEntry.getValue();
        localEntry.getKey();
        localbe.b();
      }
      c.clear();
    }
    finally {}
    e();
  }
  
  final void d(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if ((be)c.get(paramContext) != null)
        {
          if (ac.a().b())
          {
            am.a(3, b, "Session already started with context:" + paramContext);
            return;
          }
          am.d(b, "Session already started with context:" + paramContext);
          continue;
        }
        d.a();
      }
      finally {}
      ??? = c();
      Object localObject1 = ???;
      if (??? == null)
      {
        localObject1 = new be();
        am.d(b, "Flurry session created for context:" + paramContext);
        ((be)localObject1).a(paramContext);
      }
      c.put(paramContext, localObject1);
      synchronized (e)
      {
        h = ((be)localObject1);
        am.d(b, "Flurry session started for context:" + paramContext);
        ((be)localObject1).a();
        f = 0L;
      }
    }
  }
  
  final void e()
  {
    for (;;)
    {
      try
      {
        int k = g();
        if (k > 0)
        {
          am.a(5, b, "Session cannot be finalized, sessionContextCount:" + k);
          return;
        }
        be localbe1 = c();
        if (localbe1 == null)
        {
          am.a(5, b, "Session cannot be finalized, current session not found");
          continue;
        }
        am.d(b, "Flurry session finalized");
      }
      finally {}
      localbe2.c();
      y.a().b(new bt()
      {
        public final void a()
        {
          bf.a(bf.this, localbe2);
        }
      });
    }
  }
  
  final void e(Context paramContext)
  {
    for (;;)
    {
      be localbe;
      try
      {
        localbe = (be)c.remove(paramContext);
        if (localbe == null)
        {
          if (ac.a().b())
          {
            am.a(3, b, "Session cannot be ended, session not found for context:" + paramContext);
            return;
          }
          am.d(b, "Session cannot be ended, session not found for context:" + paramContext);
          continue;
        }
        am.d(b, "Flurry session ended for context:" + paramContext);
      }
      finally {}
      localbe.b();
      if (g() == 0)
      {
        d.a(g);
        f = System.currentTimeMillis();
      }
      else
      {
        f = 0L;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */