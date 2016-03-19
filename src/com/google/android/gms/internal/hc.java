package com.google.android.gms.internal;

import android.content.Context;

@fs
public final class hc
  extends gr
{
  private final String a;
  private final Context b;
  private final String c;
  private String d = null;
  
  public hc(Context paramContext, String paramString1, String paramString2)
  {
    b = paramContext;
    a = paramString1;
    c = paramString2;
  }
  
  public hc(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    b = paramContext;
    a = paramString1;
    c = paramString2;
    d = paramString3;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: new 34	java/lang/StringBuilder
    //   3: dup
    //   4: ldc 36
    //   6: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   9: aload_0
    //   10: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   13: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: pop
    //   17: iconst_2
    //   18: invokestatic 48	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   21: pop
    //   22: new 50	java/net/URL
    //   25: dup
    //   26: aload_0
    //   27: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   30: invokespecial 51	java/net/URL:<init>	(Ljava/lang/String;)V
    //   33: invokevirtual 55	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   36: checkcast 57	java/net/HttpURLConnection
    //   39: astore_2
    //   40: aload_0
    //   41: getfield 18	com/google/android/gms/internal/hc:d	Ljava/lang/String;
    //   44: invokestatic 63	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   47: ifeq +74 -> 121
    //   50: invokestatic 69	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   53: aload_0
    //   54: getfield 20	com/google/android/gms/internal/hc:b	Landroid/content/Context;
    //   57: aload_0
    //   58: getfield 22	com/google/android/gms/internal/hc:a	Ljava/lang/String;
    //   61: iconst_1
    //   62: aload_2
    //   63: invokevirtual 74	com/google/android/gms/internal/gw:a	(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    //   66: aload_2
    //   67: invokevirtual 78	java/net/HttpURLConnection:getResponseCode	()I
    //   70: istore_1
    //   71: iload_1
    //   72: sipush 200
    //   75: if_icmplt +10 -> 85
    //   78: iload_1
    //   79: sipush 300
    //   82: if_icmplt +34 -> 116
    //   85: new 34	java/lang/StringBuilder
    //   88: dup
    //   89: ldc 80
    //   91: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   94: iload_1
    //   95: invokevirtual 83	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   98: ldc 85
    //   100: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_0
    //   104: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   107: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: pop
    //   111: iconst_5
    //   112: invokestatic 48	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   115: pop
    //   116: aload_2
    //   117: invokevirtual 88	java/net/HttpURLConnection:disconnect	()V
    //   120: return
    //   121: invokestatic 69	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   124: pop
    //   125: aload_2
    //   126: aload_0
    //   127: getfield 18	com/google/android/gms/internal/hc:d	Ljava/lang/String;
    //   130: invokestatic 91	com/google/android/gms/internal/gw:a	(Ljava/net/HttpURLConnection;Ljava/lang/String;)V
    //   133: goto -67 -> 66
    //   136: astore_3
    //   137: aload_2
    //   138: invokevirtual 88	java/net/HttpURLConnection:disconnect	()V
    //   141: aload_3
    //   142: athrow
    //   143: astore_2
    //   144: new 34	java/lang/StringBuilder
    //   147: dup
    //   148: ldc 93
    //   150: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   157: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: ldc 95
    //   162: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload_2
    //   166: invokevirtual 99	java/lang/IndexOutOfBoundsException:getMessage	()Ljava/lang/String;
    //   169: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: pop
    //   173: iconst_5
    //   174: invokestatic 48	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   177: pop
    //   178: return
    //   179: astore_2
    //   180: new 34	java/lang/StringBuilder
    //   183: dup
    //   184: ldc 101
    //   186: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: aload_0
    //   190: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   193: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: ldc 95
    //   198: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: aload_2
    //   202: invokevirtual 102	java/io/IOException:getMessage	()Ljava/lang/String;
    //   205: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: pop
    //   209: iconst_5
    //   210: invokestatic 48	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   213: pop
    //   214: return
    //   215: astore_2
    //   216: new 34	java/lang/StringBuilder
    //   219: dup
    //   220: ldc 101
    //   222: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: aload_0
    //   226: getfield 24	com/google/android/gms/internal/hc:c	Ljava/lang/String;
    //   229: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: ldc 95
    //   234: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload_2
    //   238: invokevirtual 103	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   241: invokevirtual 43	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: pop
    //   245: iconst_5
    //   246: invokestatic 48	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   249: pop
    //   250: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	251	0	this	hc
    //   70	25	1	i	int
    //   39	99	2	localHttpURLConnection	java.net.HttpURLConnection
    //   143	23	2	localIndexOutOfBoundsException	IndexOutOfBoundsException
    //   179	23	2	localIOException	java.io.IOException
    //   215	23	2	localRuntimeException	RuntimeException
    //   136	6	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   40	66	136	finally
    //   66	71	136	finally
    //   85	116	136	finally
    //   121	133	136	finally
    //   0	40	143	java/lang/IndexOutOfBoundsException
    //   116	120	143	java/lang/IndexOutOfBoundsException
    //   137	143	143	java/lang/IndexOutOfBoundsException
    //   0	40	179	java/io/IOException
    //   116	120	179	java/io/IOException
    //   137	143	179	java/io/IOException
    //   0	40	215	java/lang/RuntimeException
    //   116	120	215	java/lang/RuntimeException
    //   137	143	215	java/lang/RuntimeException
  }
  
  public final void b() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */