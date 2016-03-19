package com.flurry.sdk;

import java.util.LinkedHashMap;
import java.util.Map;

public final class ao
{
  private static final String a = ao.class.getSimpleName();
  private static final Map<Class<? extends ap>, an> b = new LinkedHashMap();
  private final Map<Class<? extends ap>, ap> c = new LinkedHashMap();
  
  public static void a(Class<? extends ap> paramClass)
  {
    synchronized (b)
    {
      b.put(paramClass, new an(paramClass, 10));
      return;
    }
  }
  
  /* Error */
  public final void a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 28	com/flurry/sdk/ao:b	Ljava/util/Map;
    //   5: astore_2
    //   6: aload_2
    //   7: monitorenter
    //   8: new 51	java/util/ArrayList
    //   11: dup
    //   12: getstatic 28	com/flurry/sdk/ao:b	Ljava/util/Map;
    //   15: invokeinterface 55 1 0
    //   20: invokespecial 58	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   23: astore_3
    //   24: aload_2
    //   25: monitorexit
    //   26: aload_3
    //   27: invokeinterface 64 1 0
    //   32: astore_2
    //   33: aload_2
    //   34: invokeinterface 70 1 0
    //   39: ifeq +106 -> 145
    //   42: aload_2
    //   43: invokeinterface 74 1 0
    //   48: checkcast 35	com/flurry/sdk/an
    //   51: astore_3
    //   52: aload_3
    //   53: invokevirtual 76	com/flurry/sdk/an:b	()Z
    //   56: ifeq -23 -> 33
    //   59: aload_3
    //   60: invokevirtual 79	com/flurry/sdk/an:a	()Ljava/lang/Class;
    //   63: invokevirtual 82	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   66: checkcast 84	com/flurry/sdk/ap
    //   69: astore 4
    //   71: aload 4
    //   73: invokeinterface 86 1 0
    //   78: aload_0
    //   79: getfield 32	com/flurry/sdk/ao:c	Ljava/util/Map;
    //   82: aload_3
    //   83: invokevirtual 79	com/flurry/sdk/an:a	()Ljava/lang/Class;
    //   86: aload 4
    //   88: invokeinterface 44 3 0
    //   93: pop
    //   94: goto -61 -> 33
    //   97: astore 4
    //   99: iconst_5
    //   100: getstatic 21	com/flurry/sdk/ao:a	Ljava/lang/String;
    //   103: new 88	java/lang/StringBuilder
    //   106: dup
    //   107: ldc 90
    //   109: invokespecial 93	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   112: aload_3
    //   113: invokevirtual 79	com/flurry/sdk/an:a	()Ljava/lang/Class;
    //   116: invokevirtual 97	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   119: ldc 99
    //   121: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 105	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: aload 4
    //   129: invokestatic 110	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   132: goto -99 -> 33
    //   135: astore_1
    //   136: aload_0
    //   137: monitorexit
    //   138: aload_1
    //   139: athrow
    //   140: astore_1
    //   141: aload_2
    //   142: monitorexit
    //   143: aload_1
    //   144: athrow
    //   145: invokestatic 115	com/flurry/sdk/bf:a	()Lcom/flurry/sdk/bf;
    //   148: aload_1
    //   149: invokevirtual 117	com/flurry/sdk/bf:a	(Landroid/content/Context;)V
    //   152: invokestatic 122	com/flurry/sdk/ac:a	()Lcom/flurry/sdk/ac;
    //   155: pop
    //   156: aload_0
    //   157: monitorexit
    //   158: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	159	0	this	ao
    //   0	159	1	paramContext	android.content.Context
    //   23	90	3	localObject2	Object
    //   69	18	4	localap	ap
    //   97	31	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   52	94	97	java/lang/Exception
    //   2	8	135	finally
    //   26	33	135	finally
    //   33	52	135	finally
    //   52	94	135	finally
    //   99	132	135	finally
    //   143	145	135	finally
    //   145	156	135	finally
    //   8	26	140	finally
    //   141	143	140	finally
  }
  
  public final ap b(Class<? extends ap> paramClass)
  {
    if (paramClass == null) {
      ??? = null;
    }
    for (;;)
    {
      return (ap)???;
      synchronized (c)
      {
        ap localap = (ap)c.get(paramClass);
        ??? = localap;
        if (localap != null) {
          continue;
        }
        throw new IllegalStateException("Module was not registered/initialized. " + paramClass);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */