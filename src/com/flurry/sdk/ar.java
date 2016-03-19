package com.flurry.sdk;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

public class ar
  extends bu
{
  private static final String a = ar.class.getSimpleName();
  private String b;
  private a c;
  private int d = 10000;
  private int g = 15000;
  private boolean h = true;
  private final ad<String, String> i = new ad();
  private b j;
  private HttpURLConnection k;
  private boolean l;
  private boolean m;
  private Exception n;
  private int o = -1;
  private final ad<String, String> p = new ad();
  private final Object q = new Object();
  
  /* Error */
  private void g()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: getfield 71	com/flurry/sdk/ar:m	Z
    //   10: ifeq +4 -> 14
    //   13: return
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 73	com/flurry/sdk/ar:b	Ljava/lang/String;
    //   19: invokestatic 78	com/flurry/sdk/bs:a	(Ljava/lang/String;)Ljava/lang/String;
    //   22: putfield 73	com/flurry/sdk/ar:b	Ljava/lang/String;
    //   25: new 80	java/net/URL
    //   28: dup
    //   29: aload_0
    //   30: getfield 73	com/flurry/sdk/ar:b	Ljava/lang/String;
    //   33: invokespecial 83	java/net/URL:<init>	(Ljava/lang/String;)V
    //   36: astore_2
    //   37: aload_0
    //   38: aload_2
    //   39: invokevirtual 87	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   42: checkcast 89	java/net/HttpURLConnection
    //   45: putfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   48: aload_0
    //   49: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   52: aload_0
    //   53: getfield 51	com/flurry/sdk/ar:d	I
    //   56: invokevirtual 95	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   59: aload_0
    //   60: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   63: aload_0
    //   64: getfield 53	com/flurry/sdk/ar:g	I
    //   67: invokevirtual 98	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   70: aload_0
    //   71: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   74: aload_0
    //   75: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   78: invokevirtual 103	com/flurry/sdk/ar$a:toString	()Ljava/lang/String;
    //   81: invokevirtual 106	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   84: aload_0
    //   85: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   88: aload_0
    //   89: getfield 55	com/flurry/sdk/ar:h	Z
    //   92: invokevirtual 110	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   95: aload_0
    //   96: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   99: getstatic 111	com/flurry/sdk/ar$a:c	Lcom/flurry/sdk/ar$a;
    //   102: aload_0
    //   103: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   106: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   109: invokevirtual 118	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   112: aload_0
    //   113: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   116: iconst_1
    //   117: invokevirtual 121	java/net/HttpURLConnection:setDoInput	(Z)V
    //   120: aload_0
    //   121: getfield 60	com/flurry/sdk/ar:i	Lcom/flurry/sdk/ad;
    //   124: invokevirtual 124	com/flurry/sdk/ad:a	()Ljava/util/Collection;
    //   127: invokeinterface 130 1 0
    //   132: astore_2
    //   133: aload_2
    //   134: invokeinterface 136 1 0
    //   139: ifeq +48 -> 187
    //   142: aload_2
    //   143: invokeinterface 140 1 0
    //   148: checkcast 142	java/util/Map$Entry
    //   151: astore_3
    //   152: aload_0
    //   153: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   156: aload_3
    //   157: invokeinterface 145 1 0
    //   162: checkcast 147	java/lang/String
    //   165: aload_3
    //   166: invokeinterface 150 1 0
    //   171: checkcast 147	java/lang/String
    //   174: invokevirtual 154	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   177: goto -44 -> 133
    //   180: astore_2
    //   181: aload_0
    //   182: invokespecial 156	com/flurry/sdk/ar:i	()V
    //   185: aload_2
    //   186: athrow
    //   187: getstatic 158	com/flurry/sdk/ar$a:b	Lcom/flurry/sdk/ar$a;
    //   190: aload_0
    //   191: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   194: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   197: ifne +27 -> 224
    //   200: getstatic 111	com/flurry/sdk/ar$a:c	Lcom/flurry/sdk/ar$a;
    //   203: aload_0
    //   204: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   207: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   210: ifne +14 -> 224
    //   213: aload_0
    //   214: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   217: ldc -96
    //   219: ldc -94
    //   221: invokevirtual 165	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   224: aload_0
    //   225: getfield 71	com/flurry/sdk/ar:m	Z
    //   228: istore_1
    //   229: iload_1
    //   230: ifeq +8 -> 238
    //   233: aload_0
    //   234: invokespecial 156	com/flurry/sdk/ar:i	()V
    //   237: return
    //   238: getstatic 111	com/flurry/sdk/ar$a:c	Lcom/flurry/sdk/ar$a;
    //   241: aload_0
    //   242: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   245: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   248: istore_1
    //   249: iload_1
    //   250: ifeq +52 -> 302
    //   253: aload_0
    //   254: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   257: invokevirtual 169	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   260: astore_2
    //   261: new 171	java/io/BufferedOutputStream
    //   264: dup
    //   265: aload_2
    //   266: invokespecial 174	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   269: astore_3
    //   270: aload_0
    //   271: getfield 176	com/flurry/sdk/ar:j	Lcom/flurry/sdk/ar$b;
    //   274: ifnull +20 -> 294
    //   277: aload_0
    //   278: invokevirtual 178	com/flurry/sdk/ar:b	()Z
    //   281: ifne +13 -> 294
    //   284: aload_0
    //   285: getfield 176	com/flurry/sdk/ar:j	Lcom/flurry/sdk/ar$b;
    //   288: aload_3
    //   289: invokeinterface 180 2 0
    //   294: aload_3
    //   295: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   298: aload_2
    //   299: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   302: aload_0
    //   303: aload_0
    //   304: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   307: invokevirtual 187	java/net/HttpURLConnection:getResponseCode	()I
    //   310: putfield 62	com/flurry/sdk/ar:o	I
    //   313: aload_0
    //   314: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   317: invokevirtual 191	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   320: invokeinterface 197 1 0
    //   325: invokeinterface 130 1 0
    //   330: astore_2
    //   331: aload_2
    //   332: invokeinterface 136 1 0
    //   337: ifeq +80 -> 417
    //   340: aload_2
    //   341: invokeinterface 140 1 0
    //   346: checkcast 142	java/util/Map$Entry
    //   349: astore_3
    //   350: aload_3
    //   351: invokeinterface 150 1 0
    //   356: checkcast 199	java/util/List
    //   359: invokeinterface 200 1 0
    //   364: astore 5
    //   366: aload 5
    //   368: invokeinterface 136 1 0
    //   373: ifeq -42 -> 331
    //   376: aload 5
    //   378: invokeinterface 140 1 0
    //   383: checkcast 147	java/lang/String
    //   386: astore 6
    //   388: aload_0
    //   389: getfield 64	com/flurry/sdk/ar:p	Lcom/flurry/sdk/ad;
    //   392: aload_3
    //   393: invokeinterface 145 1 0
    //   398: aload 6
    //   400: invokevirtual 203	com/flurry/sdk/ad:a	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   403: goto -37 -> 366
    //   406: aload_3
    //   407: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   410: aload 4
    //   412: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   415: aload_2
    //   416: athrow
    //   417: getstatic 158	com/flurry/sdk/ar$a:b	Lcom/flurry/sdk/ar$a;
    //   420: aload_0
    //   421: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   424: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   427: ifne +23 -> 450
    //   430: getstatic 111	com/flurry/sdk/ar$a:c	Lcom/flurry/sdk/ar$a;
    //   433: aload_0
    //   434: getfield 100	com/flurry/sdk/ar:c	Lcom/flurry/sdk/ar$a;
    //   437: invokevirtual 115	com/flurry/sdk/ar$a:equals	(Ljava/lang/Object;)Z
    //   440: istore_1
    //   441: iload_1
    //   442: ifne +8 -> 450
    //   445: aload_0
    //   446: invokespecial 156	com/flurry/sdk/ar:i	()V
    //   449: return
    //   450: aload_0
    //   451: getfield 71	com/flurry/sdk/ar:m	Z
    //   454: istore_1
    //   455: iload_1
    //   456: ifeq +8 -> 464
    //   459: aload_0
    //   460: invokespecial 156	com/flurry/sdk/ar:i	()V
    //   463: return
    //   464: aload_0
    //   465: getfield 91	com/flurry/sdk/ar:k	Ljava/net/HttpURLConnection;
    //   468: invokevirtual 207	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   471: astore_2
    //   472: new 209	java/io/BufferedInputStream
    //   475: dup
    //   476: aload_2
    //   477: invokespecial 212	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   480: astore_3
    //   481: aload_0
    //   482: getfield 176	com/flurry/sdk/ar:j	Lcom/flurry/sdk/ar$b;
    //   485: ifnull +21 -> 506
    //   488: aload_0
    //   489: invokevirtual 178	com/flurry/sdk/ar:b	()Z
    //   492: ifne +14 -> 506
    //   495: aload_0
    //   496: getfield 176	com/flurry/sdk/ar:j	Lcom/flurry/sdk/ar$b;
    //   499: aload_0
    //   500: aload_3
    //   501: invokeinterface 215 3 0
    //   506: aload_3
    //   507: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   510: aload_2
    //   511: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   514: aload_0
    //   515: invokespecial 156	com/flurry/sdk/ar:i	()V
    //   518: return
    //   519: astore_2
    //   520: aconst_null
    //   521: astore_3
    //   522: aload_3
    //   523: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   526: aload 4
    //   528: invokestatic 183	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   531: aload_2
    //   532: athrow
    //   533: astore 5
    //   535: aconst_null
    //   536: astore_3
    //   537: aload_2
    //   538: astore 4
    //   540: aload 5
    //   542: astore_2
    //   543: goto -21 -> 522
    //   546: astore 5
    //   548: aload_2
    //   549: astore 4
    //   551: aload 5
    //   553: astore_2
    //   554: goto -32 -> 522
    //   557: astore 5
    //   559: aconst_null
    //   560: astore_3
    //   561: aload_2
    //   562: astore 4
    //   564: aload 5
    //   566: astore_2
    //   567: goto -161 -> 406
    //   570: astore 5
    //   572: aload_2
    //   573: astore 4
    //   575: aload 5
    //   577: astore_2
    //   578: goto -172 -> 406
    //   581: astore_2
    //   582: aconst_null
    //   583: astore_3
    //   584: aload 5
    //   586: astore 4
    //   588: goto -182 -> 406
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	591	0	this	ar
    //   228	228	1	bool	boolean
    //   36	107	2	localObject1	Object
    //   180	6	2	localObject2	Object
    //   260	251	2	localObject3	Object
    //   519	19	2	localObject4	Object
    //   542	36	2	localObject5	Object
    //   581	1	2	localObject6	Object
    //   151	433	3	localObject7	Object
    //   1	586	4	localObject8	Object
    //   4	373	5	localIterator	java.util.Iterator
    //   533	8	5	localObject9	Object
    //   546	6	5	localObject10	Object
    //   557	8	5	localObject11	Object
    //   570	15	5	localObject12	Object
    //   386	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   37	133	180	finally
    //   133	177	180	finally
    //   187	224	180	finally
    //   224	229	180	finally
    //   238	249	180	finally
    //   294	302	180	finally
    //   302	331	180	finally
    //   331	366	180	finally
    //   366	403	180	finally
    //   406	417	180	finally
    //   417	441	180	finally
    //   450	455	180	finally
    //   506	514	180	finally
    //   522	533	180	finally
    //   464	472	519	finally
    //   472	481	533	finally
    //   481	506	546	finally
    //   261	270	557	finally
    //   270	294	570	finally
    //   253	261	581	finally
  }
  
  private void h()
  {
    if (j == null) {}
    while (b()) {
      return;
    }
    j.a();
  }
  
  private void i()
  {
    if (l) {}
    do
    {
      return;
      l = true;
    } while (k == null);
    k.disconnect();
  }
  
  public void a()
  {
    try
    {
      String str = b;
      if (str == null) {
        return;
      }
      if (!ab)
      {
        am.a(3, a, "Network not available, aborting http request: " + b);
        return;
      }
      if ((c == null) || (a.a.equals(c))) {
        c = a.b;
      }
      g();
      am.a(4, a, "HTTP status: " + o + " for url: " + b);
      return;
    }
    catch (Exception localException)
    {
      am.a(4, a, "HTTP status: " + o + " for url: " + b);
      am.a(3, a, "Exception during http request: " + b, localException);
      n = localException;
      return;
    }
    finally
    {
      h();
    }
  }
  
  public final void a(a parama)
  {
    c = parama;
  }
  
  public final void a(b paramb)
  {
    j = paramb;
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    i.a(paramString1, paramString2);
  }
  
  public final boolean b()
  {
    synchronized (q)
    {
      boolean bool = m;
      return bool;
    }
  }
  
  public final boolean c()
  {
    return (o >= 200) && (o < 400);
  }
  
  public final int d()
  {
    return o;
  }
  
  public static enum a
  {
    private a() {}
    
    public final String toString()
    {
      switch (ar.1.a[ordinal()])
      {
      default: 
        return null;
      case 1: 
        return "POST";
      case 2: 
        return "PUT";
      case 3: 
        return "DELETE";
      case 4: 
        return "HEAD";
      }
      return "GET";
    }
  }
  
  public static abstract interface b
  {
    public abstract void a();
    
    public abstract void a(ar paramar, InputStream paramInputStream);
    
    public abstract void a(OutputStream paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */