package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class bk
{
  private Map<String, Object> a = new HashMap();
  private Map<String, List<a>> b = new HashMap();
  
  public final Object a(String paramString)
  {
    try
    {
      paramString = a.get(paramString);
      return paramString;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  public final void a(String paramString, a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_2
    //   15: ifnull -4 -> 11
    //   18: aload_0
    //   19: getfield 22	com/flurry/sdk/bk:b	Ljava/util/Map;
    //   22: aload_1
    //   23: invokeinterface 30 2 0
    //   28: checkcast 39	java/util/List
    //   31: astore 5
    //   33: aload 5
    //   35: astore 4
    //   37: aload 5
    //   39: ifnonnull +12 -> 51
    //   42: new 41	java/util/LinkedList
    //   45: dup
    //   46: invokespecial 42	java/util/LinkedList:<init>	()V
    //   49: astore 4
    //   51: aload 4
    //   53: aload_2
    //   54: invokeinterface 46 2 0
    //   59: pop
    //   60: aload_0
    //   61: getfield 22	com/flurry/sdk/bk:b	Ljava/util/Map;
    //   64: aload_1
    //   65: aload 4
    //   67: invokeinterface 50 3 0
    //   72: pop
    //   73: goto -62 -> 11
    //   76: astore_1
    //   77: aload_0
    //   78: monitorexit
    //   79: aload_1
    //   80: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	81	0	this	bk
    //   0	81	1	paramString	String
    //   0	81	2	parama	a
    //   6	2	3	bool	boolean
    //   35	31	4	localObject	Object
    //   31	7	5	localList	List
    // Exception table:
    //   from	to	target	type
    //   2	7	76	finally
    //   18	33	76	finally
    //   42	51	76	finally
    //   51	73	76	finally
  }
  
  public final void a(String paramString, Object paramObject)
  {
    for (;;)
    {
      Object localObject;
      int i;
      try
      {
        boolean bool = TextUtils.isEmpty(paramString);
        if (bool) {
          return;
        }
        localObject = a.get(paramString);
        if (paramObject == localObject) {
          break label157;
        }
        if ((paramObject == null) || (!paramObject.equals(localObject))) {
          break label137;
        }
      }
      finally {}
      if (i == 0)
      {
        if (paramObject == null)
        {
          a.remove(paramString);
          if (b.get(paramString) != null)
          {
            localObject = ((List)b.get(paramString)).iterator();
            if (((Iterator)localObject).hasNext())
            {
              ((a)((Iterator)localObject).next()).a(paramString, paramObject);
              continue;
            }
            continue;
            label137:
            i = 0;
            continue;
          }
        }
        else
        {
          a.put(paramString, paramObject);
          continue;
        }
        continue;
        label157:
        i = 1;
      }
    }
  }
  
  /* Error */
  public final boolean b(String paramString, a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokestatic 37	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_3
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_3
    //   16: ireturn
    //   17: aload_2
    //   18: ifnonnull +8 -> 26
    //   21: iconst_0
    //   22: istore_3
    //   23: goto -10 -> 13
    //   26: aload_0
    //   27: getfield 22	com/flurry/sdk/bk:b	Ljava/util/Map;
    //   30: aload_1
    //   31: invokeinterface 30 2 0
    //   36: checkcast 39	java/util/List
    //   39: astore_1
    //   40: aload_1
    //   41: ifnonnull +8 -> 49
    //   44: iconst_0
    //   45: istore_3
    //   46: goto -33 -> 13
    //   49: aload_1
    //   50: aload_2
    //   51: invokeinterface 76 2 0
    //   56: istore_3
    //   57: goto -44 -> 13
    //   60: astore_1
    //   61: aload_0
    //   62: monitorexit
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	bk
    //   0	65	1	paramString	String
    //   0	65	2	parama	a
    //   6	51	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	60	finally
    //   26	40	60	finally
    //   49	57	60	finally
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, Object paramObject);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */