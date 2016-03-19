package com.urbanairship.b;

import android.os.Build;
import android.os.Build.VERSION;
import com.urbanairship.j;
import com.urbanairship.p;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class a
{
  protected URL a;
  protected String b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected final Map<String, String> g;
  private long h = 0L;
  private boolean i = false;
  
  public a(String paramString, URL paramURL)
  {
    d = paramString;
    a = paramURL;
    g = new HashMap();
    paramURL = g;
    if (p.a().u() == 1) {}
    for (paramString = "amazon";; paramString = "android")
    {
      paramURL.put("User-Agent", String.format(Locale.US, "%s (%s; %s; UrbanAirshipLib-%s/%s; %s; %s)", new Object[] { p.b(), Build.MODEL, Build.VERSION.RELEASE, paramString, p.k(), p.a().l().a(), Locale.getDefault() }));
      return;
    }
  }
  
  private static String a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      for (;;)
      {
        String str = localBufferedReader.readLine();
        if (str == null) {
          break;
        }
        localStringBuilder.append(str).append("\n");
      }
      try
      {
        paramInputStream.close();
        localBufferedReader.close();
        throw ((Throwable)localObject);
        localBufferedReader.close();
        try
        {
          paramInputStream.close();
          localBufferedReader.close();
          return ((StringBuilder)localObject).toString();
        }
        catch (Exception paramInputStream)
        {
          for (;;)
          {
            j.a("Failed to close streams", paramInputStream);
          }
        }
      }
      catch (Exception paramInputStream)
      {
        for (;;)
        {
          j.a("Failed to close streams", paramInputStream);
        }
      }
    }
    finally {}
  }
  
  public final a a()
  {
    i = true;
    return this;
  }
  
  public final a a(long paramLong)
  {
    h = paramLong;
    return this;
  }
  
  public final a a(String paramString1, String paramString2)
  {
    b = paramString1;
    c = paramString2;
    return this;
  }
  
  public final a b(String paramString1, String paramString2)
  {
    e = paramString1;
    f = paramString2;
    return this;
  }
  
  /* Error */
  public final c b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 32	com/urbanairship/b/a:a	Ljava/net/URL;
    //   6: invokevirtual 162	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   9: checkcast 164	java/net/HttpURLConnection
    //   12: astore_2
    //   13: aload_2
    //   14: astore_1
    //   15: aload_2
    //   16: aload_0
    //   17: getfield 30	com/urbanairship/b/a:d	Ljava/lang/String;
    //   20: invokevirtual 168	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   23: aload_2
    //   24: astore_1
    //   25: aload_0
    //   26: getfield 151	com/urbanairship/b/a:e	Ljava/lang/String;
    //   29: ifnull +22 -> 51
    //   32: aload_2
    //   33: astore_1
    //   34: aload_2
    //   35: iconst_1
    //   36: invokevirtual 172	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   39: aload_2
    //   40: astore_1
    //   41: aload_2
    //   42: ldc -82
    //   44: aload_0
    //   45: getfield 153	com/urbanairship/b/a:f	Ljava/lang/String;
    //   48: invokevirtual 178	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   51: aload_2
    //   52: astore_1
    //   53: aload_2
    //   54: iconst_1
    //   55: invokevirtual 181	java/net/HttpURLConnection:setDoInput	(Z)V
    //   58: aload_2
    //   59: astore_1
    //   60: aload_2
    //   61: iconst_0
    //   62: invokevirtual 184	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   65: aload_2
    //   66: astore_1
    //   67: aload_2
    //   68: iconst_0
    //   69: invokevirtual 187	java/net/HttpURLConnection:setAllowUserInteraction	(Z)V
    //   72: aload_2
    //   73: astore_1
    //   74: aload_0
    //   75: getfield 26	com/urbanairship/b/a:h	J
    //   78: lconst_0
    //   79: lcmp
    //   80: ifle +13 -> 93
    //   83: aload_2
    //   84: astore_1
    //   85: aload_2
    //   86: aload_0
    //   87: getfield 26	com/urbanairship/b/a:h	J
    //   90: invokevirtual 191	java/net/HttpURLConnection:setIfModifiedSince	(J)V
    //   93: aload_2
    //   94: astore_1
    //   95: aload_0
    //   96: getfield 37	com/urbanairship/b/a:g	Ljava/util/Map;
    //   99: invokeinterface 195 1 0
    //   104: invokeinterface 201 1 0
    //   109: astore_3
    //   110: aload_2
    //   111: astore_1
    //   112: aload_3
    //   113: invokeinterface 207 1 0
    //   118: ifeq +83 -> 201
    //   121: aload_2
    //   122: astore_1
    //   123: aload_3
    //   124: invokeinterface 211 1 0
    //   129: checkcast 88	java/lang/String
    //   132: astore 4
    //   134: aload_2
    //   135: astore_1
    //   136: aload_2
    //   137: aload 4
    //   139: aload_0
    //   140: getfield 37	com/urbanairship/b/a:g	Ljava/util/Map;
    //   143: aload 4
    //   145: invokeinterface 215 2 0
    //   150: checkcast 88	java/lang/String
    //   153: invokevirtual 178	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   156: goto -46 -> 110
    //   159: astore_1
    //   160: aload_2
    //   161: astore_1
    //   162: new 116	java/lang/StringBuilder
    //   165: dup
    //   166: ldc -39
    //   168: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   171: aload_0
    //   172: getfield 32	com/urbanairship/b/a:a	Ljava/net/URL;
    //   175: invokevirtual 222	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   178: ldc -32
    //   180: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload_0
    //   184: getfield 30	com/urbanairship/b/a:d	Ljava/lang/String;
    //   187: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   190: pop
    //   191: aload_2
    //   192: ifnull +7 -> 199
    //   195: aload_2
    //   196: invokevirtual 227	java/net/HttpURLConnection:disconnect	()V
    //   199: aconst_null
    //   200: areturn
    //   201: aload_2
    //   202: astore_1
    //   203: aload_0
    //   204: getfield 147	com/urbanairship/b/a:b	Ljava/lang/String;
    //   207: invokestatic 232	com/urbanairship/d/h:a	(Ljava/lang/String;)Z
    //   210: ifne +78 -> 288
    //   213: aload_2
    //   214: astore_1
    //   215: aload_0
    //   216: getfield 149	com/urbanairship/b/a:c	Ljava/lang/String;
    //   219: invokestatic 232	com/urbanairship/d/h:a	(Ljava/lang/String;)Z
    //   222: ifne +66 -> 288
    //   225: aload_2
    //   226: astore_1
    //   227: new 116	java/lang/StringBuilder
    //   230: dup
    //   231: invokespecial 117	java/lang/StringBuilder:<init>	()V
    //   234: aload_0
    //   235: getfield 147	com/urbanairship/b/a:b	Ljava/lang/String;
    //   238: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: ldc -22
    //   243: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload_0
    //   247: getfield 149	com/urbanairship/b/a:c	Ljava/lang/String;
    //   250: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: astore_3
    //   257: aload_2
    //   258: astore_1
    //   259: aload_2
    //   260: ldc -20
    //   262: new 116	java/lang/StringBuilder
    //   265: dup
    //   266: ldc -18
    //   268: invokespecial 219	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   271: aload_3
    //   272: invokevirtual 242	java/lang/String:getBytes	()[B
    //   275: iconst_2
    //   276: invokestatic 248	android/util/Base64:encodeToString	([BI)Ljava/lang/String;
    //   279: invokevirtual 124	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 135	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokevirtual 178	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: aload_2
    //   289: astore_1
    //   290: aload_0
    //   291: getfield 151	com/urbanairship/b/a:e	Ljava/lang/String;
    //   294: ifnull +88 -> 382
    //   297: aload_2
    //   298: astore_1
    //   299: aload_0
    //   300: getfield 28	com/urbanairship/b/a:i	Z
    //   303: ifeq +145 -> 448
    //   306: aload_2
    //   307: astore_1
    //   308: aload_2
    //   309: ldc -6
    //   311: ldc -4
    //   313: invokevirtual 178	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   316: aload_2
    //   317: astore_1
    //   318: aload_2
    //   319: invokevirtual 256	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   322: astore_3
    //   323: aload_2
    //   324: astore_1
    //   325: new 258	java/util/zip/GZIPOutputStream
    //   328: dup
    //   329: aload_3
    //   330: invokespecial 261	java/util/zip/GZIPOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   333: astore 4
    //   335: aload_2
    //   336: astore_1
    //   337: new 263	java/io/OutputStreamWriter
    //   340: dup
    //   341: aload 4
    //   343: ldc_w 265
    //   346: invokespecial 268	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   349: astore 5
    //   351: aload_2
    //   352: astore_1
    //   353: aload 5
    //   355: aload_0
    //   356: getfield 151	com/urbanairship/b/a:e	Ljava/lang/String;
    //   359: invokevirtual 273	java/io/Writer:write	(Ljava/lang/String;)V
    //   362: aload_2
    //   363: astore_1
    //   364: aload 5
    //   366: invokevirtual 274	java/io/Writer:close	()V
    //   369: aload_2
    //   370: astore_1
    //   371: aload 4
    //   373: invokevirtual 275	java/util/zip/GZIPOutputStream:close	()V
    //   376: aload_2
    //   377: astore_1
    //   378: aload_3
    //   379: invokevirtual 278	java/io/OutputStream:close	()V
    //   382: aload_2
    //   383: astore_1
    //   384: new 280	com/urbanairship/b/c$a
    //   387: dup
    //   388: aload_2
    //   389: invokevirtual 283	java/net/HttpURLConnection:getResponseCode	()I
    //   392: invokespecial 286	com/urbanairship/b/c$a:<init>	(I)V
    //   395: aload_2
    //   396: invokevirtual 289	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
    //   399: invokevirtual 292	com/urbanairship/b/c$a:a	(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    //   402: aload_2
    //   403: invokevirtual 296	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   406: invokevirtual 299	com/urbanairship/b/c$a:a	(Ljava/util/Map;)Lcom/urbanairship/b/c$a;
    //   409: aload_2
    //   410: invokevirtual 303	java/net/HttpURLConnection:getLastModified	()J
    //   413: invokevirtual 306	com/urbanairship/b/c$a:a	(J)Lcom/urbanairship/b/c$a;
    //   416: astore_3
    //   417: aload_2
    //   418: astore_1
    //   419: aload_3
    //   420: aload_2
    //   421: invokevirtual 310	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   424: invokestatic 312	com/urbanairship/b/a:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   427: invokevirtual 314	com/urbanairship/b/c$a:b	(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    //   430: pop
    //   431: aload_2
    //   432: astore_1
    //   433: aload_3
    //   434: invokevirtual 316	com/urbanairship/b/c$a:a	()Lcom/urbanairship/b/c;
    //   437: astore_3
    //   438: aload_2
    //   439: ifnull +7 -> 446
    //   442: aload_2
    //   443: invokevirtual 227	java/net/HttpURLConnection:disconnect	()V
    //   446: aload_3
    //   447: areturn
    //   448: aload_2
    //   449: astore_1
    //   450: aload_2
    //   451: invokevirtual 256	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   454: astore_3
    //   455: aload_2
    //   456: astore_1
    //   457: new 263	java/io/OutputStreamWriter
    //   460: dup
    //   461: aload_3
    //   462: ldc_w 265
    //   465: invokespecial 268	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   468: astore 4
    //   470: aload_2
    //   471: astore_1
    //   472: aload 4
    //   474: aload_0
    //   475: getfield 151	com/urbanairship/b/a:e	Ljava/lang/String;
    //   478: invokevirtual 273	java/io/Writer:write	(Ljava/lang/String;)V
    //   481: aload_2
    //   482: astore_1
    //   483: aload 4
    //   485: invokevirtual 274	java/io/Writer:close	()V
    //   488: aload_2
    //   489: astore_1
    //   490: aload_3
    //   491: invokevirtual 278	java/io/OutputStream:close	()V
    //   494: goto -112 -> 382
    //   497: astore_2
    //   498: aload_1
    //   499: ifnull +7 -> 506
    //   502: aload_1
    //   503: invokevirtual 227	java/net/HttpURLConnection:disconnect	()V
    //   506: aload_2
    //   507: athrow
    //   508: astore_1
    //   509: aload_2
    //   510: astore_1
    //   511: aload_3
    //   512: aload_2
    //   513: invokevirtual 319	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   516: invokestatic 312	com/urbanairship/b/a:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   519: invokevirtual 314	com/urbanairship/b/c$a:b	(Ljava/lang/String;)Lcom/urbanairship/b/c$a;
    //   522: pop
    //   523: goto -92 -> 431
    //   526: astore_2
    //   527: goto -29 -> 498
    //   530: astore_1
    //   531: aconst_null
    //   532: astore_2
    //   533: goto -373 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	536	0	this	a
    //   1	135	1	localObject1	Object
    //   159	1	1	localException1	Exception
    //   161	342	1	localObject2	Object
    //   508	1	1	localIOException	java.io.IOException
    //   510	1	1	localObject3	Object
    //   530	1	1	localException2	Exception
    //   12	477	2	localHttpURLConnection	java.net.HttpURLConnection
    //   497	16	2	localObject4	Object
    //   526	1	2	localObject5	Object
    //   532	1	2	localObject6	Object
    //   109	403	3	localObject7	Object
    //   132	352	4	localObject8	Object
    //   349	16	5	localOutputStreamWriter	java.io.OutputStreamWriter
    // Exception table:
    //   from	to	target	type
    //   15	23	159	java/lang/Exception
    //   25	32	159	java/lang/Exception
    //   34	39	159	java/lang/Exception
    //   41	51	159	java/lang/Exception
    //   53	58	159	java/lang/Exception
    //   60	65	159	java/lang/Exception
    //   67	72	159	java/lang/Exception
    //   74	83	159	java/lang/Exception
    //   85	93	159	java/lang/Exception
    //   95	110	159	java/lang/Exception
    //   112	121	159	java/lang/Exception
    //   123	134	159	java/lang/Exception
    //   136	156	159	java/lang/Exception
    //   203	213	159	java/lang/Exception
    //   215	225	159	java/lang/Exception
    //   227	257	159	java/lang/Exception
    //   259	288	159	java/lang/Exception
    //   290	297	159	java/lang/Exception
    //   299	306	159	java/lang/Exception
    //   308	316	159	java/lang/Exception
    //   318	323	159	java/lang/Exception
    //   325	335	159	java/lang/Exception
    //   337	351	159	java/lang/Exception
    //   353	362	159	java/lang/Exception
    //   364	369	159	java/lang/Exception
    //   371	376	159	java/lang/Exception
    //   378	382	159	java/lang/Exception
    //   384	417	159	java/lang/Exception
    //   419	431	159	java/lang/Exception
    //   433	438	159	java/lang/Exception
    //   450	455	159	java/lang/Exception
    //   457	470	159	java/lang/Exception
    //   472	481	159	java/lang/Exception
    //   483	488	159	java/lang/Exception
    //   490	494	159	java/lang/Exception
    //   511	523	159	java/lang/Exception
    //   15	23	497	finally
    //   25	32	497	finally
    //   34	39	497	finally
    //   41	51	497	finally
    //   53	58	497	finally
    //   60	65	497	finally
    //   67	72	497	finally
    //   74	83	497	finally
    //   85	93	497	finally
    //   95	110	497	finally
    //   112	121	497	finally
    //   123	134	497	finally
    //   136	156	497	finally
    //   162	191	497	finally
    //   203	213	497	finally
    //   215	225	497	finally
    //   227	257	497	finally
    //   259	288	497	finally
    //   290	297	497	finally
    //   299	306	497	finally
    //   308	316	497	finally
    //   318	323	497	finally
    //   325	335	497	finally
    //   337	351	497	finally
    //   353	362	497	finally
    //   364	369	497	finally
    //   371	376	497	finally
    //   378	382	497	finally
    //   384	417	497	finally
    //   419	431	497	finally
    //   433	438	497	finally
    //   450	455	497	finally
    //   457	470	497	finally
    //   472	481	497	finally
    //   483	488	497	finally
    //   490	494	497	finally
    //   511	523	497	finally
    //   419	431	508	java/io/IOException
    //   2	13	526	finally
    //   2	13	530	java/lang/Exception
  }
  
  public final a c(String paramString1, String paramString2)
  {
    if (paramString2 == null)
    {
      g.remove(paramString1);
      return this;
    }
    g.put(paramString1, paramString2);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */