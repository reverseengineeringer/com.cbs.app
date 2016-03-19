package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.o;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import java.text.SimpleDateFormat;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fs
public final class fv
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.US);
  
  public static AdResponseParcel a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    JSONObject localJSONObject;
    String str1;
    String str2;
    String str3;
    boolean bool1;
    long l2;
    String str4;
    long l1;
    label107:
    Object localObject1;
    int i;
    label247:
    Object localObject2;
    label285:
    int j;
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        str1 = localJSONObject.optString("ad_base_url", null);
        str2 = localJSONObject.optString("ad_url", null);
        str3 = localJSONObject.optString("ad_size", null);
        if ((paramAdRequestInfoParcel == null) || (m == 0)) {
          break label837;
        }
        bool1 = true;
        if (bool1)
        {
          paramString = localJSONObject.optString("ad_json", null);
          l2 = -1L;
          str4 = localJSONObject.optString("debug_dialog", null);
          if (!localJSONObject.has("interstitial_timeout")) {
            break label843;
          }
          l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
          localObject1 = localJSONObject.optString("orientation", null);
          i = -1;
          if ("portrait".equals(localObject1))
          {
            i = o.g().b();
            if (TextUtils.isEmpty(paramString)) {
              continue;
            }
            if (!TextUtils.isEmpty(str1)) {
              break label828;
            }
            b.a(5);
            return new AdResponseParcel(0);
          }
        }
        else
        {
          paramString = localJSONObject.optString("ad_html", null);
          continue;
        }
        if (!"landscape".equals(localObject1)) {
          continue;
        }
        i = o.g().a();
        continue;
        if (!TextUtils.isEmpty(str2))
        {
          localObject1 = fu.a(paramAdRequestInfoParcel, paramContext, k.b, str2, null, null, null, null, null);
          str1 = b;
          str2 = c;
          l2 = n;
          localObject2 = localJSONObject.optJSONArray("click_urls");
          if (localObject1 != null) {
            break label401;
          }
          paramContext = null;
          if (localObject2 == null) {
            break;
          }
          paramString = paramContext;
          if (paramContext != null) {
            break label851;
          }
          paramString = new LinkedList();
          break label851;
          if (j >= ((JSONArray)localObject2).length()) {
            break label857;
          }
          paramString.add(((JSONArray)localObject2).getString(j));
          j += 1;
          continue;
        }
        paramAdRequestInfoParcel = new StringBuilder("Could not parse the mediation config: Missing required ");
        if (bool1)
        {
          paramContext = "ad_json";
          paramAdRequestInfoParcel.append(paramContext).append(" or ad_url field.");
          b.a(5);
          paramContext = new AdResponseParcel(0);
          return paramContext;
        }
      }
      catch (JSONException paramContext)
      {
        new StringBuilder("Could not parse the mediation config: ").append(paramContext.getMessage());
        b.a(5);
        return new AdResponseParcel(0);
      }
      paramContext = "ad_html";
      continue;
      label401:
      paramContext = d;
    }
    label410:
    Object localObject3 = localJSONObject.optJSONArray("impression_urls");
    if (localObject1 == null) {
      paramContext = null;
    }
    label448:
    label490:
    Object localObject4;
    while (localObject3 != null)
    {
      paramString = paramContext;
      if (paramContext != null) {
        break label863;
      }
      paramString = new LinkedList();
      break label863;
      while (j < ((JSONArray)localObject3).length())
      {
        paramString.add(((JSONArray)localObject3).getString(j));
        j += 1;
      }
      paramContext = f;
      continue;
      localObject4 = localJSONObject.optJSONArray("manual_impression_urls");
      if (localObject1 == null) {}
      for (paramContext = null; localObject4 != null; paramContext = j)
      {
        paramString = paramContext;
        if (paramContext != null) {
          break label875;
        }
        paramString = new LinkedList();
        break label875;
        label528:
        while (j < ((JSONArray)localObject4).length())
        {
          paramString.add(((JSONArray)localObject4).getString(j));
          j += 1;
        }
      }
    }
    for (;;)
    {
      j = i;
      if (localObject1 != null)
      {
        if (l != -1) {
          i = l;
        }
        j = i;
        if (g > 0L) {
          l1 = g;
        }
      }
      for (;;)
      {
        localObject1 = localJSONObject.optString("active_view");
        paramString = null;
        boolean bool2 = localJSONObject.optBoolean("ad_is_javascript", false);
        if (bool2) {
          paramString = localJSONObject.optString("ad_passback_url", null);
        }
        boolean bool3 = localJSONObject.optBoolean("mediation", false);
        boolean bool4 = localJSONObject.optBoolean("custom_render_allowed", false);
        boolean bool5 = localJSONObject.optBoolean("content_url_opted_out", true);
        boolean bool6 = localJSONObject.optBoolean("prefetch", false);
        j = localJSONObject.optInt("oauth2_token_status", 0);
        long l3 = localJSONObject.optLong("refresh_interval_milliseconds", -1L);
        long l4 = localJSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
        localObject4 = localJSONObject.optString("gws_query_id", "");
        boolean bool7 = "height".equals(localJSONObject.optString("fluid", ""));
        paramContext = new AdResponseParcel(paramAdRequestInfoParcel, str1, str2, (List)localObject2, (List)localObject3, l1, bool3, l4, paramContext, l3, i, str3, l2, str4, bool2, paramString, (String)localObject1, bool4, bool1, p, bool5, bool6, j, (String)localObject4, bool7);
        return paramContext;
        i = j;
      }
      continue;
      localObject3 = paramContext;
      break label490;
      localObject2 = paramContext;
      break label410;
      label828:
      localObject1 = null;
      str2 = paramString;
      break label247;
      label837:
      bool1 = false;
      break;
      label843:
      l1 = -1L;
      break label107;
      label851:
      j = 0;
      break label285;
      label857:
      localObject2 = paramString;
      break label410;
      label863:
      j = 0;
      break label448;
      localObject3 = paramString;
      break label490;
      label875:
      j = 0;
      break label528;
      paramContext = paramString;
    }
  }
  
  /* Error */
  private static com.google.android.gms.appdatasearch.UsageInfo a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: new 249	com/google/android/gms/common/api/b$a
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 252	com/google/android/gms/common/api/b$a:<init>	(Landroid/content/Context;)V
    //   8: getstatic 257	com/google/android/gms/appdatasearch/a:b	Lcom/google/android/gms/common/api/a;
    //   11: invokevirtual 260	com/google/android/gms/common/api/b$a:a	(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/b$a;
    //   14: invokevirtual 263	com/google/android/gms/common/api/b$a:b	()Lcom/google/android/gms/common/api/b;
    //   17: astore_0
    //   18: aload_0
    //   19: invokevirtual 267	com/google/android/gms/common/api/b:c	()V
    //   22: new 269	com/google/android/gms/appdatasearch/GetRecentContextCall$Request$a
    //   25: dup
    //   26: invokespecial 270	com/google/android/gms/appdatasearch/GetRecentContextCall$Request$a:<init>	()V
    //   29: invokevirtual 273	com/google/android/gms/appdatasearch/GetRecentContextCall$Request$a:a	()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;
    //   32: aload_1
    //   33: invokevirtual 276	com/google/android/gms/appdatasearch/GetRecentContextCall$Request$a:a	(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$a;
    //   36: invokevirtual 279	com/google/android/gms/appdatasearch/GetRecentContextCall$Request$a:b	()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
    //   39: astore_1
    //   40: getstatic 282	com/google/android/gms/appdatasearch/a:c	Lcom/google/android/gms/appdatasearch/k;
    //   43: aload_0
    //   44: aload_1
    //   45: invokeinterface 287 3 0
    //   50: getstatic 293	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   53: invokevirtual 298	com/google/android/gms/common/api/c:a	(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/e;
    //   56: checkcast 300	com/google/android/gms/appdatasearch/GetRecentContextCall$Response
    //   59: astore_1
    //   60: aload_1
    //   61: ifnull +13 -> 74
    //   64: aload_1
    //   65: invokevirtual 303	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:a	()Lcom/google/android/gms/common/api/Status;
    //   68: invokevirtual 309	com/google/android/gms/common/api/Status:e	()Z
    //   71: ifne +14 -> 85
    //   74: iconst_4
    //   75: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   78: pop
    //   79: aload_0
    //   80: invokevirtual 311	com/google/android/gms/common/api/b:d	()V
    //   83: aconst_null
    //   84: areturn
    //   85: aload_1
    //   86: getfield 313	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   89: ifnull +15 -> 104
    //   92: aload_1
    //   93: getfield 313	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   96: invokeinterface 315 1 0
    //   101: ifeq +14 -> 115
    //   104: iconst_4
    //   105: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   108: pop
    //   109: aload_0
    //   110: invokevirtual 311	com/google/android/gms/common/api/b:d	()V
    //   113: aconst_null
    //   114: areturn
    //   115: aload_1
    //   116: getfield 313	com/google/android/gms/appdatasearch/GetRecentContextCall$Response:b	Ljava/util/List;
    //   119: iconst_0
    //   120: invokeinterface 319 2 0
    //   125: checkcast 321	com/google/android/gms/appdatasearch/UsageInfo
    //   128: astore_1
    //   129: aload_0
    //   130: invokevirtual 311	com/google/android/gms/common/api/b:d	()V
    //   133: aload_1
    //   134: astore_0
    //   135: aload_0
    //   136: areturn
    //   137: astore_0
    //   138: aconst_null
    //   139: astore_0
    //   140: iconst_5
    //   141: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   144: pop
    //   145: aload_0
    //   146: ifnull +37 -> 183
    //   149: aload_0
    //   150: invokevirtual 311	com/google/android/gms/common/api/b:d	()V
    //   153: aconst_null
    //   154: astore_0
    //   155: goto -20 -> 135
    //   158: astore_1
    //   159: aconst_null
    //   160: astore_0
    //   161: aload_0
    //   162: ifnull +7 -> 169
    //   165: aload_0
    //   166: invokevirtual 311	com/google/android/gms/common/api/b:d	()V
    //   169: aload_1
    //   170: athrow
    //   171: astore_1
    //   172: goto -11 -> 161
    //   175: astore_1
    //   176: goto -15 -> 161
    //   179: astore_1
    //   180: goto -40 -> 140
    //   183: aconst_null
    //   184: astore_0
    //   185: goto -50 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	188	0	paramContext	Context
    //   0	188	1	paramString	String
    // Exception table:
    //   from	to	target	type
    //   0	18	137	java/lang/SecurityException
    //   0	18	158	finally
    //   18	60	171	finally
    //   64	74	171	finally
    //   74	79	171	finally
    //   85	104	171	finally
    //   104	109	171	finally
    //   115	129	171	finally
    //   140	145	175	finally
    //   18	60	179	java/lang/SecurityException
    //   64	74	179	java/lang/SecurityException
    //   74	79	179	java/lang/SecurityException
    //   85	104	179	java/lang/SecurityException
    //   104	109	179	java/lang/SecurityException
    //   115	129	179	java/lang/SecurityException
  }
  
  private static Integer a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String a(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
  
  /* Error */
  public static JSONObject a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, fz paramfz, gd.a parama, aq paramaq, String paramString1, String paramString2, List<String> paramList)
  {
    // Byte code:
    //   0: new 342	java/util/HashMap
    //   3: dup
    //   4: invokespecial 343	java/util/HashMap:<init>	()V
    //   7: astore 5
    //   9: aload 7
    //   11: invokeinterface 346 1 0
    //   16: ifle +20 -> 36
    //   19: aload 5
    //   21: ldc_w 348
    //   24: ldc_w 350
    //   27: aload 7
    //   29: invokestatic 354	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   32: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: aload_1
    //   37: getfield 361	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	Landroid/os/Bundle;
    //   40: ifnull +16 -> 56
    //   43: aload 5
    //   45: ldc_w 363
    //   48: aload_1
    //   49: getfield 361	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	Landroid/os/Bundle;
    //   52: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   55: pop
    //   56: aload_1
    //   57: getfield 366	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   60: astore 7
    //   62: invokestatic 370	com/google/android/gms/internal/gq:a	()Ljava/lang/String;
    //   65: astore_3
    //   66: aload_3
    //   67: ifnull +13 -> 80
    //   70: aload 5
    //   72: ldc_w 372
    //   75: aload_3
    //   76: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   79: pop
    //   80: aload 7
    //   82: getfield 376	com/google/android/gms/ads/internal/client/AdRequestParcel:b	J
    //   85: ldc2_w 53
    //   88: lcmp
    //   89: ifeq +30 -> 119
    //   92: aload 5
    //   94: ldc_w 378
    //   97: getstatic 25	com/google/android/gms/internal/fv:a	Ljava/text/SimpleDateFormat;
    //   100: new 380	java/util/Date
    //   103: dup
    //   104: aload 7
    //   106: getfield 376	com/google/android/gms/ads/internal/client/AdRequestParcel:b	J
    //   109: invokespecial 383	java/util/Date:<init>	(J)V
    //   112: invokevirtual 386	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   115: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   118: pop
    //   119: aload 7
    //   121: getfield 388	com/google/android/gms/ads/internal/client/AdRequestParcel:c	Landroid/os/Bundle;
    //   124: ifnull +17 -> 141
    //   127: aload 5
    //   129: ldc_w 390
    //   132: aload 7
    //   134: getfield 388	com/google/android/gms/ads/internal/client/AdRequestParcel:c	Landroid/os/Bundle;
    //   137: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   140: pop
    //   141: aload 7
    //   143: getfield 392	com/google/android/gms/ads/internal/client/AdRequestParcel:d	I
    //   146: iconst_m1
    //   147: if_icmpeq +20 -> 167
    //   150: aload 5
    //   152: ldc_w 394
    //   155: aload 7
    //   157: getfield 392	com/google/android/gms/ads/internal/client/AdRequestParcel:d	I
    //   160: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   163: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   166: pop
    //   167: aload 7
    //   169: getfield 396	com/google/android/gms/ads/internal/client/AdRequestParcel:e	Ljava/util/List;
    //   172: ifnull +17 -> 189
    //   175: aload 5
    //   177: ldc_w 398
    //   180: aload 7
    //   182: getfield 396	com/google/android/gms/ads/internal/client/AdRequestParcel:e	Ljava/util/List;
    //   185: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   188: pop
    //   189: aload 7
    //   191: getfield 400	com/google/android/gms/ads/internal/client/AdRequestParcel:g	I
    //   194: iconst_m1
    //   195: if_icmpeq +20 -> 215
    //   198: aload 5
    //   200: ldc_w 402
    //   203: aload 7
    //   205: getfield 400	com/google/android/gms/ads/internal/client/AdRequestParcel:g	I
    //   208: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   211: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   214: pop
    //   215: aload 7
    //   217: getfield 404	com/google/android/gms/ads/internal/client/AdRequestParcel:f	Z
    //   220: ifeq +15 -> 235
    //   223: aload 5
    //   225: ldc_w 406
    //   228: ldc_w 408
    //   231: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   234: pop
    //   235: aload 7
    //   237: getfield 410	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   240: iconst_2
    //   241: if_icmplt +452 -> 693
    //   244: aload 7
    //   246: getfield 413	com/google/android/gms/ads/internal/client/AdRequestParcel:h	Z
    //   249: ifeq +16 -> 265
    //   252: aload 5
    //   254: ldc_w 415
    //   257: iconst_1
    //   258: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   261: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   264: pop
    //   265: aload 7
    //   267: getfield 418	com/google/android/gms/ads/internal/client/AdRequestParcel:i	Ljava/lang/String;
    //   270: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   273: ifne +17 -> 290
    //   276: aload 5
    //   278: ldc_w 420
    //   281: aload 7
    //   283: getfield 418	com/google/android/gms/ads/internal/client/AdRequestParcel:i	Ljava/lang/String;
    //   286: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   289: pop
    //   290: aload 7
    //   292: getfield 423	com/google/android/gms/ads/internal/client/AdRequestParcel:j	Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;
    //   295: ifnull +398 -> 693
    //   298: aload 7
    //   300: getfield 423	com/google/android/gms/ads/internal/client/AdRequestParcel:j	Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;
    //   303: astore 19
    //   305: aload 19
    //   307: getfield 427	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:b	I
    //   310: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   313: ifeq +20 -> 333
    //   316: aload 5
    //   318: ldc_w 435
    //   321: aload 19
    //   323: getfield 427	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:b	I
    //   326: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   329: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   332: pop
    //   333: aload 19
    //   335: getfield 439	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:c	I
    //   338: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   341: ifeq +20 -> 361
    //   344: aload 5
    //   346: ldc_w 441
    //   349: aload 19
    //   351: getfield 439	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:c	I
    //   354: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   357: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   360: pop
    //   361: aload 19
    //   363: getfield 442	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:d	I
    //   366: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   369: ifeq +48 -> 417
    //   372: aload 19
    //   374: getfield 444	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:e	I
    //   377: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   380: ifeq +37 -> 417
    //   383: aload 5
    //   385: ldc_w 446
    //   388: aload 19
    //   390: getfield 442	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:d	I
    //   393: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   396: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   399: pop
    //   400: aload 5
    //   402: ldc_w 448
    //   405: aload 19
    //   407: getfield 444	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:e	I
    //   410: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   413: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   416: pop
    //   417: aload 19
    //   419: getfield 450	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:f	I
    //   422: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   425: ifeq +20 -> 445
    //   428: aload 5
    //   430: ldc_w 452
    //   433: aload 19
    //   435: getfield 450	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:f	I
    //   438: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   441: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   444: pop
    //   445: aload 5
    //   447: ldc_w 454
    //   450: aload 19
    //   452: getfield 455	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:g	I
    //   455: invokestatic 458	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   458: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   461: pop
    //   462: aload 19
    //   464: getfield 460	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:h	I
    //   467: tableswitch	default:+2086->2553, 0:+2096->2563, 1:+2103->2570, 2:+2110->2577, 3:+2117->2584
    //   496: aload_3
    //   497: ifnull +13 -> 510
    //   500: aload 5
    //   502: ldc_w 462
    //   505: aload_3
    //   506: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   509: pop
    //   510: aload 19
    //   512: getfield 464	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:i	I
    //   515: tableswitch	default:+2043->2558, 0:+2083->2598, 1:+2090->2605, 2:+2076->2591
    //   540: aload_3
    //   541: ifnull +13 -> 554
    //   544: aload 5
    //   546: ldc_w 466
    //   549: aload_3
    //   550: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   553: pop
    //   554: aload 19
    //   556: getfield 468	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:j	Ljava/lang/String;
    //   559: ifnull +17 -> 576
    //   562: aload 5
    //   564: ldc_w 470
    //   567: aload 19
    //   569: getfield 468	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:j	Ljava/lang/String;
    //   572: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   575: pop
    //   576: aload 19
    //   578: getfield 472	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:k	I
    //   581: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   584: ifeq +20 -> 604
    //   587: aload 5
    //   589: ldc_w 474
    //   592: aload 19
    //   594: getfield 472	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:k	I
    //   597: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   600: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   603: pop
    //   604: aload 19
    //   606: getfield 476	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:l	Ljava/lang/String;
    //   609: ifnull +17 -> 626
    //   612: aload 5
    //   614: ldc_w 478
    //   617: aload 19
    //   619: getfield 476	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:l	Ljava/lang/String;
    //   622: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   625: pop
    //   626: aload 19
    //   628: getfield 479	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:m	I
    //   631: invokestatic 433	android/graphics/Color:alpha	(I)I
    //   634: ifeq +20 -> 654
    //   637: aload 5
    //   639: ldc_w 481
    //   642: aload 19
    //   644: getfield 479	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:m	I
    //   647: invokestatic 437	com/google/android/gms/internal/fv:a	(I)Ljava/lang/String;
    //   650: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   653: pop
    //   654: aload 5
    //   656: ldc_w 483
    //   659: aload 19
    //   661: getfield 485	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:n	I
    //   664: invokestatic 458	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   667: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   670: pop
    //   671: aload 19
    //   673: getfield 488	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:o	Ljava/lang/String;
    //   676: ifnull +17 -> 693
    //   679: aload 5
    //   681: ldc_w 490
    //   684: aload 19
    //   686: getfield 488	com/google/android/gms/ads/internal/client/SearchAdRequestParcel:o	Ljava/lang/String;
    //   689: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   692: pop
    //   693: aload 7
    //   695: getfield 410	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   698: iconst_3
    //   699: if_icmplt +25 -> 724
    //   702: aload 7
    //   704: getfield 491	com/google/android/gms/ads/internal/client/AdRequestParcel:l	Ljava/lang/String;
    //   707: ifnull +17 -> 724
    //   710: aload 5
    //   712: ldc_w 493
    //   715: aload 7
    //   717: getfield 491	com/google/android/gms/ads/internal/client/AdRequestParcel:l	Ljava/lang/String;
    //   720: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   723: pop
    //   724: aload 7
    //   726: getfield 410	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   729: iconst_5
    //   730: if_icmplt +69 -> 799
    //   733: aload 7
    //   735: getfield 495	com/google/android/gms/ads/internal/client/AdRequestParcel:n	Landroid/os/Bundle;
    //   738: ifnull +17 -> 755
    //   741: aload 5
    //   743: ldc_w 497
    //   746: aload 7
    //   748: getfield 495	com/google/android/gms/ads/internal/client/AdRequestParcel:n	Landroid/os/Bundle;
    //   751: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   754: pop
    //   755: aload 7
    //   757: getfield 499	com/google/android/gms/ads/internal/client/AdRequestParcel:o	Ljava/util/List;
    //   760: ifnull +17 -> 777
    //   763: aload 5
    //   765: ldc_w 501
    //   768: aload 7
    //   770: getfield 499	com/google/android/gms/ads/internal/client/AdRequestParcel:o	Ljava/util/List;
    //   773: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   776: pop
    //   777: aload 7
    //   779: getfield 503	com/google/android/gms/ads/internal/client/AdRequestParcel:p	Ljava/lang/String;
    //   782: ifnull +17 -> 799
    //   785: aload 5
    //   787: ldc_w 505
    //   790: aload 7
    //   792: getfield 503	com/google/android/gms/ads/internal/client/AdRequestParcel:p	Ljava/lang/String;
    //   795: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   798: pop
    //   799: aload 7
    //   801: getfield 410	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   804: bipush 6
    //   806: if_icmplt +25 -> 831
    //   809: aload 7
    //   811: getfield 507	com/google/android/gms/ads/internal/client/AdRequestParcel:q	Ljava/lang/String;
    //   814: ifnull +17 -> 831
    //   817: aload 5
    //   819: ldc_w 509
    //   822: aload 7
    //   824: getfield 507	com/google/android/gms/ads/internal/client/AdRequestParcel:q	Ljava/lang/String;
    //   827: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   830: pop
    //   831: aload 5
    //   833: ldc_w 510
    //   836: aload_1
    //   837: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   840: getfield 516	com/google/android/gms/ads/internal/client/AdSizeParcel:b	Ljava/lang/String;
    //   843: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   846: pop
    //   847: aload_1
    //   848: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   851: getfield 517	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   854: iconst_m1
    //   855: if_icmpne +15 -> 870
    //   858: aload 5
    //   860: ldc_w 519
    //   863: ldc_w 521
    //   866: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   869: pop
    //   870: aload_1
    //   871: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   874: getfield 522	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   877: bipush -2
    //   879: if_icmpne +15 -> 894
    //   882: aload 5
    //   884: ldc_w 524
    //   887: ldc_w 526
    //   890: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   893: pop
    //   894: aload_1
    //   895: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   898: getfield 528	com/google/android/gms/ads/internal/client/AdSizeParcel:j	Z
    //   901: ifeq +13 -> 914
    //   904: aload 5
    //   906: ldc -19
    //   908: ldc -21
    //   910: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   913: pop
    //   914: aload_1
    //   915: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   918: getfield 531	com/google/android/gms/ads/internal/client/AdSizeParcel:h	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   921: ifnull +165 -> 1086
    //   924: new 160	java/lang/StringBuilder
    //   927: dup
    //   928: invokespecial 532	java/lang/StringBuilder:<init>	()V
    //   931: astore_3
    //   932: aload_1
    //   933: getfield 513	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   936: getfield 531	com/google/android/gms/ads/internal/client/AdSizeParcel:h	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   939: astore 7
    //   941: aload 7
    //   943: arraylength
    //   944: istore 11
    //   946: iconst_0
    //   947: istore 9
    //   949: iload 9
    //   951: iload 11
    //   953: if_icmpge +123 -> 1076
    //   956: aload 7
    //   958: iload 9
    //   960: aaload
    //   961: astore 19
    //   963: aload_3
    //   964: invokevirtual 533	java/lang/StringBuilder:length	()I
    //   967: ifeq +11 -> 978
    //   970: aload_3
    //   971: ldc_w 535
    //   974: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   977: pop
    //   978: aload 19
    //   980: getfield 517	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   983: iconst_m1
    //   984: if_icmpne +72 -> 1056
    //   987: aload 19
    //   989: getfield 536	com/google/android/gms/ads/internal/client/AdSizeParcel:g	I
    //   992: i2f
    //   993: aload_2
    //   994: getfield 542	com/google/android/gms/internal/fz:r	F
    //   997: fdiv
    //   998: f2i
    //   999: istore 10
    //   1001: aload_3
    //   1002: iload 10
    //   1004: invokevirtual 545	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1007: pop
    //   1008: aload_3
    //   1009: ldc_w 547
    //   1012: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1015: pop
    //   1016: aload 19
    //   1018: getfield 522	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   1021: bipush -2
    //   1023: if_icmpne +43 -> 1066
    //   1026: aload 19
    //   1028: getfield 548	com/google/android/gms/ads/internal/client/AdSizeParcel:d	I
    //   1031: i2f
    //   1032: aload_2
    //   1033: getfield 542	com/google/android/gms/internal/fz:r	F
    //   1036: fdiv
    //   1037: f2i
    //   1038: istore 10
    //   1040: aload_3
    //   1041: iload 10
    //   1043: invokevirtual 545	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1046: pop
    //   1047: iload 9
    //   1049: iconst_1
    //   1050: iadd
    //   1051: istore 9
    //   1053: goto -104 -> 949
    //   1056: aload 19
    //   1058: getfield 517	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   1061: istore 10
    //   1063: goto -62 -> 1001
    //   1066: aload 19
    //   1068: getfield 522	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   1071: istore 10
    //   1073: goto -33 -> 1040
    //   1076: aload 5
    //   1078: ldc_w 550
    //   1081: aload_3
    //   1082: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1085: pop
    //   1086: aload_1
    //   1087: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:m	I
    //   1090: ifeq +85 -> 1175
    //   1093: aload 5
    //   1095: ldc_w 552
    //   1098: aload_1
    //   1099: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:m	I
    //   1102: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1105: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1108: pop
    //   1109: aload 5
    //   1111: ldc_w 554
    //   1114: aload_1
    //   1115: getfield 556	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:n	Ljava/util/List;
    //   1118: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1121: pop
    //   1122: aload_1
    //   1123: getfield 560	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:z	Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    //   1126: astore_3
    //   1127: aload_3
    //   1128: ifnull +1515 -> 2643
    //   1131: aload_3
    //   1132: getfield 563	com/google/android/gms/ads/internal/formats/NativeAdOptionsParcel:c	I
    //   1135: istore 9
    //   1137: goto +1475 -> 2612
    //   1140: aload 5
    //   1142: ldc_w 565
    //   1145: aload_3
    //   1146: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1149: pop
    //   1150: aload_1
    //   1151: getfield 568	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:A	Ljava/util/List;
    //   1154: invokeinterface 315 1 0
    //   1159: ifne +16 -> 1175
    //   1162: aload 5
    //   1164: ldc_w 570
    //   1167: aload_1
    //   1168: getfield 568	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:A	Ljava/util/List;
    //   1171: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1174: pop
    //   1175: aload 5
    //   1177: ldc_w 572
    //   1180: aload_1
    //   1181: getfield 574	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Ljava/lang/String;
    //   1184: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1187: pop
    //   1188: aload 5
    //   1190: ldc_w 576
    //   1193: aload_1
    //   1194: getfield 579	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:f	Landroid/content/pm/ApplicationInfo;
    //   1197: getfield 584	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   1200: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1203: pop
    //   1204: aload_1
    //   1205: getfield 587	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   1208: ifnull +22 -> 1230
    //   1211: aload 5
    //   1213: ldc_w 589
    //   1216: aload_1
    //   1217: getfield 587	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   1220: getfield 594	android/content/pm/PackageInfo:versionCode	I
    //   1223: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1226: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1229: pop
    //   1230: aload 5
    //   1232: ldc_w 596
    //   1235: aload 6
    //   1237: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1240: pop
    //   1241: aload 5
    //   1243: ldc_w 598
    //   1246: aload_1
    //   1247: getfield 599	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:i	Ljava/lang/String;
    //   1250: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1253: pop
    //   1254: aload 5
    //   1256: ldc_w 601
    //   1259: aload_1
    //   1260: getfield 602	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:j	Ljava/lang/String;
    //   1263: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1266: pop
    //   1267: aload 5
    //   1269: ldc_w 604
    //   1272: aload_1
    //   1273: getfield 116	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:k	Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    //   1276: getfield 121	com/google/android/gms/ads/internal/util/client/VersionInfoParcel:b	Ljava/lang/String;
    //   1279: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1282: pop
    //   1283: aload 5
    //   1285: ldc_w 606
    //   1288: aload_2
    //   1289: getfield 607	com/google/android/gms/internal/fz:a	I
    //   1292: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1295: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1298: pop
    //   1299: aload 5
    //   1301: ldc_w 609
    //   1304: aload_2
    //   1305: getfield 611	com/google/android/gms/internal/fz:b	Z
    //   1308: invokestatic 613	com/google/android/gms/internal/fv:a	(Z)Ljava/lang/Integer;
    //   1311: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1314: pop
    //   1315: aload 5
    //   1317: ldc_w 615
    //   1320: aload_2
    //   1321: getfield 617	com/google/android/gms/internal/fz:c	Z
    //   1324: invokestatic 613	com/google/android/gms/internal/fv:a	(Z)Ljava/lang/Integer;
    //   1327: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1330: pop
    //   1331: aload_2
    //   1332: getfield 619	com/google/android/gms/internal/fz:d	Ljava/lang/String;
    //   1335: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1338: ifne +16 -> 1354
    //   1341: aload 5
    //   1343: ldc_w 621
    //   1346: aload_2
    //   1347: getfield 619	com/google/android/gms/internal/fz:d	Ljava/lang/String;
    //   1350: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1353: pop
    //   1354: aload 5
    //   1356: ldc_w 623
    //   1359: aload_2
    //   1360: getfield 624	com/google/android/gms/internal/fz:e	Ljava/lang/String;
    //   1363: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1366: pop
    //   1367: aload_2
    //   1368: getfield 625	com/google/android/gms/internal/fz:f	Z
    //   1371: ifeq +16 -> 1387
    //   1374: aload 5
    //   1376: ldc_w 627
    //   1379: iconst_1
    //   1380: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1383: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1386: pop
    //   1387: aload_2
    //   1388: getfield 629	com/google/android/gms/internal/fz:g	Z
    //   1391: ifeq +16 -> 1407
    //   1394: aload 5
    //   1396: ldc_w 631
    //   1399: iconst_1
    //   1400: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1403: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1406: pop
    //   1407: aload 5
    //   1409: ldc_w 633
    //   1412: aload_2
    //   1413: getfield 634	com/google/android/gms/internal/fz:h	Z
    //   1416: invokestatic 613	com/google/android/gms/internal/fv:a	(Z)Ljava/lang/Integer;
    //   1419: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1422: pop
    //   1423: aload 5
    //   1425: ldc_w 636
    //   1428: aload_2
    //   1429: getfield 638	com/google/android/gms/internal/fz:i	Z
    //   1432: invokestatic 613	com/google/android/gms/internal/fv:a	(Z)Ljava/lang/Integer;
    //   1435: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1438: pop
    //   1439: aload 5
    //   1441: ldc_w 640
    //   1444: aload_2
    //   1445: getfield 641	com/google/android/gms/internal/fz:j	Ljava/lang/String;
    //   1448: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1451: pop
    //   1452: aload_2
    //   1453: getfield 643	com/google/android/gms/internal/fz:k	Ljava/lang/String;
    //   1456: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1459: ifne +16 -> 1475
    //   1462: aload 5
    //   1464: ldc_w 645
    //   1467: aload_2
    //   1468: getfield 643	com/google/android/gms/internal/fz:k	Ljava/lang/String;
    //   1471: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1474: pop
    //   1475: aload 5
    //   1477: ldc_w 647
    //   1480: aload_2
    //   1481: getfield 648	com/google/android/gms/internal/fz:l	I
    //   1484: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1487: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1490: pop
    //   1491: aload_2
    //   1492: getfield 649	com/google/android/gms/internal/fz:m	I
    //   1495: bipush -2
    //   1497: if_icmpeq +19 -> 1516
    //   1500: aload 5
    //   1502: ldc_w 651
    //   1505: aload_2
    //   1506: getfield 649	com/google/android/gms/internal/fz:m	I
    //   1509: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1512: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1515: pop
    //   1516: aload 5
    //   1518: ldc_w 653
    //   1521: aload_2
    //   1522: getfield 654	com/google/android/gms/internal/fz:n	I
    //   1525: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1528: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1531: pop
    //   1532: aload 5
    //   1534: ldc_w 656
    //   1537: aload_2
    //   1538: getfield 658	com/google/android/gms/internal/fz:o	I
    //   1541: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1544: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1547: pop
    //   1548: aload 5
    //   1550: ldc_w 660
    //   1553: aload_2
    //   1554: getfield 662	com/google/android/gms/internal/fz:p	I
    //   1557: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1560: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1563: pop
    //   1564: aload 5
    //   1566: ldc_w 664
    //   1569: aload_2
    //   1570: getfield 666	com/google/android/gms/internal/fz:q	I
    //   1573: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1576: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1579: pop
    //   1580: new 668	android/os/Bundle
    //   1583: dup
    //   1584: invokespecial 669	android/os/Bundle:<init>	()V
    //   1587: astore_3
    //   1588: aload_3
    //   1589: ldc_w 671
    //   1592: aload_2
    //   1593: getfield 674	com/google/android/gms/internal/fz:y	Ljava/lang/String;
    //   1596: invokevirtual 678	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1599: new 668	android/os/Bundle
    //   1602: dup
    //   1603: invokespecial 669	android/os/Bundle:<init>	()V
    //   1606: astore 6
    //   1608: aload 6
    //   1610: ldc_w 680
    //   1613: aload_2
    //   1614: getfield 683	com/google/android/gms/internal/fz:v	Z
    //   1617: invokevirtual 687	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   1620: aload 6
    //   1622: ldc_w 689
    //   1625: aload_2
    //   1626: getfield 693	com/google/android/gms/internal/fz:u	D
    //   1629: invokevirtual 697	android/os/Bundle:putDouble	(Ljava/lang/String;D)V
    //   1632: aload_3
    //   1633: ldc_w 699
    //   1636: aload 6
    //   1638: invokevirtual 703	android/os/Bundle:putBundle	(Ljava/lang/String;Landroid/os/Bundle;)V
    //   1641: new 668	android/os/Bundle
    //   1644: dup
    //   1645: invokespecial 669	android/os/Bundle:<init>	()V
    //   1648: astore 6
    //   1650: aload 6
    //   1652: ldc_w 705
    //   1655: aload_2
    //   1656: getfield 707	com/google/android/gms/internal/fz:x	I
    //   1659: invokevirtual 711	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   1662: aload 6
    //   1664: ldc_w 713
    //   1667: aload_2
    //   1668: getfield 716	com/google/android/gms/internal/fz:w	Z
    //   1671: invokevirtual 687	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   1674: aload_3
    //   1675: ldc_w 718
    //   1678: aload 6
    //   1680: invokevirtual 703	android/os/Bundle:putBundle	(Ljava/lang/String;Landroid/os/Bundle;)V
    //   1683: aload 5
    //   1685: ldc_w 720
    //   1688: aload_3
    //   1689: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1692: pop
    //   1693: aload 5
    //   1695: ldc_w 722
    //   1698: aload 4
    //   1700: invokevirtual 725	com/google/android/gms/internal/aq:b	()I
    //   1703: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1706: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1709: pop
    //   1710: aload 5
    //   1712: ldc_w 727
    //   1715: getstatic 732	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   1718: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1721: pop
    //   1722: aload 5
    //   1724: ldc_w 734
    //   1727: getstatic 737	android/os/Build:MODEL	Ljava/lang/String;
    //   1730: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1733: pop
    //   1734: aload_1
    //   1735: getfield 366	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   1738: getfield 410	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   1741: iconst_2
    //   1742: if_icmplt +139 -> 1881
    //   1745: aload_1
    //   1746: getfield 366	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   1749: getfield 740	com/google/android/gms/ads/internal/client/AdRequestParcel:k	Landroid/location/Location;
    //   1752: ifnull +129 -> 1881
    //   1755: aload_1
    //   1756: getfield 366	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   1759: getfield 740	com/google/android/gms/ads/internal/client/AdRequestParcel:k	Landroid/location/Location;
    //   1762: astore_3
    //   1763: new 342	java/util/HashMap
    //   1766: dup
    //   1767: invokespecial 343	java/util/HashMap:<init>	()V
    //   1770: astore 4
    //   1772: aload_3
    //   1773: invokevirtual 746	android/location/Location:getAccuracy	()F
    //   1776: fstore 8
    //   1778: aload_3
    //   1779: invokevirtual 750	android/location/Location:getTime	()J
    //   1782: lstore 12
    //   1784: aload_3
    //   1785: invokevirtual 754	android/location/Location:getLatitude	()D
    //   1788: ldc2_w 755
    //   1791: dmul
    //   1792: d2l
    //   1793: lstore 14
    //   1795: aload_3
    //   1796: invokevirtual 759	android/location/Location:getLongitude	()D
    //   1799: ldc2_w 755
    //   1802: dmul
    //   1803: d2l
    //   1804: lstore 16
    //   1806: aload 4
    //   1808: ldc_w 761
    //   1811: fload 8
    //   1813: ldc_w 762
    //   1816: fmul
    //   1817: invokestatic 767	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   1820: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1823: pop
    //   1824: aload 4
    //   1826: ldc_w 769
    //   1829: lload 14
    //   1831: invokestatic 774	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1834: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1837: pop
    //   1838: aload 4
    //   1840: ldc_w 776
    //   1843: lload 16
    //   1845: invokestatic 774	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1848: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1851: pop
    //   1852: aload 4
    //   1854: ldc_w 778
    //   1857: lload 12
    //   1859: ldc2_w 779
    //   1862: lmul
    //   1863: invokestatic 774	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1866: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1869: pop
    //   1870: aload 5
    //   1872: ldc_w 782
    //   1875: aload 4
    //   1877: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1880: pop
    //   1881: aload_1
    //   1882: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   1885: iconst_2
    //   1886: if_icmplt +16 -> 1902
    //   1889: aload 5
    //   1891: ldc_w 785
    //   1894: aload_1
    //   1895: getfield 787	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:l	Landroid/os/Bundle;
    //   1898: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1901: pop
    //   1902: aload_1
    //   1903: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   1906: iconst_4
    //   1907: if_icmplt +26 -> 1933
    //   1910: aload_1
    //   1911: getfield 241	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Z
    //   1914: ifeq +19 -> 1933
    //   1917: aload 5
    //   1919: ldc_w 789
    //   1922: aload_1
    //   1923: getfield 241	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Z
    //   1926: invokestatic 794	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   1929: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1932: pop
    //   1933: aload_1
    //   1934: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   1937: iconst_4
    //   1938: if_icmplt +331 -> 2269
    //   1941: aload_1
    //   1942: getfield 796	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:o	Landroid/os/Bundle;
    //   1945: ifnull +324 -> 2269
    //   1948: aload_1
    //   1949: getfield 796	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:o	Landroid/os/Bundle;
    //   1952: astore_3
    //   1953: getstatic 802	com/google/android/gms/internal/ax:P	Lcom/google/android/gms/internal/at;
    //   1956: astore 4
    //   1958: invokestatic 805	com/google/android/gms/ads/internal/o:n	()Lcom/google/android/gms/internal/aw;
    //   1961: aload 4
    //   1963: invokevirtual 810	com/google/android/gms/internal/aw:a	(Lcom/google/android/gms/internal/at;)Ljava/lang/Object;
    //   1966: checkcast 791	java/lang/Boolean
    //   1969: invokevirtual 813	java/lang/Boolean:booleanValue	()Z
    //   1972: ifne +308 -> 2280
    //   1975: iconst_4
    //   1976: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   1979: pop
    //   1980: aload 5
    //   1982: ldc_w 815
    //   1985: aload_3
    //   1986: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1989: pop
    //   1990: aload_1
    //   1991: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   1994: iconst_5
    //   1995: if_icmplt +498 -> 2493
    //   1998: aload 5
    //   2000: ldc_w 817
    //   2003: aload_1
    //   2004: getfield 820	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:t	F
    //   2007: invokestatic 767	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   2010: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2013: pop
    //   2014: aload 5
    //   2016: ldc_w 822
    //   2019: aload_1
    //   2020: getfield 825	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:s	I
    //   2023: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2026: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2029: pop
    //   2030: aload 5
    //   2032: ldc_w 827
    //   2035: aload_1
    //   2036: getfield 829	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:r	I
    //   2039: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2042: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2045: pop
    //   2046: aload_1
    //   2047: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   2050: bipush 6
    //   2052: if_icmplt +53 -> 2105
    //   2055: aload_1
    //   2056: getfield 831	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:u	Ljava/lang/String;
    //   2059: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2062: istore 18
    //   2064: iload 18
    //   2066: ifne +23 -> 2089
    //   2069: aload 5
    //   2071: ldc_w 833
    //   2074: new 31	org/json/JSONObject
    //   2077: dup
    //   2078: aload_1
    //   2079: getfield 831	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:u	Ljava/lang/String;
    //   2082: invokespecial 34	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   2085: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2088: pop
    //   2089: aload 5
    //   2091: ldc_w 835
    //   2094: aload_1
    //   2095: getfield 837	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:v	J
    //   2098: invokestatic 774	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   2101: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2104: pop
    //   2105: aload_1
    //   2106: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   2109: bipush 7
    //   2111: if_icmplt +16 -> 2127
    //   2114: aload 5
    //   2116: ldc_w 839
    //   2119: aload_1
    //   2120: getfield 841	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:w	Ljava/lang/String;
    //   2123: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2126: pop
    //   2127: aload_1
    //   2128: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   2131: bipush 11
    //   2133: if_icmplt +55 -> 2188
    //   2136: aload_1
    //   2137: getfield 845	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:C	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   2140: ifnull +48 -> 2188
    //   2143: aload_1
    //   2144: getfield 845	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:C	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   2147: astore_0
    //   2148: new 668	android/os/Bundle
    //   2151: dup
    //   2152: invokespecial 669	android/os/Bundle:<init>	()V
    //   2155: astore_2
    //   2156: aload_2
    //   2157: ldc_w 847
    //   2160: aload_0
    //   2161: getfield 850	com/google/android/gms/ads/internal/request/CapabilityParcel:b	Z
    //   2164: invokevirtual 687	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   2167: aload_2
    //   2168: ldc_w 852
    //   2171: aload_0
    //   2172: getfield 853	com/google/android/gms/ads/internal/request/CapabilityParcel:c	Z
    //   2175: invokevirtual 687	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   2178: aload 5
    //   2180: ldc_w 855
    //   2183: aload_2
    //   2184: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2187: pop
    //   2188: aload_1
    //   2189: getfield 783	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   2192: bipush 12
    //   2194: if_icmplt +26 -> 2220
    //   2197: aload_1
    //   2198: getfield 857	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:D	Ljava/lang/String;
    //   2201: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2204: ifne +16 -> 2220
    //   2207: aload 5
    //   2209: ldc_w 859
    //   2212: aload_1
    //   2213: getfield 857	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:D	Ljava/lang/String;
    //   2216: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2219: pop
    //   2220: iconst_2
    //   2221: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2224: ifeq +36 -> 2260
    //   2227: invokestatic 862	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   2230: aload 5
    //   2232: invokevirtual 867	com/google/android/gms/internal/gw:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   2235: iconst_2
    //   2236: invokevirtual 868	org/json/JSONObject:toString	(I)Ljava/lang/String;
    //   2239: astore_0
    //   2240: new 160	java/lang/StringBuilder
    //   2243: dup
    //   2244: ldc_w 870
    //   2247: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2250: aload_0
    //   2251: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2254: pop
    //   2255: iconst_2
    //   2256: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2259: pop
    //   2260: invokestatic 862	com/google/android/gms/ads/internal/o:e	()Lcom/google/android/gms/internal/gw;
    //   2263: aload 5
    //   2265: invokevirtual 867	com/google/android/gms/internal/gw:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   2268: areturn
    //   2269: new 668	android/os/Bundle
    //   2272: dup
    //   2273: invokespecial 669	android/os/Bundle:<init>	()V
    //   2276: astore_3
    //   2277: goto -324 -> 1953
    //   2280: invokestatic 874	com/google/android/gms/internal/jt:a	()Z
    //   2283: ifne +37 -> 2320
    //   2286: iconst_4
    //   2287: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2290: pop
    //   2291: goto -311 -> 1980
    //   2294: astore_0
    //   2295: new 160	java/lang/StringBuilder
    //   2298: dup
    //   2299: ldc_w 876
    //   2302: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2305: aload_0
    //   2306: invokevirtual 175	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   2309: invokevirtual 167	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2312: pop
    //   2313: iconst_5
    //   2314: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2317: pop
    //   2318: aconst_null
    //   2319: areturn
    //   2320: invokestatic 881	com/google/android/gms/ads/internal/client/n:a	()Lcom/google/android/gms/ads/internal/util/client/a;
    //   2323: pop
    //   2324: invokestatic 885	com/google/android/gms/ads/internal/util/client/a:b	()Z
    //   2327: ifeq +11 -> 2338
    //   2330: iconst_4
    //   2331: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2334: pop
    //   2335: goto -355 -> 1980
    //   2338: aload_1
    //   2339: ifnull +10 -> 2349
    //   2342: aload_1
    //   2343: getfield 587	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   2346: ifnonnull +11 -> 2357
    //   2349: iconst_5
    //   2350: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2353: pop
    //   2354: goto -374 -> 1980
    //   2357: aload_1
    //   2358: getfield 587	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   2361: getfield 886	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   2364: astore 4
    //   2366: aload 4
    //   2368: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2371: ifeq +11 -> 2382
    //   2374: iconst_5
    //   2375: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2378: pop
    //   2379: goto -399 -> 1980
    //   2382: aload_0
    //   2383: aload 4
    //   2385: invokestatic 888	com/google/android/gms/internal/fv:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/UsageInfo;
    //   2388: astore_0
    //   2389: aload_0
    //   2390: ifnull -410 -> 1980
    //   2393: aload_0
    //   2394: invokevirtual 891	com/google/android/gms/appdatasearch/UsageInfo:a	()Lcom/google/android/gms/appdatasearch/DocumentContents;
    //   2397: ifnull -417 -> 1980
    //   2400: aload_0
    //   2401: invokevirtual 891	com/google/android/gms/appdatasearch/UsageInfo:a	()Lcom/google/android/gms/appdatasearch/DocumentContents;
    //   2404: astore_0
    //   2405: aload_0
    //   2406: invokevirtual 894	com/google/android/gms/appdatasearch/DocumentContents:a	()Ljava/lang/String;
    //   2409: astore 6
    //   2411: aload 6
    //   2413: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2416: ifne +12 -> 2428
    //   2419: aload_3
    //   2420: ldc_w 896
    //   2423: aload 6
    //   2425: invokevirtual 678	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   2428: aload_0
    //   2429: ldc_w 898
    //   2432: invokevirtual 901	com/google/android/gms/appdatasearch/DocumentContents:a	(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/DocumentSection;
    //   2435: astore_0
    //   2436: aload_0
    //   2437: ifnull -457 -> 1980
    //   2440: aload_0
    //   2441: getfield 904	com/google/android/gms/appdatasearch/DocumentSection:c	Ljava/lang/String;
    //   2444: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   2447: ifne -467 -> 1980
    //   2450: aload_3
    //   2451: ldc_w 906
    //   2454: aload 4
    //   2456: aload_0
    //   2457: getfield 904	com/google/android/gms/appdatasearch/DocumentSection:c	Ljava/lang/String;
    //   2460: invokestatic 912	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   2463: invokestatic 917	com/google/android/gms/appindexing/a:a	(Ljava/lang/String;Landroid/net/Uri;)Lcom/google/android/gms/appindexing/a;
    //   2466: invokevirtual 919	com/google/android/gms/appindexing/a:toString	()Ljava/lang/String;
    //   2469: invokevirtual 678	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   2472: goto -492 -> 1980
    //   2475: astore_0
    //   2476: iconst_5
    //   2477: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2480: pop
    //   2481: goto -501 -> 1980
    //   2484: astore_0
    //   2485: iconst_4
    //   2486: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2489: pop
    //   2490: goto -510 -> 1980
    //   2493: aload 5
    //   2495: ldc_w 817
    //   2498: aload_2
    //   2499: getfield 542	com/google/android/gms/internal/fz:r	F
    //   2502: invokestatic 767	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   2505: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2508: pop
    //   2509: aload 5
    //   2511: ldc_w 822
    //   2514: aload_2
    //   2515: getfield 921	com/google/android/gms/internal/fz:t	I
    //   2518: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2521: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2524: pop
    //   2525: aload 5
    //   2527: ldc_w 827
    //   2530: aload_2
    //   2531: getfield 922	com/google/android/gms/internal/fz:s	I
    //   2534: invokestatic 328	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2537: invokevirtual 358	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   2540: pop
    //   2541: goto -495 -> 2046
    //   2544: astore_0
    //   2545: iconst_5
    //   2546: invokestatic 101	com/google/android/gms/ads/internal/util/client/b:a	(I)Z
    //   2549: pop
    //   2550: goto -461 -> 2089
    //   2553: aconst_null
    //   2554: astore_3
    //   2555: goto -2059 -> 496
    //   2558: aconst_null
    //   2559: astore_3
    //   2560: goto -2020 -> 540
    //   2563: ldc_w 924
    //   2566: astore_3
    //   2567: goto -2071 -> 496
    //   2570: ldc_w 926
    //   2573: astore_3
    //   2574: goto -2078 -> 496
    //   2577: ldc_w 928
    //   2580: astore_3
    //   2581: goto -2085 -> 496
    //   2584: ldc_w 930
    //   2587: astore_3
    //   2588: goto -2092 -> 496
    //   2591: ldc_w 932
    //   2594: astore_3
    //   2595: goto -2055 -> 540
    //   2598: ldc_w 934
    //   2601: astore_3
    //   2602: goto -2062 -> 540
    //   2605: ldc_w 936
    //   2608: astore_3
    //   2609: goto -2069 -> 540
    //   2612: iload 9
    //   2614: tableswitch	default:+22->2636, 1:+35->2649, 2:+41->2655
    //   2636: ldc_w 938
    //   2639: astore_3
    //   2640: goto -1500 -> 1140
    //   2643: iconst_0
    //   2644: istore 9
    //   2646: goto -34 -> 2612
    //   2649: ldc 72
    //   2651: astore_3
    //   2652: goto -1512 -> 1140
    //   2655: ldc 110
    //   2657: astore_3
    //   2658: goto -1518 -> 1140
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	2661	0	paramContext	Context
    //   0	2661	1	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   0	2661	2	paramfz	fz
    //   0	2661	3	parama	gd.a
    //   0	2661	4	paramaq	aq
    //   0	2661	5	paramString1	String
    //   0	2661	6	paramString2	String
    //   0	2661	7	paramList	List<String>
    //   1776	36	8	f	float
    //   947	1698	9	i	int
    //   999	73	10	j	int
    //   944	10	11	k	int
    //   1782	76	12	l1	long
    //   1793	37	14	l2	long
    //   1804	40	16	l3	long
    //   2062	3	18	bool	boolean
    //   303	764	19	localSearchAdRequestParcel	com.google.android.gms.ads.internal.client.SearchAdRequestParcel
    // Exception table:
    //   from	to	target	type
    //   0	36	2294	org/json/JSONException
    //   36	56	2294	org/json/JSONException
    //   56	66	2294	org/json/JSONException
    //   70	80	2294	org/json/JSONException
    //   80	119	2294	org/json/JSONException
    //   119	141	2294	org/json/JSONException
    //   141	167	2294	org/json/JSONException
    //   167	189	2294	org/json/JSONException
    //   189	215	2294	org/json/JSONException
    //   215	235	2294	org/json/JSONException
    //   235	265	2294	org/json/JSONException
    //   265	290	2294	org/json/JSONException
    //   290	333	2294	org/json/JSONException
    //   333	361	2294	org/json/JSONException
    //   361	417	2294	org/json/JSONException
    //   417	445	2294	org/json/JSONException
    //   445	496	2294	org/json/JSONException
    //   500	510	2294	org/json/JSONException
    //   510	540	2294	org/json/JSONException
    //   544	554	2294	org/json/JSONException
    //   554	576	2294	org/json/JSONException
    //   576	604	2294	org/json/JSONException
    //   604	626	2294	org/json/JSONException
    //   626	654	2294	org/json/JSONException
    //   654	693	2294	org/json/JSONException
    //   693	724	2294	org/json/JSONException
    //   724	755	2294	org/json/JSONException
    //   755	777	2294	org/json/JSONException
    //   777	799	2294	org/json/JSONException
    //   799	831	2294	org/json/JSONException
    //   831	870	2294	org/json/JSONException
    //   870	894	2294	org/json/JSONException
    //   894	914	2294	org/json/JSONException
    //   914	946	2294	org/json/JSONException
    //   963	978	2294	org/json/JSONException
    //   978	1001	2294	org/json/JSONException
    //   1001	1040	2294	org/json/JSONException
    //   1040	1047	2294	org/json/JSONException
    //   1056	1063	2294	org/json/JSONException
    //   1066	1073	2294	org/json/JSONException
    //   1076	1086	2294	org/json/JSONException
    //   1086	1127	2294	org/json/JSONException
    //   1131	1137	2294	org/json/JSONException
    //   1140	1175	2294	org/json/JSONException
    //   1175	1230	2294	org/json/JSONException
    //   1230	1354	2294	org/json/JSONException
    //   1354	1387	2294	org/json/JSONException
    //   1387	1407	2294	org/json/JSONException
    //   1407	1475	2294	org/json/JSONException
    //   1475	1516	2294	org/json/JSONException
    //   1516	1881	2294	org/json/JSONException
    //   1881	1902	2294	org/json/JSONException
    //   1902	1933	2294	org/json/JSONException
    //   1933	1953	2294	org/json/JSONException
    //   1953	1980	2294	org/json/JSONException
    //   1980	2046	2294	org/json/JSONException
    //   2046	2064	2294	org/json/JSONException
    //   2089	2105	2294	org/json/JSONException
    //   2105	2127	2294	org/json/JSONException
    //   2127	2188	2294	org/json/JSONException
    //   2188	2220	2294	org/json/JSONException
    //   2220	2260	2294	org/json/JSONException
    //   2260	2269	2294	org/json/JSONException
    //   2269	2277	2294	org/json/JSONException
    //   2280	2291	2294	org/json/JSONException
    //   2320	2335	2294	org/json/JSONException
    //   2342	2349	2294	org/json/JSONException
    //   2349	2354	2294	org/json/JSONException
    //   2357	2379	2294	org/json/JSONException
    //   2382	2389	2294	org/json/JSONException
    //   2393	2428	2294	org/json/JSONException
    //   2428	2436	2294	org/json/JSONException
    //   2440	2472	2294	org/json/JSONException
    //   2476	2481	2294	org/json/JSONException
    //   2485	2490	2294	org/json/JSONException
    //   2493	2541	2294	org/json/JSONException
    //   2545	2550	2294	org/json/JSONException
    //   2428	2436	2475	java/lang/IllegalArgumentException
    //   2440	2472	2475	java/lang/IllegalArgumentException
    //   2382	2389	2484	java/lang/RuntimeException
    //   2393	2428	2484	java/lang/RuntimeException
    //   2428	2436	2484	java/lang/RuntimeException
    //   2440	2472	2484	java/lang/RuntimeException
    //   2476	2481	2484	java/lang/RuntimeException
    //   2069	2089	2544	org/json/JSONException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */