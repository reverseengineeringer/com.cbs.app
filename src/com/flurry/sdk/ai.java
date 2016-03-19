package com.flurry.sdk;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ai
{
  private static ai a = null;
  private static final String b = ai.class.getSimpleName();
  private final ad<String, as<ah<?>>> c = new ad();
  private final ad<as<ah<?>>, String> d = new ad();
  
  public static ai a()
  {
    try
    {
      if (a == null) {
        a = new ai();
      }
      ai localai = a;
      return localai;
    }
    finally {}
  }
  
  private List<ah<?>> b(String paramString)
  {
    for (;;)
    {
      ArrayList localArrayList;
      try
      {
        if (TextUtils.isEmpty(paramString))
        {
          paramString = Collections.emptyList();
          return paramString;
        }
        localArrayList = new ArrayList();
        paramString = c.a(paramString).iterator();
        if (!paramString.hasNext()) {
          break label93;
        }
        ah localah = (ah)((as)paramString.next()).get();
        if (localah == null)
        {
          paramString.remove();
          continue;
        }
        localArrayList.add(localah);
      }
      finally {}
      continue;
      label93:
      paramString = localArrayList;
    }
  }
  
  /* Error */
  public final int a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 47	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 36	com/flurry/sdk/ai:c	Lcom/flurry/sdk/ad;
    //   21: aload_1
    //   22: invokevirtual 59	com/flurry/sdk/ad:a	(Ljava/lang/Object;)Ljava/util/List;
    //   25: invokeinterface 96 1 0
    //   30: istore_2
    //   31: goto -18 -> 13
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	ai
    //   0	39	1	paramString	String
    //   12	19	2	i	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   17	31	34	finally
  }
  
  public final void a(final ag paramag)
  {
    Iterator localIterator = b(paramag.a()).iterator();
    while (localIterator.hasNext())
    {
      final ah localah = (ah)localIterator.next();
      y.a().b(new bt()
      {
        public final void a()
        {
          localah.a(paramag);
        }
      });
    }
  }
  
  public final void a(ah<?> paramah)
  {
    if (paramah == null) {}
    for (;;)
    {
      return;
      try
      {
        paramah = new as(paramah);
        Iterator localIterator = d.a(paramah).iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          c.b(str, paramah);
        }
        d.b(paramah);
      }
      finally {}
    }
  }
  
  /* Error */
  public final void a(String paramString, ah<?> paramah)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 47	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +7 -> 15
    //   11: aload_2
    //   12: ifnonnull +6 -> 18
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: new 77	com/flurry/sdk/as
    //   21: dup
    //   22: aload_2
    //   23: invokespecial 118	com/flurry/sdk/as:<init>	(Ljava/lang/Object;)V
    //   26: astore_2
    //   27: aload_0
    //   28: getfield 36	com/flurry/sdk/ai:c	Lcom/flurry/sdk/ad;
    //   31: aload_1
    //   32: aload_2
    //   33: invokevirtual 129	com/flurry/sdk/ad:c	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   36: ifne -21 -> 15
    //   39: aload_0
    //   40: getfield 36	com/flurry/sdk/ai:c	Lcom/flurry/sdk/ad;
    //   43: aload_1
    //   44: aload_2
    //   45: invokevirtual 132	com/flurry/sdk/ad:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   48: aload_0
    //   49: getfield 38	com/flurry/sdk/ai:d	Lcom/flurry/sdk/ad;
    //   52: aload_2
    //   53: aload_1
    //   54: invokevirtual 132	com/flurry/sdk/ad:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   57: goto -42 -> 15
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	ai
    //   0	65	1	paramString	String
    //   0	65	2	paramah	ah<?>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	60	finally
    //   18	57	60	finally
  }
  
  /* Error */
  public final void b(String paramString, ah<?> paramah)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 47	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: new 77	com/flurry/sdk/as
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 118	com/flurry/sdk/as:<init>	(Ljava/lang/Object;)V
    //   22: astore_2
    //   23: aload_0
    //   24: getfield 36	com/flurry/sdk/ai:c	Lcom/flurry/sdk/ad;
    //   27: aload_1
    //   28: aload_2
    //   29: invokevirtual 123	com/flurry/sdk/ad:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   32: pop
    //   33: aload_0
    //   34: getfield 38	com/flurry/sdk/ai:d	Lcom/flurry/sdk/ad;
    //   37: aload_2
    //   38: aload_1
    //   39: invokevirtual 123	com/flurry/sdk/ad:b	(Ljava/lang/Object;Ljava/lang/Object;)Z
    //   42: pop
    //   43: goto -32 -> 11
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	ai
    //   0	51	1	paramString	String
    //   0	51	2	paramah	ah<?>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   14	43	46	finally
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */