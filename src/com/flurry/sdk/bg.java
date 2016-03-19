package com.flurry.sdk;

import java.util.Timer;
import java.util.TimerTask;

final class bg
{
  private Timer a;
  private a b;
  
  public final void a()
  {
    try
    {
      if (a != null)
      {
        a.cancel();
        a = null;
      }
      b = null;
      return;
    }
    finally {}
  }
  
  /* Error */
  public final void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 17	com/flurry/sdk/bg:a	Ljava/util/Timer;
    //   6: ifnull +53 -> 59
    //   9: iconst_1
    //   10: istore_3
    //   11: iload_3
    //   12: ifeq +7 -> 19
    //   15: aload_0
    //   16: invokevirtual 27	com/flurry/sdk/bg:a	()V
    //   19: aload_0
    //   20: new 19	java/util/Timer
    //   23: dup
    //   24: ldc 29
    //   26: invokespecial 32	java/util/Timer:<init>	(Ljava/lang/String;)V
    //   29: putfield 17	com/flurry/sdk/bg:a	Ljava/util/Timer;
    //   32: aload_0
    //   33: new 6	com/flurry/sdk/bg$a
    //   36: dup
    //   37: aload_0
    //   38: invokespecial 35	com/flurry/sdk/bg$a:<init>	(Lcom/flurry/sdk/bg;)V
    //   41: putfield 24	com/flurry/sdk/bg:b	Lcom/flurry/sdk/bg$a;
    //   44: aload_0
    //   45: getfield 17	com/flurry/sdk/bg:a	Ljava/util/Timer;
    //   48: aload_0
    //   49: getfield 24	com/flurry/sdk/bg:b	Lcom/flurry/sdk/bg$a;
    //   52: lload_1
    //   53: invokevirtual 39	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   56: aload_0
    //   57: monitorexit
    //   58: return
    //   59: iconst_0
    //   60: istore_3
    //   61: goto -50 -> 11
    //   64: astore 4
    //   66: aload_0
    //   67: monitorexit
    //   68: aload 4
    //   70: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	this	bg
    //   0	71	1	paramLong	long
    //   10	51	3	i	int
    //   64	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	64	finally
    //   15	19	64	finally
    //   19	56	64	finally
  }
  
  final class a
    extends TimerTask
  {
    a() {}
    
    public final void run()
    {
      a();
      bh localbh = new bh();
      ai.a().a(localbh);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */