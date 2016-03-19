package com.comscore.utils;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

public final class c
  implements Runnable
{
  protected com.comscore.a.b a;
  protected Handler b;
  protected boolean c;
  protected long d = -1L;
  
  public c(com.comscore.a.b paramb)
  {
    a = paramb;
  }
  
  private void a(long paramLong)
  {
    d = paramLong;
    a.g().a("plannedFlushTime", Long.toString(paramLong, 10));
  }
  
  private void d()
  {
    if (d < 0L) {
      a(SystemClock.uptimeMillis() + a.Q() * 1000L);
    }
    b.postAtTime(this, d);
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   6: invokevirtual 55	com/comscore/a/b:Q	()J
    //   9: lconst_0
    //   10: lcmp
    //   11: ifle +46 -> 57
    //   14: invokestatic 52	android/os/SystemClock:uptimeMillis	()J
    //   17: aload_0
    //   18: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   21: invokevirtual 55	com/comscore/a/b:Q	()J
    //   24: ldc2_w 56
    //   27: lmul
    //   28: ladd
    //   29: lstore_1
    //   30: aload_0
    //   31: lload_1
    //   32: invokespecial 59	com/comscore/utils/c:a	(J)V
    //   35: aload_0
    //   36: getfield 61	com/comscore/utils/c:b	Landroid/os/Handler;
    //   39: ifnull +15 -> 54
    //   42: aload_0
    //   43: getfield 61	com/comscore/utils/c:b	Landroid/os/Handler;
    //   46: aload_0
    //   47: invokevirtual 72	android/os/Handler:removeCallbacks	(Ljava/lang/Runnable;)V
    //   50: aload_0
    //   51: invokespecial 74	com/comscore/utils/c:d	()V
    //   54: aload_0
    //   55: monitorexit
    //   56: return
    //   57: ldc2_w 20
    //   60: lstore_1
    //   61: goto -31 -> 30
    //   64: astore_3
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_3
    //   68: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	69	0	this	c
    //   29	32	1	l	long
    //   64	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	30	64	finally
    //   30	54	64	finally
  }
  
  private void f()
  {
    if (b != null)
    {
      b.getLooper().quit();
      b = null;
    }
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: ldc 88
    //   5: invokestatic 93	com/comscore/utils/b:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   8: aload_0
    //   9: iconst_1
    //   10: putfield 95	com/comscore/utils/c:c	Z
    //   13: aload_0
    //   14: getfield 61	com/comscore/utils/c:b	Landroid/os/Handler;
    //   17: ifnonnull +99 -> 116
    //   20: aload_0
    //   21: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   24: invokevirtual 55	com/comscore/a/b:Q	()J
    //   27: lconst_0
    //   28: lcmp
    //   29: ifle +87 -> 116
    //   32: aload_0
    //   33: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   36: invokevirtual 99	com/comscore/a/b:M	()Ljava/lang/String;
    //   39: ifnull +77 -> 116
    //   42: new 101	android/os/HandlerThread
    //   45: dup
    //   46: ldc 103
    //   48: invokespecial 106	android/os/HandlerThread:<init>	(Ljava/lang/String;)V
    //   51: astore_2
    //   52: aload_2
    //   53: invokevirtual 109	android/os/HandlerThread:start	()V
    //   56: aload_0
    //   57: new 63	android/os/Handler
    //   60: dup
    //   61: aload_2
    //   62: invokevirtual 110	android/os/HandlerThread:getLooper	()Landroid/os/Looper;
    //   65: invokespecial 113	android/os/Handler:<init>	(Landroid/os/Looper;)V
    //   68: putfield 61	com/comscore/utils/c:b	Landroid/os/Handler;
    //   71: aload_0
    //   72: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   75: invokevirtual 33	com/comscore/a/b:g	()Lcom/comscore/utils/l;
    //   78: ldc 35
    //   80: invokevirtual 116	com/comscore/utils/l:a	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   83: invokevirtual 122	java/lang/Boolean:booleanValue	()Z
    //   86: istore_1
    //   87: iload_1
    //   88: ifeq +24 -> 112
    //   91: aload_0
    //   92: aload_0
    //   93: getfield 25	com/comscore/utils/c:a	Lcom/comscore/a/b;
    //   96: invokevirtual 33	com/comscore/a/b:g	()Lcom/comscore/utils/l;
    //   99: ldc 35
    //   101: invokevirtual 125	com/comscore/utils/l:b	(Ljava/lang/String;)Ljava/lang/String;
    //   104: bipush 10
    //   106: invokestatic 129	java/lang/Long:parseLong	(Ljava/lang/String;I)J
    //   109: putfield 23	com/comscore/utils/c:d	J
    //   112: aload_0
    //   113: invokespecial 74	com/comscore/utils/c:d	()V
    //   116: aload_0
    //   117: monitorexit
    //   118: return
    //   119: astore_2
    //   120: aload_0
    //   121: monitorexit
    //   122: aload_2
    //   123: athrow
    //   124: astore_2
    //   125: goto -13 -> 112
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	128	0	this	c
    //   86	2	1	bool	boolean
    //   51	11	2	localHandlerThread	android.os.HandlerThread
    //   119	4	2	localObject	Object
    //   124	1	2	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	87	119	finally
    //   91	112	119	finally
    //   112	116	119	finally
    //   91	112	124	java/lang/Exception
  }
  
  public final void b()
  {
    for (;;)
    {
      try
      {
        if ((a.Q() > 0L) && (a.M() != null))
        {
          if ((b == null) && (c))
          {
            a(-1L);
            a();
            return;
          }
          if (b == null) {
            continue;
          }
          e();
          continue;
        }
        a(-1L);
      }
      finally {}
      f();
    }
  }
  
  public final void c()
  {
    try
    {
      b.a(this, "stop()");
      c = false;
      f();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void run()
  {
    try
    {
      b.a(this, "run(): Flushing the cache");
      a.p(false);
      a(-1L);
      d();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */