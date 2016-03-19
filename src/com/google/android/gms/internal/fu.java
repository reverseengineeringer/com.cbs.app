package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.j.a;
import com.google.android.gms.ads.internal.request.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class fu
  extends j.a
{
  private static final Object a = new Object();
  private static fu b;
  private final Context c;
  private final ft d;
  private final aq e;
  private final cx f;
  
  private fu(Context paramContext, aq paramaq, ft paramft)
  {
    c = paramContext;
    d = paramft;
    e = paramaq;
    if (paramContext.getApplicationContext() != null) {
      paramContext = paramContext.getApplicationContext();
    }
    for (;;)
    {
      f = new cx(paramContext, new VersionInfoParcel(), paramaq.a(), new fu.5(this), new cx.c());
      return;
    }
  }
  
  private static AdResponseParcel a(Context paramContext, cx paramcx, aq paramaq, ft paramft, AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    b.a(3);
    ax.a(paramContext);
    Object localObject1 = ax.G;
    bg localbg = new bg(((Boolean)o.n().a((at)localObject1)).booleanValue(), "load_ad", d.b);
    if ((a > 10) && (B != -1L)) {
      localbg.a(localbg.a(B), new String[] { "cts" });
    }
    be localbe = localbg.a();
    Object localObject2 = o.k().a(paramContext);
    if (m == -1)
    {
      b.a(3);
      return new AdResponseParcel(2);
    }
    if (a >= 7) {}
    fw localfw;
    for (localObject1 = w;; localObject1 = UUID.randomUUID().toString())
    {
      localfw = new fw((String)localObject1, f.packageName);
      if (c.c == null) {
        break;
      }
      localObject3 = c.c.getString("_ad");
      if (localObject3 == null) {
        break;
      }
      return fv.a(paramContext, paramAdRequestInfoParcel, (String)localObject3);
    }
    Object localObject3 = g.packageName;
    localObject3 = b.a(paramAdRequestInfoParcel);
    localObject2 = fv.a(paramContext, paramAdRequestInfoParcel, (fz)localObject2, null, paramaq, null, e.a(h), (List)localObject3);
    if (a < 7) {}
    try
    {
      ((JSONObject)localObject2).put("request_id", localObject1);
      if (localObject2 == null) {
        return new AdResponseParcel(0);
      }
      localObject1 = ((JSONObject)localObject2).toString();
      localbg.a(localbe, new String[] { "arc" });
      localObject2 = localbg.a();
      localObject3 = ax.c;
      if (((Boolean)o.n().a((at)localObject3)).booleanValue()) {
        gw.a.post(new fu.1(paramcx, localfw, localbg, (be)localObject2, (String)localObject1));
      }
      for (;;)
      {
        try
        {
          paramcx = (fy)localfw.a().get(10L, TimeUnit.SECONDS);
          if (paramcx != null) {
            continue;
          }
          paramContext = new AdResponseParcel(0);
          return paramContext;
        }
        catch (Exception paramContext)
        {
          paramContext = new AdResponseParcel(0);
          return paramContext;
          if (paramcx.a() == -2) {
            continue;
          }
          paramContext = new AdResponseParcel(paramcx.a());
          return paramContext;
          if (localbg.e() == null) {
            continue;
          }
          localbg.a(localbg.e(), new String[] { "rur" });
          if (!paramcx.f()) {
            continue;
          }
          paramaq = g.packageName;
          paramContext = a(paramAdRequestInfoParcel, paramContext, k.b, paramcx.d(), null, null, paramcx, localbg, paramft);
          if (x != 1) {
            continue;
          }
          paramcx = g.packageName;
          localbg.a(localbe, new String[] { "tts" });
          z = localbg.c();
          return paramContext;
        }
        finally
        {
          gw.a.post(new fu.3(localfw));
        }
        gw.a.post(new fu.2(paramContext, paramAdRequestInfoParcel, localfw, localbg, (be)localObject2, (String)localObject1, paramaq));
      }
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  public static AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, fy paramfy, bg parambg, ft paramft)
  {
    // Byte code:
    //   0: aload 7
    //   2: ifnull +307 -> 309
    //   5: aload 7
    //   7: invokevirtual 139	com/google/android/gms/internal/bg:a	()Lcom/google/android/gms/internal/be;
    //   10: astore 4
    //   12: new 324	com/google/android/gms/internal/fx
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 327	com/google/android/gms/internal/fx:<init>	(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   20: astore 13
    //   22: new 329	java/lang/StringBuilder
    //   25: dup
    //   26: ldc_w 331
    //   29: invokespecial 334	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_3
    //   33: invokevirtual 338	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: pop
    //   37: iconst_3
    //   38: invokestatic 74	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   41: pop
    //   42: new 340	java/net/URL
    //   45: dup
    //   46: aload_3
    //   47: invokespecial 341	java/net/URL:<init>	(Ljava/lang/String;)V
    //   50: astore_0
    //   51: invokestatic 345	com/google/android/gms/ads/internal/o:i	()Lcom/google/android/gms/internal/ju;
    //   54: invokeinterface 350 1 0
    //   59: lstore 11
    //   61: iconst_0
    //   62: istore 9
    //   64: aload_0
    //   65: invokevirtual 354	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   68: checkcast 356	java/net/HttpURLConnection
    //   71: astore 5
    //   73: invokestatic 359	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   76: aload_1
    //   77: aload_2
    //   78: iconst_0
    //   79: aload 5
    //   81: invokevirtual 362	com/google/android/gms/internal/gw:a	(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    //   84: aconst_null
    //   85: invokestatic 368	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   88: ifne +12 -> 100
    //   91: aload 5
    //   93: ldc_w 370
    //   96: aconst_null
    //   97: invokevirtual 373	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: aconst_null
    //   101: invokestatic 368	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   104: ifne +28 -> 132
    //   107: aload 5
    //   109: ldc_w 375
    //   112: new 329	java/lang/StringBuilder
    //   115: dup
    //   116: ldc_w 377
    //   119: invokespecial 334	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: aconst_null
    //   123: invokevirtual 338	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 378	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokevirtual 373	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload 6
    //   134: ifnull +61 -> 195
    //   137: aload 6
    //   139: invokevirtual 379	com/google/android/gms/internal/fy:c	()Ljava/lang/String;
    //   142: invokestatic 368	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   145: ifne +50 -> 195
    //   148: aload 5
    //   150: iconst_1
    //   151: invokevirtual 383	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   154: aload 6
    //   156: invokevirtual 379	com/google/android/gms/internal/fy:c	()Ljava/lang/String;
    //   159: invokevirtual 387	java/lang/String:getBytes	()[B
    //   162: astore 14
    //   164: aload 5
    //   166: aload 14
    //   168: arraylength
    //   169: invokevirtual 390	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   172: new 392	java/io/BufferedOutputStream
    //   175: dup
    //   176: aload 5
    //   178: invokevirtual 396	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   181: invokespecial 399	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   184: astore_3
    //   185: aload_3
    //   186: aload 14
    //   188: invokevirtual 403	java/io/BufferedOutputStream:write	([B)V
    //   191: aload_3
    //   192: invokestatic 408	com/google/android/gms/internal/jx:a	(Ljava/io/Closeable;)V
    //   195: aload 5
    //   197: invokevirtual 411	java/net/HttpURLConnection:getResponseCode	()I
    //   200: istore 10
    //   202: aload 5
    //   204: invokevirtual 415	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   207: astore_3
    //   208: iload 10
    //   210: sipush 200
    //   213: if_icmplt +161 -> 374
    //   216: iload 10
    //   218: sipush 300
    //   221: if_icmpge +153 -> 374
    //   224: aload_0
    //   225: invokevirtual 416	java/net/URL:toString	()Ljava/lang/String;
    //   228: astore_0
    //   229: new 418	java/io/InputStreamReader
    //   232: dup
    //   233: aload 5
    //   235: invokevirtual 422	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   238: invokespecial 425	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   241: astore_1
    //   242: invokestatic 359	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   245: pop
    //   246: aload_1
    //   247: invokestatic 428	com/google/android/gms/internal/gw:a	(Ljava/io/InputStreamReader;)Ljava/lang/String;
    //   250: astore_2
    //   251: aload_1
    //   252: invokestatic 408	com/google/android/gms/internal/jx:a	(Ljava/io/Closeable;)V
    //   255: aload_0
    //   256: aload_3
    //   257: aload_2
    //   258: iload 10
    //   260: invokestatic 431	com/google/android/gms/internal/fu:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    //   263: aload 13
    //   265: aload_0
    //   266: aload_3
    //   267: aload_2
    //   268: invokevirtual 434	com/google/android/gms/internal/fx:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    //   271: aload 7
    //   273: ifnull +21 -> 294
    //   276: aload 7
    //   278: aload 4
    //   280: iconst_1
    //   281: anewarray 131	java/lang/String
    //   284: dup
    //   285: iconst_0
    //   286: ldc_w 436
    //   289: aastore
    //   290: invokevirtual 136	com/google/android/gms/internal/bg:a	(Lcom/google/android/gms/internal/be;[Ljava/lang/String;)Z
    //   293: pop
    //   294: aload 13
    //   296: lload 11
    //   298: invokevirtual 439	com/google/android/gms/internal/fx:a	(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   301: astore_0
    //   302: aload 5
    //   304: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   307: aload_0
    //   308: areturn
    //   309: aconst_null
    //   310: astore 4
    //   312: goto -300 -> 12
    //   315: astore_0
    //   316: aconst_null
    //   317: astore_1
    //   318: aload_1
    //   319: invokestatic 408	com/google/android/gms/internal/jx:a	(Ljava/io/Closeable;)V
    //   322: aload_0
    //   323: athrow
    //   324: astore_0
    //   325: aload 5
    //   327: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   330: aload_0
    //   331: athrow
    //   332: astore_0
    //   333: new 329	java/lang/StringBuilder
    //   336: dup
    //   337: ldc_w 444
    //   340: invokespecial 334	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   343: aload_0
    //   344: invokevirtual 447	java/io/IOException:getMessage	()Ljava/lang/String;
    //   347: invokevirtual 338	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: pop
    //   351: iconst_5
    //   352: invokestatic 74	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   355: pop
    //   356: new 155	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   359: dup
    //   360: iconst_2
    //   361: invokespecial 158	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   364: areturn
    //   365: astore_0
    //   366: aconst_null
    //   367: astore_1
    //   368: aload_1
    //   369: invokestatic 408	com/google/android/gms/internal/jx:a	(Ljava/io/Closeable;)V
    //   372: aload_0
    //   373: athrow
    //   374: aload_0
    //   375: invokevirtual 416	java/net/URL:toString	()Ljava/lang/String;
    //   378: aload_3
    //   379: aconst_null
    //   380: iload 10
    //   382: invokestatic 431	com/google/android/gms/internal/fu:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    //   385: iload 10
    //   387: sipush 300
    //   390: if_icmplt +90 -> 480
    //   393: iload 10
    //   395: sipush 400
    //   398: if_icmpge +82 -> 480
    //   401: aload 5
    //   403: ldc_w 449
    //   406: invokevirtual 452	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   409: astore_0
    //   410: aload_0
    //   411: invokestatic 368	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   414: ifeq +24 -> 438
    //   417: iconst_5
    //   418: invokestatic 74	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   421: pop
    //   422: new 155	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   425: dup
    //   426: iconst_0
    //   427: invokespecial 158	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   430: astore_0
    //   431: aload 5
    //   433: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   436: aload_0
    //   437: areturn
    //   438: new 340	java/net/URL
    //   441: dup
    //   442: aload_0
    //   443: invokespecial 341	java/net/URL:<init>	(Ljava/lang/String;)V
    //   446: astore_0
    //   447: iload 9
    //   449: iconst_1
    //   450: iadd
    //   451: istore 9
    //   453: iload 9
    //   455: iconst_5
    //   456: if_icmple +61 -> 517
    //   459: iconst_5
    //   460: invokestatic 74	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   463: pop
    //   464: new 155	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   467: dup
    //   468: iconst_0
    //   469: invokespecial 158	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   472: astore_0
    //   473: aload 5
    //   475: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   478: aload_0
    //   479: areturn
    //   480: new 329	java/lang/StringBuilder
    //   483: dup
    //   484: ldc_w 454
    //   487: invokespecial 334	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   490: iload 10
    //   492: invokevirtual 457	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   495: pop
    //   496: iconst_5
    //   497: invokestatic 74	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   500: pop
    //   501: new 155	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   504: dup
    //   505: iconst_0
    //   506: invokespecial 158	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   509: astore_0
    //   510: aload 5
    //   512: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   515: aload_0
    //   516: areturn
    //   517: aload 13
    //   519: aload_3
    //   520: invokevirtual 460	com/google/android/gms/internal/fx:a	(Ljava/util/Map;)V
    //   523: aload 5
    //   525: invokevirtual 442	java/net/HttpURLConnection:disconnect	()V
    //   528: aload 8
    //   530: ifnull +6 -> 536
    //   533: goto -469 -> 64
    //   536: goto -472 -> 64
    //   539: astore_0
    //   540: goto -172 -> 368
    //   543: astore_0
    //   544: aload_3
    //   545: astore_1
    //   546: goto -228 -> 318
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	549	0	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   0	549	1	paramContext	Context
    //   0	549	2	paramString1	String
    //   0	549	3	paramString2	String
    //   0	549	4	paramString3	String
    //   0	549	5	paramString4	String
    //   0	549	6	paramfy	fy
    //   0	549	7	parambg	bg
    //   0	549	8	paramft	ft
    //   62	395	9	i	int
    //   200	291	10	j	int
    //   59	238	11	l	long
    //   20	498	13	localfx	fx
    //   162	25	14	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   172	185	315	finally
    //   73	100	324	finally
    //   100	132	324	finally
    //   137	172	324	finally
    //   191	195	324	finally
    //   195	208	324	finally
    //   224	229	324	finally
    //   251	271	324	finally
    //   276	294	324	finally
    //   294	302	324	finally
    //   318	324	324	finally
    //   368	374	324	finally
    //   374	385	324	finally
    //   401	431	324	finally
    //   438	447	324	finally
    //   459	473	324	finally
    //   480	510	324	finally
    //   517	523	324	finally
    //   12	61	332	java/io/IOException
    //   64	73	332	java/io/IOException
    //   302	307	332	java/io/IOException
    //   325	332	332	java/io/IOException
    //   431	436	332	java/io/IOException
    //   473	478	332	java/io/IOException
    //   510	515	332	java/io/IOException
    //   523	528	332	java/io/IOException
    //   229	242	365	finally
    //   242	251	539	finally
    //   185	191	543	finally
  }
  
  public static fu a(Context paramContext, aq paramaq, ft paramft)
  {
    synchronized (a)
    {
      if (b == null)
      {
        Context localContext = paramContext;
        if (paramContext.getApplicationContext() != null) {
          localContext = paramContext.getApplicationContext();
        }
        b = new fu(localContext, paramaq, paramft);
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (b.a(2))
    {
      new StringBuilder("Http Response: {\n  URL:\n    ").append(paramString1).append("\n  Headers:");
      b.a(2);
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          new StringBuilder("    ").append((String)localObject).append(":");
          b.a(2);
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            new StringBuilder("      ").append(str);
            b.a(2);
          }
        }
      }
      b.a(2);
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          paramString2.substring(i, Math.min(paramString2.length(), i + 1000));
          b.a(2);
          i += 1000;
        }
      }
      b.a(2);
      new StringBuilder("  Response Code:\n    ").append(paramInt).append("\n}");
      b.a(2);
    }
  }
  
  public final AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    return a(c, f, e, d, paramAdRequestInfoParcel);
  }
  
  public final void a(AdRequestInfoParcel paramAdRequestInfoParcel, k paramk)
  {
    o.h().a(c, k);
    gw.b(new fu.6(this, paramAdRequestInfoParcel, paramk));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */