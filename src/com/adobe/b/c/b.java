package com.adobe.b.c;

import com.adobe.b.a.a.f;
import com.adobe.b.a.d;
import com.adobe.b.c.b.a.a;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class b
{
  private String a = b.class.getSimpleName();
  private com.adobe.b.a.c b = new d();
  private f c = new f(b);
  private boolean d;
  
  public b(List<com.adobe.b.a.a.c> paramList)
  {
    c.a(new a(b));
    Collections.sort(paramList, new Comparator() {});
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      com.adobe.b.a.a.c localc = (com.adobe.b.a.a.c)paramList.next();
      c.a(localc);
    }
    c.a();
    d = false;
  }
  
  /* Error */
  public final void a(c paramc)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: getfield 84	com/adobe/b/c/c:a	Z
    //   6: ifeq +37 -> 43
    //   9: aload_0
    //   10: getfield 32	com/adobe/b/c/b:b	Lcom/adobe/b/a/c;
    //   13: invokeinterface 87 1 0
    //   18: aload_0
    //   19: getfield 76	com/adobe/b/c/b:d	Z
    //   22: ifeq +18 -> 40
    //   25: aload_0
    //   26: getfield 32	com/adobe/b/c/b:b	Lcom/adobe/b/a/c;
    //   29: aload_0
    //   30: getfield 27	com/adobe/b/c/b:a	Ljava/lang/String;
    //   33: ldc 89
    //   35: invokeinterface 92 3 0
    //   40: aload_0
    //   41: monitorexit
    //   42: return
    //   43: aload_0
    //   44: getfield 32	com/adobe/b/c/b:b	Lcom/adobe/b/a/c;
    //   47: invokeinterface 94 1 0
    //   52: goto -34 -> 18
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	b
    //   0	60	1	paramc	c
    // Exception table:
    //   from	to	target	type
    //   2	18	55	finally
    //   18	40	55	finally
    //   43	52	55	finally
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */