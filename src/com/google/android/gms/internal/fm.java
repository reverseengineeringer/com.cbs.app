package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.concurrent.Future;

@fs
public final class fm
  extends gr
{
  private final fh.a a;
  private final AdResponseParcel b;
  private final gk.a c;
  private final fn d;
  private final Object e = new Object();
  private Future<gk> f;
  
  public fm(Context paramContext, com.google.android.gms.ads.internal.m paramm, ab paramab, gk.a parama, m paramm1, fh.a parama1)
  {
    this(parama, parama1, new fn(paramContext, paramm, paramab, new ha(paramContext), paramm1, parama));
  }
  
  private fm(gk.a parama, fh.a parama1, fn paramfn)
  {
    c = parama;
    b = b;
    a = parama1;
    d = paramfn;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: bipush -2
    //   2: istore_1
    //   3: aload_0
    //   4: getfield 42	com/google/android/gms/internal/fm:e	Ljava/lang/Object;
    //   7: astore_2
    //   8: aload_2
    //   9: monitorenter
    //   10: aload_0
    //   11: aload_0
    //   12: getfield 53	com/google/android/gms/internal/fm:d	Lcom/google/android/gms/internal/fn;
    //   15: invokestatic 67	com/google/android/gms/internal/gv:a	(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/hj;
    //   18: putfield 69	com/google/android/gms/internal/fm:f	Ljava/util/concurrent/Future;
    //   21: aload_2
    //   22: monitorexit
    //   23: aload_0
    //   24: getfield 69	com/google/android/gms/internal/fm:f	Ljava/util/concurrent/Future;
    //   27: ldc2_w 70
    //   30: getstatic 77	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   33: invokeinterface 83 4 0
    //   38: checkcast 85	com/google/android/gms/internal/gk
    //   41: astore_2
    //   42: aload_2
    //   43: ifnull +73 -> 116
    //   46: getstatic 90	com/google/android/gms/internal/gw:a	Landroid/os/Handler;
    //   49: new 92	com/google/android/gms/internal/fm$1
    //   52: dup
    //   53: aload_0
    //   54: aload_2
    //   55: invokespecial 95	com/google/android/gms/internal/fm$1:<init>	(Lcom/google/android/gms/internal/fm;Lcom/google/android/gms/internal/gk;)V
    //   58: invokevirtual 101	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   61: pop
    //   62: return
    //   63: astore_3
    //   64: aload_2
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    //   68: astore_2
    //   69: iconst_5
    //   70: invokestatic 106	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   73: pop
    //   74: iconst_2
    //   75: istore_1
    //   76: aload_0
    //   77: getfield 69	com/google/android/gms/internal/fm:f	Ljava/util/concurrent/Future;
    //   80: iconst_1
    //   81: invokeinterface 110 2 0
    //   86: pop
    //   87: aconst_null
    //   88: astore_2
    //   89: goto -47 -> 42
    //   92: astore_2
    //   93: iconst_0
    //   94: istore_1
    //   95: aconst_null
    //   96: astore_2
    //   97: goto -55 -> 42
    //   100: astore_2
    //   101: iconst_m1
    //   102: istore_1
    //   103: aconst_null
    //   104: astore_2
    //   105: goto -63 -> 42
    //   108: astore_2
    //   109: iconst_m1
    //   110: istore_1
    //   111: aconst_null
    //   112: astore_2
    //   113: goto -71 -> 42
    //   116: new 85	com/google/android/gms/internal/gk
    //   119: dup
    //   120: aload_0
    //   121: getfield 44	com/google/android/gms/internal/fm:c	Lcom/google/android/gms/internal/gk$a;
    //   124: getfield 113	com/google/android/gms/internal/gk$a:a	Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
    //   127: getfield 118	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   130: aconst_null
    //   131: aconst_null
    //   132: iload_1
    //   133: aconst_null
    //   134: aconst_null
    //   135: aload_0
    //   136: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   139: getfield 124	com/google/android/gms/ads/internal/request/AdResponseParcel:l	I
    //   142: aload_0
    //   143: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   146: getfield 128	com/google/android/gms/ads/internal/request/AdResponseParcel:k	J
    //   149: aload_0
    //   150: getfield 44	com/google/android/gms/internal/fm:c	Lcom/google/android/gms/internal/gk$a;
    //   153: getfield 113	com/google/android/gms/internal/gk$a:a	Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;
    //   156: getfield 132	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:i	Ljava/lang/String;
    //   159: iconst_0
    //   160: aconst_null
    //   161: aconst_null
    //   162: aconst_null
    //   163: aconst_null
    //   164: aconst_null
    //   165: aload_0
    //   166: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   169: getfield 134	com/google/android/gms/ads/internal/request/AdResponseParcel:i	J
    //   172: aload_0
    //   173: getfield 44	com/google/android/gms/internal/fm:c	Lcom/google/android/gms/internal/gk$a;
    //   176: getfield 137	com/google/android/gms/internal/gk$a:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   179: aload_0
    //   180: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   183: getfield 140	com/google/android/gms/ads/internal/request/AdResponseParcel:g	J
    //   186: aload_0
    //   187: getfield 44	com/google/android/gms/internal/fm:c	Lcom/google/android/gms/internal/gk$a;
    //   190: getfield 142	com/google/android/gms/internal/gk$a:f	J
    //   193: aload_0
    //   194: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   197: getfield 145	com/google/android/gms/ads/internal/request/AdResponseParcel:n	J
    //   200: aload_0
    //   201: getfield 49	com/google/android/gms/internal/fm:b	Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   204: getfield 148	com/google/android/gms/ads/internal/request/AdResponseParcel:o	Ljava/lang/String;
    //   207: aload_0
    //   208: getfield 44	com/google/android/gms/internal/fm:c	Lcom/google/android/gms/internal/gk$a;
    //   211: getfield 152	com/google/android/gms/internal/gk$a:h	Lorg/json/JSONObject;
    //   214: aconst_null
    //   215: invokespecial 155	com/google/android/gms/internal/gk:<init>	(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/hs;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/dm;Ljava/lang/String;Lcom/google/android/gms/internal/dd;Lcom/google/android/gms/internal/df;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/h$a;)V
    //   218: astore_2
    //   219: goto -173 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	fm
    //   2	131	1	i	int
    //   68	1	2	localTimeoutException	java.util.concurrent.TimeoutException
    //   88	1	2	localObject2	Object
    //   92	1	2	localExecutionException	java.util.concurrent.ExecutionException
    //   96	1	2	localObject3	Object
    //   100	1	2	localInterruptedException	InterruptedException
    //   104	1	2	localObject4	Object
    //   108	1	2	localCancellationException	java.util.concurrent.CancellationException
    //   112	107	2	localgk	gk
    //   63	4	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   10	23	63	finally
    //   64	66	63	finally
    //   3	10	68	java/util/concurrent/TimeoutException
    //   23	42	68	java/util/concurrent/TimeoutException
    //   66	68	68	java/util/concurrent/TimeoutException
    //   3	10	92	java/util/concurrent/ExecutionException
    //   23	42	92	java/util/concurrent/ExecutionException
    //   66	68	92	java/util/concurrent/ExecutionException
    //   3	10	100	java/lang/InterruptedException
    //   23	42	100	java/lang/InterruptedException
    //   66	68	100	java/lang/InterruptedException
    //   3	10	108	java/util/concurrent/CancellationException
    //   23	42	108	java/util/concurrent/CancellationException
    //   66	68	108	java/util/concurrent/CancellationException
  }
  
  public final void b()
  {
    synchronized (e)
    {
      if (f != null) {
        f.cancel(true);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */