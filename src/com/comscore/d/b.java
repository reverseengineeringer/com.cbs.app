package com.comscore.d;

import android.content.Context;
import android.os.Build.VERSION;
import com.comscore.utils.d;
import com.comscore.utils.i;
import com.comscore.utils.j;
import com.comscore.utils.l;
import com.comscore.utils.m;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;

public final class b
{
  public static final boolean a;
  protected URL b;
  protected Proxy c;
  private com.comscore.c.b d;
  private com.comscore.a.b e;
  private l f;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if ((i < 11) || (i > 13)) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public b(com.comscore.a.b paramb, com.comscore.c.b paramb1)
  {
    e = paramb;
    f = paramb.g();
    d = paramb1;
    b = a(d.c());
  }
  
  private HttpURLConnection a(URL paramURL)
  {
    if (c != null) {}
    for (paramURL = (HttpURLConnection)paramURL.openConnection(c);; paramURL = (HttpURLConnection)paramURL.openConnection())
    {
      paramURL.setRequestProperty("Connection", "Close");
      return paramURL;
    }
  }
  
  private URL a(String paramString)
  {
    e();
    String str = paramString.concat(d.a(e.R()));
    int i;
    if ((str.length() > 4096) && (str.indexOf("&") > 0)) {
      i = str.substring(0, 4088).lastIndexOf("&");
    }
    for (;;)
    {
      try
      {
        paramString = URLEncoder.encode(str.substring(i + 1), "UTF-8").replace("+", "%20");
        paramString = str.substring(0, i) + "&ns_cut=" + paramString;
        if (paramString.length() > 4096) {
          paramString = paramString.substring(0, 4096);
        }
      }
      catch (UnsupportedEncodingException paramString)
      {
        try
        {
          paramString = new URL(paramString);
          return paramString;
        }
        catch (MalformedURLException paramString)
        {
          return null;
        }
        paramString = paramString;
        paramString = "0";
        continue;
      }
      continue;
      paramString = str;
    }
  }
  
  private boolean b()
  {
    m localm = e.O();
    if ((localm == m.a) || ((localm == m.c) && (d.b(e.A()))) || (localm == m.d)) {
      e.f().c();
    }
    boolean bool = c();
    if (!bool) {
      d();
    }
    return bool;
  }
  
  /* Error */
  private boolean c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload 7
    //   5: astore 8
    //   7: aload_0
    //   8: getfield 53	com/comscore/d/b:b	Ljava/net/URL;
    //   11: astore 9
    //   13: aload 7
    //   15: astore 8
    //   17: getstatic 26	com/comscore/d/b:a	Z
    //   20: ifeq +215 -> 235
    //   23: aload 7
    //   25: astore 8
    //   27: aload_0
    //   28: aload 9
    //   30: invokespecial 185	com/comscore/d/b:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   33: astore 7
    //   35: aload 7
    //   37: astore 9
    //   39: aload 7
    //   41: astore 8
    //   43: aload 7
    //   45: invokevirtual 188	java/net/HttpURLConnection:getResponseCode	()I
    //   48: istore_1
    //   49: aload 7
    //   51: astore 9
    //   53: aload 7
    //   55: astore 8
    //   57: aload 7
    //   59: ldc -66
    //   61: invokevirtual 193	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   64: astore 10
    //   66: aload 7
    //   68: astore 9
    //   70: aload 7
    //   72: astore 8
    //   74: aload 7
    //   76: ldc -61
    //   78: invokevirtual 193	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   81: astore 11
    //   83: iload_1
    //   84: sipush 200
    //   87: if_icmpne +69 -> 156
    //   90: aload 7
    //   92: astore 9
    //   94: aload 7
    //   96: astore 8
    //   98: aload 10
    //   100: invokestatic 200	com/comscore/utils/n:f	(Ljava/lang/String;)Z
    //   103: ifeq +53 -> 156
    //   106: aload 7
    //   108: astore 9
    //   110: aload 7
    //   112: astore 8
    //   114: aload 10
    //   116: ldc -54
    //   118: invokevirtual 105	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   121: ifne +35 -> 156
    //   124: aload 7
    //   126: astore 9
    //   128: aload 7
    //   130: astore 8
    //   132: aload 11
    //   134: invokestatic 200	com/comscore/utils/n:f	(Ljava/lang/String;)Z
    //   137: ifeq +19 -> 156
    //   140: aload 7
    //   142: astore 9
    //   144: aload 7
    //   146: astore 8
    //   148: aload 11
    //   150: invokestatic 207	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   153: ifgt +44 -> 197
    //   156: iload_1
    //   157: sipush 204
    //   160: if_icmpne +488 -> 648
    //   163: aload 7
    //   165: astore 9
    //   167: aload 7
    //   169: astore 8
    //   171: aload 11
    //   173: invokestatic 200	com/comscore/utils/n:f	(Ljava/lang/String;)Z
    //   176: ifeq +472 -> 648
    //   179: aload 7
    //   181: astore 9
    //   183: aload 7
    //   185: astore 8
    //   187: aload 11
    //   189: invokestatic 207	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   192: istore_1
    //   193: iload_1
    //   194: ifne +454 -> 648
    //   197: aload 7
    //   199: astore 9
    //   201: aload_0
    //   202: getfield 33	com/comscore/d/b:e	Lcom/comscore/a/b;
    //   205: invokevirtual 211	com/comscore/a/b:j	()Lcom/comscore/b/e;
    //   208: invokevirtual 215	com/comscore/b/e:a	()V
    //   211: iconst_1
    //   212: istore 5
    //   214: iload 5
    //   216: istore 6
    //   218: aload 7
    //   220: ifnull +12 -> 232
    //   223: aload 7
    //   225: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
    //   228: iload 5
    //   230: istore 6
    //   232: iload 6
    //   234: ireturn
    //   235: iconst_0
    //   236: istore_2
    //   237: iconst_0
    //   238: istore_1
    //   239: aconst_null
    //   240: astore 7
    //   242: aload 9
    //   244: astore 8
    //   246: aload 8
    //   248: ifnull +406 -> 654
    //   251: iload_2
    //   252: iconst_5
    //   253: if_icmpge +401 -> 654
    //   256: aload_0
    //   257: aload 8
    //   259: invokespecial 185	com/comscore/d/b:a	(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    //   262: astore 9
    //   264: aload 9
    //   266: astore 7
    //   268: aload 7
    //   270: iconst_0
    //   271: invokevirtual 222	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   274: aload 7
    //   276: invokevirtual 188	java/net/HttpURLConnection:getResponseCode	()I
    //   279: istore 4
    //   281: aload 7
    //   283: ldc -32
    //   285: invokevirtual 193	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   288: astore 9
    //   290: iload 4
    //   292: tableswitch	default:+370->662, 300:+40->332, 301:+40->332, 302:+40->332, 303:+40->332, 304:+370->662, 305:+40->332
    //   332: aload 9
    //   334: ifnull +328 -> 662
    //   337: iload 4
    //   339: sipush 305
    //   342: if_icmpne +201 -> 543
    //   345: aload 9
    //   347: new 133	java/lang/StringBuilder
    //   350: dup
    //   351: invokespecial 134	java/lang/StringBuilder:<init>	()V
    //   354: aload 8
    //   356: invokevirtual 227	java/net/URL:getProtocol	()Ljava/lang/String;
    //   359: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: bipush 58
    //   364: invokevirtual 230	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   367: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   370: invokevirtual 233	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   373: ifeq +284 -> 657
    //   376: aload 8
    //   378: invokevirtual 227	java/net/URL:getProtocol	()Ljava/lang/String;
    //   381: invokevirtual 99	java/lang/String:length	()I
    //   384: iconst_1
    //   385: iadd
    //   386: istore_1
    //   387: iload_1
    //   388: istore_3
    //   389: aload 9
    //   391: ldc -21
    //   393: iload_1
    //   394: invokevirtual 238	java/lang/String:startsWith	(Ljava/lang/String;I)Z
    //   397: ifeq +7 -> 404
    //   400: iload_1
    //   401: iconst_2
    //   402: iadd
    //   403: istore_3
    //   404: aload 9
    //   406: iload_3
    //   407: invokevirtual 115	java/lang/String:substring	(I)Ljava/lang/String;
    //   410: astore 9
    //   412: aload 9
    //   414: bipush 58
    //   416: invokevirtual 241	java/lang/String:indexOf	(I)I
    //   419: istore_1
    //   420: iload_1
    //   421: iconst_m1
    //   422: if_icmpeq +115 -> 537
    //   425: aload 9
    //   427: iconst_0
    //   428: iload_1
    //   429: invokevirtual 109	java/lang/String:substring	(II)Ljava/lang/String;
    //   432: astore 10
    //   434: aload 9
    //   436: iload_1
    //   437: iconst_1
    //   438: iadd
    //   439: invokevirtual 115	java/lang/String:substring	(I)Ljava/lang/String;
    //   442: invokestatic 207	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   445: istore_1
    //   446: aload 10
    //   448: astore 9
    //   450: aload_0
    //   451: new 243	java/net/Proxy
    //   454: dup
    //   455: getstatic 249	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   458: new 251	java/net/InetSocketAddress
    //   461: dup
    //   462: aload 9
    //   464: iload_1
    //   465: invokespecial 254	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   468: invokespecial 257	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   471: putfield 56	com/comscore/d/b:c	Ljava/net/Proxy;
    //   474: goto +191 -> 665
    //   477: astore 10
    //   479: iconst_0
    //   480: istore 5
    //   482: aload 7
    //   484: astore 9
    //   486: aload_0
    //   487: new 133	java/lang/StringBuilder
    //   490: dup
    //   491: ldc_w 259
    //   494: invokespecial 260	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   497: aload 10
    //   499: invokevirtual 263	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   502: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   505: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   508: invokestatic 268	com/comscore/utils/b:b	(Ljava/lang/Object;Ljava/lang/String;)V
    //   511: aload 7
    //   513: astore 9
    //   515: aload 10
    //   517: invokestatic 271	com/comscore/utils/b:a	(Ljava/lang/Exception;)V
    //   520: iload 5
    //   522: istore 6
    //   524: aload 7
    //   526: ifnull -294 -> 232
    //   529: aload 7
    //   531: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
    //   534: iload 5
    //   536: ireturn
    //   537: bipush 80
    //   539: istore_1
    //   540: goto -90 -> 450
    //   543: new 58	java/net/URL
    //   546: dup
    //   547: aload 8
    //   549: aload 9
    //   551: invokespecial 274	java/net/URL:<init>	(Ljava/net/URL;Ljava/lang/String;)V
    //   554: astore 9
    //   556: aload 8
    //   558: invokevirtual 227	java/net/URL:getProtocol	()Ljava/lang/String;
    //   561: aload 9
    //   563: invokevirtual 227	java/net/URL:getProtocol	()Ljava/lang/String;
    //   566: invokevirtual 278	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   569: istore 5
    //   571: iload 5
    //   573: ifeq +89 -> 662
    //   576: aload 9
    //   578: astore 8
    //   580: goto +85 -> 665
    //   583: astore 8
    //   585: aconst_null
    //   586: astore 7
    //   588: aload 7
    //   590: ifnull +8 -> 598
    //   593: aload 7
    //   595: invokevirtual 218	java/net/HttpURLConnection:disconnect	()V
    //   598: aload 8
    //   600: athrow
    //   601: astore 8
    //   603: aload 9
    //   605: astore 7
    //   607: goto -19 -> 588
    //   610: astore 8
    //   612: goto -24 -> 588
    //   615: astore 8
    //   617: goto -29 -> 588
    //   620: astore 10
    //   622: iconst_0
    //   623: istore 5
    //   625: aload 8
    //   627: astore 7
    //   629: goto -147 -> 482
    //   632: astore 10
    //   634: iconst_0
    //   635: istore 5
    //   637: goto -155 -> 482
    //   640: astore 10
    //   642: iconst_1
    //   643: istore 5
    //   645: goto -163 -> 482
    //   648: iconst_0
    //   649: istore 5
    //   651: goto -437 -> 214
    //   654: goto -605 -> 49
    //   657: iconst_0
    //   658: istore_1
    //   659: goto -272 -> 387
    //   662: aconst_null
    //   663: astore 8
    //   665: iload_2
    //   666: iconst_1
    //   667: iadd
    //   668: istore_2
    //   669: iload 4
    //   671: istore_1
    //   672: goto -426 -> 246
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	675	0	this	b
    //   48	624	1	i	int
    //   236	433	2	j	int
    //   388	19	3	k	int
    //   279	391	4	m	int
    //   212	438	5	bool1	boolean
    //   216	307	6	bool2	boolean
    //   1	627	7	localObject1	Object
    //   5	574	8	localObject2	Object
    //   583	16	8	localObject3	Object
    //   601	1	8	localObject4	Object
    //   610	1	8	localObject5	Object
    //   615	11	8	localObject6	Object
    //   663	1	8	localObject7	Object
    //   11	593	9	localObject8	Object
    //   64	383	10	str1	String
    //   477	39	10	localException1	Exception
    //   620	1	10	localException2	Exception
    //   632	1	10	localException3	Exception
    //   640	1	10	localException4	Exception
    //   81	107	11	str2	String
    // Exception table:
    //   from	to	target	type
    //   268	290	477	java/lang/Exception
    //   345	387	477	java/lang/Exception
    //   389	400	477	java/lang/Exception
    //   404	420	477	java/lang/Exception
    //   425	446	477	java/lang/Exception
    //   450	474	477	java/lang/Exception
    //   543	571	477	java/lang/Exception
    //   7	13	583	finally
    //   17	23	583	finally
    //   27	35	583	finally
    //   43	49	601	finally
    //   57	66	601	finally
    //   74	83	601	finally
    //   98	106	601	finally
    //   114	124	601	finally
    //   132	140	601	finally
    //   148	156	601	finally
    //   171	179	601	finally
    //   187	193	601	finally
    //   201	211	601	finally
    //   486	511	601	finally
    //   515	520	601	finally
    //   268	290	610	finally
    //   345	387	610	finally
    //   389	400	610	finally
    //   404	420	610	finally
    //   425	446	610	finally
    //   450	474	610	finally
    //   543	571	610	finally
    //   256	264	615	finally
    //   7	13	620	java/lang/Exception
    //   17	23	620	java/lang/Exception
    //   27	35	620	java/lang/Exception
    //   43	49	620	java/lang/Exception
    //   57	66	620	java/lang/Exception
    //   74	83	620	java/lang/Exception
    //   98	106	620	java/lang/Exception
    //   114	124	620	java/lang/Exception
    //   132	140	620	java/lang/Exception
    //   148	156	620	java/lang/Exception
    //   171	179	620	java/lang/Exception
    //   187	193	620	java/lang/Exception
    //   256	264	632	java/lang/Exception
    //   201	211	640	java/lang/Exception
  }
  
  private void d()
  {
    com.comscore.utils.b.b(this, "Measurement was not transmitted: " + d.a(e.R()));
    e.f().a(d, false);
  }
  
  private Boolean e()
  {
    try
    {
      Object localObject = e.A();
      boolean bool = true;
      if (d.b()) {
        localObject = "emu";
      }
      for (;;)
      {
        d.a("ns_radio", (String)localObject);
        return Boolean.valueOf(bool);
        if (d.b((Context)localObject))
        {
          localObject = "wifi";
        }
        else if (d.c((Context)localObject))
        {
          localObject = "wwan";
        }
        else if (d.e((Context)localObject))
        {
          localObject = "bth";
        }
        else if (d.d((Context)localObject))
        {
          localObject = "eth";
        }
        else
        {
          localObject = "unknown";
          bool = false;
        }
      }
      return Boolean.valueOf(false);
    }
    catch (NullPointerException localNullPointerException) {}
  }
  
  public final boolean a()
  {
    Context localContext = e.A();
    boolean bool = j.a(localContext, "android.permission.ACCESS_NETWORK_STATE").booleanValue();
    m localm = e.N();
    f.a("lastMeasurementProcessedTimestamp", String.valueOf(System.currentTimeMillis()));
    switch (c.a[localm.ordinal()])
    {
    default: 
      return false;
    case 1: 
      d();
      return false;
    case 2: 
      d();
      return false;
    case 3: 
      if ((!bool) || (e().booleanValue())) {
        return b();
      }
      d();
      return false;
    case 4: 
      if ((!bool) || (d.b()) || (d.b(localContext)) || (d.d(localContext))) {
        return b();
      }
      d();
      return false;
    }
    if ((!bool) || (d.b()) || (d.b(localContext)) || (d.f(localContext))) {
      return b();
    }
    d();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.comscore.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */