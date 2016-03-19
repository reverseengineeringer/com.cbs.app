package com.adobe.mobile;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class af
{
  private static final Object A = new Object();
  private static final Object C = new Object();
  private static InputStream D = null;
  private static final Object E = new Object();
  private static final ag a = ag.a;
  private static af t = null;
  private static final Object u = new Object();
  private static final Object w = new Object();
  private static final Object y = new Object();
  private Boolean B;
  private String b;
  private String c;
  private String d;
  private boolean e;
  private boolean f;
  private boolean g;
  private int h;
  private int i;
  private int j;
  private ag k;
  private List<List<Object>> l;
  private String m;
  private String n;
  private int o;
  private String p;
  private String q;
  private ArrayList<m> r;
  private String s;
  private Boolean v;
  private Boolean x;
  private Boolean z;
  
  /* Error */
  private af()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 69	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: aconst_null
    //   6: putfield 90	com/adobe/mobile/af:b	Ljava/lang/String;
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 92	com/adobe/mobile/af:c	Ljava/lang/String;
    //   14: aload_0
    //   15: ldc 94
    //   17: putfield 96	com/adobe/mobile/af:d	Ljava/lang/String;
    //   20: aload_0
    //   21: iconst_0
    //   22: putfield 98	com/adobe/mobile/af:e	Z
    //   25: aload_0
    //   26: iconst_0
    //   27: putfield 100	com/adobe/mobile/af:f	Z
    //   30: aload_0
    //   31: iconst_1
    //   32: putfield 102	com/adobe/mobile/af:g	Z
    //   35: aload_0
    //   36: sipush 300
    //   39: putfield 104	com/adobe/mobile/af:h	I
    //   42: aload_0
    //   43: iconst_0
    //   44: putfield 106	com/adobe/mobile/af:i	I
    //   47: aload_0
    //   48: iconst_0
    //   49: putfield 108	com/adobe/mobile/af:j	I
    //   52: aload_0
    //   53: getstatic 64	com/adobe/mobile/af:a	Lcom/adobe/mobile/ag;
    //   56: putfield 110	com/adobe/mobile/af:k	Lcom/adobe/mobile/ag;
    //   59: aload_0
    //   60: aconst_null
    //   61: putfield 112	com/adobe/mobile/af:l	Ljava/util/List;
    //   64: aload_0
    //   65: aconst_null
    //   66: putfield 114	com/adobe/mobile/af:m	Ljava/lang/String;
    //   69: aload_0
    //   70: aconst_null
    //   71: putfield 116	com/adobe/mobile/af:n	Ljava/lang/String;
    //   74: aload_0
    //   75: iconst_2
    //   76: putfield 118	com/adobe/mobile/af:o	I
    //   79: aload_0
    //   80: aconst_null
    //   81: putfield 120	com/adobe/mobile/af:p	Ljava/lang/String;
    //   84: aload_0
    //   85: aconst_null
    //   86: putfield 122	com/adobe/mobile/af:q	Ljava/lang/String;
    //   89: aload_0
    //   90: aconst_null
    //   91: putfield 124	com/adobe/mobile/af:r	Ljava/util/ArrayList;
    //   94: aload_0
    //   95: aconst_null
    //   96: putfield 126	com/adobe/mobile/af:s	Ljava/lang/String;
    //   99: aload_0
    //   100: aconst_null
    //   101: putfield 128	com/adobe/mobile/af:v	Ljava/lang/Boolean;
    //   104: aload_0
    //   105: aconst_null
    //   106: putfield 130	com/adobe/mobile/af:x	Ljava/lang/Boolean;
    //   109: aload_0
    //   110: aconst_null
    //   111: putfield 132	com/adobe/mobile/af:z	Ljava/lang/Boolean;
    //   114: aload_0
    //   115: aconst_null
    //   116: putfield 134	com/adobe/mobile/af:B	Ljava/lang/Boolean;
    //   119: invokestatic 137	com/adobe/mobile/af:t	()Lorg/json/JSONObject;
    //   122: astore_3
    //   123: aload_3
    //   124: ifnonnull +4 -> 128
    //   127: return
    //   128: aload_3
    //   129: ldc -117
    //   131: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   134: astore_2
    //   135: aload_2
    //   136: ifnull +135 -> 271
    //   139: aload_0
    //   140: aload_2
    //   141: ldc -109
    //   143: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   146: putfield 92	com/adobe/mobile/af:c	Ljava/lang/String;
    //   149: aload_0
    //   150: aload_2
    //   151: ldc -103
    //   153: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   156: putfield 90	com/adobe/mobile/af:b	Ljava/lang/String;
    //   159: aload_0
    //   160: aload_2
    //   161: ldc -101
    //   163: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   166: putfield 96	com/adobe/mobile/af:d	Ljava/lang/String;
    //   169: aload_0
    //   170: aload_2
    //   171: ldc -99
    //   173: invokevirtual 161	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   176: putfield 98	com/adobe/mobile/af:e	Z
    //   179: aload_0
    //   180: aload_2
    //   181: ldc -93
    //   183: invokevirtual 161	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   186: putfield 100	com/adobe/mobile/af:f	Z
    //   189: aload_0
    //   190: aload_2
    //   191: ldc -91
    //   193: invokevirtual 161	org/json/JSONObject:getBoolean	(Ljava/lang/String;)Z
    //   196: putfield 102	com/adobe/mobile/af:g	Z
    //   199: aload_0
    //   200: aload_2
    //   201: ldc -89
    //   203: invokevirtual 171	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   206: putfield 104	com/adobe/mobile/af:h	I
    //   209: aload_0
    //   210: aload_2
    //   211: ldc -83
    //   213: invokevirtual 171	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   216: putfield 106	com/adobe/mobile/af:i	I
    //   219: aload_0
    //   220: aload_2
    //   221: ldc -81
    //   223: invokevirtual 171	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   226: putfield 108	com/adobe/mobile/af:j	I
    //   229: invokestatic 180	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   232: ldc -74
    //   234: invokeinterface 187 2 0
    //   239: ifeq +336 -> 575
    //   242: aload_0
    //   243: invokestatic 191	com/adobe/mobile/ag:values	()[Lcom/adobe/mobile/ag;
    //   246: invokestatic 180	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   249: ldc -74
    //   251: iconst_0
    //   252: invokeinterface 194 3 0
    //   257: aaload
    //   258: putfield 110	com/adobe/mobile/af:k	Lcom/adobe/mobile/ag;
    //   261: aload_0
    //   262: aload_2
    //   263: ldc -60
    //   265: invokevirtual 200	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   268: invokespecial 203	com/adobe/mobile/af:a	(Lorg/json/JSONArray;)V
    //   271: aload_3
    //   272: ldc -51
    //   274: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   277: astore_1
    //   278: aload_1
    //   279: ifnull +23 -> 302
    //   282: aload_0
    //   283: aload_1
    //   284: ldc -49
    //   286: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   289: putfield 116	com/adobe/mobile/af:n	Ljava/lang/String;
    //   292: aload_0
    //   293: aload_1
    //   294: ldc -47
    //   296: invokevirtual 171	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   299: putfield 118	com/adobe/mobile/af:o	I
    //   302: aload_3
    //   303: ldc -45
    //   305: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   308: astore_1
    //   309: aload_1
    //   310: ifnull +13 -> 323
    //   313: aload_0
    //   314: aload_1
    //   315: ldc -109
    //   317: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   320: putfield 120	com/adobe/mobile/af:p	Ljava/lang/String;
    //   323: aload_3
    //   324: ldc -43
    //   326: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   329: astore_1
    //   330: aload_1
    //   331: ifnull +23 -> 354
    //   334: aload_0
    //   335: aload_1
    //   336: ldc -41
    //   338: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   341: putfield 122	com/adobe/mobile/af:q	Ljava/lang/String;
    //   344: aload_0
    //   345: aload_1
    //   346: ldc -39
    //   348: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   351: putfield 114	com/adobe/mobile/af:m	Ljava/lang/String;
    //   354: invokestatic 220	com/adobe/mobile/am:o	()Z
    //   357: ifne +26 -> 383
    //   360: aload_3
    //   361: ldc -41
    //   363: invokevirtual 200	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   366: astore_1
    //   367: aload_1
    //   368: ifnull +15 -> 383
    //   371: aload_1
    //   372: invokevirtual 226	org/json/JSONArray:length	()I
    //   375: ifle +8 -> 383
    //   378: aload_0
    //   379: aload_1
    //   380: invokespecial 228	com/adobe/mobile/af:b	(Lorg/json/JSONArray;)V
    //   383: aload_3
    //   384: ldc -26
    //   386: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   389: astore_1
    //   390: aload_1
    //   391: ifnull +13 -> 404
    //   394: aload_0
    //   395: aload_1
    //   396: ldc -24
    //   398: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   401: putfield 126	com/adobe/mobile/af:s	Ljava/lang/String;
    //   404: invokestatic 220	com/adobe/mobile/am:o	()Z
    //   407: ifne +59 -> 466
    //   410: aload_0
    //   411: getfield 122	com/adobe/mobile/af:q	Ljava/lang/String;
    //   414: ifnull +24 -> 438
    //   417: aload_0
    //   418: getfield 122	com/adobe/mobile/af:q	Ljava/lang/String;
    //   421: invokevirtual 235	java/lang/String:length	()I
    //   424: ifle +14 -> 438
    //   427: aload_0
    //   428: aload_0
    //   429: getfield 122	com/adobe/mobile/af:q	Ljava/lang/String;
    //   432: invokestatic 240	com/adobe/mobile/aj:b	(Ljava/lang/String;)Ljava/io/File;
    //   435: invokevirtual 243	com/adobe/mobile/af:a	(Ljava/io/File;)V
    //   438: aload_0
    //   439: getfield 114	com/adobe/mobile/af:m	Ljava/lang/String;
    //   442: ifnull +24 -> 466
    //   445: aload_0
    //   446: getfield 114	com/adobe/mobile/af:m	Ljava/lang/String;
    //   449: invokevirtual 235	java/lang/String:length	()I
    //   452: ifle +14 -> 466
    //   455: aload_0
    //   456: aload_0
    //   457: getfield 114	com/adobe/mobile/af:m	Ljava/lang/String;
    //   460: invokestatic 240	com/adobe/mobile/aj:b	(Ljava/lang/String;)Ljava/io/File;
    //   463: invokevirtual 245	com/adobe/mobile/af:b	(Ljava/io/File;)V
    //   466: aload_0
    //   467: invokespecial 247	com/adobe/mobile/af:u	()V
    //   470: return
    //   471: astore_1
    //   472: ldc -7
    //   474: iconst_0
    //   475: anewarray 4	java/lang/Object
    //   478: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   481: aconst_null
    //   482: astore_2
    //   483: goto -348 -> 135
    //   486: astore_1
    //   487: aload_0
    //   488: aconst_null
    //   489: putfield 92	com/adobe/mobile/af:c	Ljava/lang/String;
    //   492: aload_0
    //   493: aconst_null
    //   494: putfield 90	com/adobe/mobile/af:b	Ljava/lang/String;
    //   497: ldc -2
    //   499: iconst_0
    //   500: anewarray 4	java/lang/Object
    //   503: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   506: goto -347 -> 159
    //   509: astore_1
    //   510: aload_0
    //   511: ldc 94
    //   513: putfield 96	com/adobe/mobile/af:d	Ljava/lang/String;
    //   516: goto -347 -> 169
    //   519: astore_1
    //   520: aload_0
    //   521: iconst_0
    //   522: putfield 98	com/adobe/mobile/af:e	Z
    //   525: goto -346 -> 179
    //   528: astore_1
    //   529: aload_0
    //   530: iconst_0
    //   531: putfield 100	com/adobe/mobile/af:f	Z
    //   534: goto -345 -> 189
    //   537: astore_1
    //   538: aload_0
    //   539: iconst_1
    //   540: putfield 102	com/adobe/mobile/af:g	Z
    //   543: goto -344 -> 199
    //   546: astore_1
    //   547: aload_0
    //   548: sipush 300
    //   551: putfield 104	com/adobe/mobile/af:h	I
    //   554: goto -345 -> 209
    //   557: astore_1
    //   558: aload_0
    //   559: iconst_0
    //   560: putfield 106	com/adobe/mobile/af:i	I
    //   563: goto -344 -> 219
    //   566: astore_1
    //   567: aload_0
    //   568: iconst_0
    //   569: putfield 108	com/adobe/mobile/af:j	I
    //   572: goto -343 -> 229
    //   575: aload_2
    //   576: ldc_w 256
    //   579: invokevirtual 151	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   582: astore_1
    //   583: aload_1
    //   584: ifnull +95 -> 679
    //   587: aload_1
    //   588: ifnull +84 -> 672
    //   591: aload_1
    //   592: ldc_w 258
    //   595: invokevirtual 261	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   598: ifeq +40 -> 638
    //   601: getstatic 63	com/adobe/mobile/ag:a	Lcom/adobe/mobile/ag;
    //   604: astore_1
    //   605: aload_0
    //   606: aload_1
    //   607: putfield 110	com/adobe/mobile/af:k	Lcom/adobe/mobile/ag;
    //   610: goto -349 -> 261
    //   613: astore_1
    //   614: ldc_w 263
    //   617: iconst_1
    //   618: anewarray 4	java/lang/Object
    //   621: dup
    //   622: iconst_0
    //   623: aload_1
    //   624: invokevirtual 267	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   627: aastore
    //   628: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   631: return
    //   632: astore_1
    //   633: aconst_null
    //   634: astore_1
    //   635: goto -52 -> 583
    //   638: aload_1
    //   639: ldc_w 271
    //   642: invokevirtual 261	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   645: ifeq +10 -> 655
    //   648: getstatic 273	com/adobe/mobile/ag:b	Lcom/adobe/mobile/ag;
    //   651: astore_1
    //   652: goto -47 -> 605
    //   655: aload_1
    //   656: ldc_w 275
    //   659: invokevirtual 261	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   662: ifeq +10 -> 672
    //   665: getstatic 277	com/adobe/mobile/ag:c	Lcom/adobe/mobile/ag;
    //   668: astore_1
    //   669: goto -64 -> 605
    //   672: getstatic 64	com/adobe/mobile/af:a	Lcom/adobe/mobile/ag;
    //   675: astore_1
    //   676: goto -71 -> 605
    //   679: getstatic 64	com/adobe/mobile/af:a	Lcom/adobe/mobile/ag;
    //   682: astore_1
    //   683: goto -78 -> 605
    //   686: astore_1
    //   687: ldc_w 279
    //   690: iconst_1
    //   691: anewarray 4	java/lang/Object
    //   694: dup
    //   695: iconst_0
    //   696: aload_1
    //   697: invokevirtual 282	org/json/JSONException:getLocalizedMessage	()Ljava/lang/String;
    //   700: aastore
    //   701: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   704: goto -433 -> 271
    //   707: astore_1
    //   708: ldc_w 284
    //   711: iconst_0
    //   712: anewarray 4	java/lang/Object
    //   715: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   718: aconst_null
    //   719: astore_1
    //   720: goto -442 -> 278
    //   723: astore_2
    //   724: aload_0
    //   725: aconst_null
    //   726: putfield 116	com/adobe/mobile/af:n	Ljava/lang/String;
    //   729: ldc_w 284
    //   732: iconst_0
    //   733: anewarray 4	java/lang/Object
    //   736: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   739: goto -447 -> 292
    //   742: astore_1
    //   743: aload_0
    //   744: iconst_2
    //   745: putfield 118	com/adobe/mobile/af:o	I
    //   748: goto -446 -> 302
    //   751: astore_1
    //   752: ldc_w 286
    //   755: iconst_0
    //   756: anewarray 4	java/lang/Object
    //   759: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   762: aconst_null
    //   763: astore_1
    //   764: goto -455 -> 309
    //   767: astore_1
    //   768: aload_0
    //   769: aconst_null
    //   770: putfield 120	com/adobe/mobile/af:p	Ljava/lang/String;
    //   773: ldc_w 286
    //   776: iconst_0
    //   777: anewarray 4	java/lang/Object
    //   780: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   783: goto -460 -> 323
    //   786: astore_1
    //   787: ldc_w 288
    //   790: iconst_0
    //   791: anewarray 4	java/lang/Object
    //   794: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   797: aconst_null
    //   798: astore_1
    //   799: goto -469 -> 330
    //   802: astore_2
    //   803: ldc_w 290
    //   806: iconst_1
    //   807: anewarray 4	java/lang/Object
    //   810: dup
    //   811: iconst_0
    //   812: aload_2
    //   813: invokevirtual 282	org/json/JSONException:getLocalizedMessage	()Ljava/lang/String;
    //   816: aastore
    //   817: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   820: goto -476 -> 344
    //   823: astore_1
    //   824: ldc_w 292
    //   827: iconst_1
    //   828: anewarray 4	java/lang/Object
    //   831: dup
    //   832: iconst_0
    //   833: aload_1
    //   834: invokevirtual 282	org/json/JSONException:getLocalizedMessage	()Ljava/lang/String;
    //   837: aastore
    //   838: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   841: goto -487 -> 354
    //   844: astore_1
    //   845: ldc_w 294
    //   848: iconst_0
    //   849: anewarray 4	java/lang/Object
    //   852: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   855: aconst_null
    //   856: astore_1
    //   857: goto -490 -> 367
    //   860: astore_1
    //   861: ldc_w 296
    //   864: iconst_0
    //   865: anewarray 4	java/lang/Object
    //   868: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   871: aconst_null
    //   872: astore_1
    //   873: goto -483 -> 390
    //   876: astore_1
    //   877: aload_0
    //   878: aconst_null
    //   879: putfield 126	com/adobe/mobile/af:s	Ljava/lang/String;
    //   882: ldc_w 298
    //   885: iconst_0
    //   886: anewarray 4	java/lang/Object
    //   889: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   892: goto -488 -> 404
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	895	0	this	af
    //   277	119	1	localObject1	Object
    //   471	1	1	localJSONException1	JSONException
    //   486	1	1	localJSONException2	JSONException
    //   509	1	1	localJSONException3	JSONException
    //   519	1	1	localJSONException4	JSONException
    //   528	1	1	localJSONException5	JSONException
    //   537	1	1	localJSONException6	JSONException
    //   546	1	1	localJSONException7	JSONException
    //   557	1	1	localJSONException8	JSONException
    //   566	1	1	localJSONException9	JSONException
    //   582	25	1	localObject2	Object
    //   613	11	1	localb	am.b
    //   632	1	1	localJSONException10	JSONException
    //   634	49	1	localag	ag
    //   686	11	1	localJSONException11	JSONException
    //   707	1	1	localJSONException12	JSONException
    //   719	1	1	localObject3	Object
    //   742	1	1	localJSONException13	JSONException
    //   751	1	1	localJSONException14	JSONException
    //   763	1	1	localObject4	Object
    //   767	1	1	localJSONException15	JSONException
    //   786	1	1	localJSONException16	JSONException
    //   798	1	1	localObject5	Object
    //   823	11	1	localJSONException17	JSONException
    //   844	1	1	localJSONException18	JSONException
    //   856	1	1	localObject6	Object
    //   860	1	1	localJSONException19	JSONException
    //   872	1	1	localObject7	Object
    //   876	1	1	localJSONException20	JSONException
    //   134	442	2	localJSONObject1	JSONObject
    //   723	1	2	localJSONException21	JSONException
    //   802	11	2	localJSONException22	JSONException
    //   122	262	3	localJSONObject2	JSONObject
    // Exception table:
    //   from	to	target	type
    //   128	135	471	org/json/JSONException
    //   139	159	486	org/json/JSONException
    //   159	169	509	org/json/JSONException
    //   169	179	519	org/json/JSONException
    //   179	189	528	org/json/JSONException
    //   189	199	537	org/json/JSONException
    //   199	209	546	org/json/JSONException
    //   209	219	557	org/json/JSONException
    //   219	229	566	org/json/JSONException
    //   229	261	613	com/adobe/mobile/am$b
    //   575	583	613	com/adobe/mobile/am$b
    //   591	605	613	com/adobe/mobile/am$b
    //   605	610	613	com/adobe/mobile/am$b
    //   638	652	613	com/adobe/mobile/am$b
    //   655	669	613	com/adobe/mobile/am$b
    //   672	676	613	com/adobe/mobile/am$b
    //   679	683	613	com/adobe/mobile/am$b
    //   575	583	632	org/json/JSONException
    //   261	271	686	org/json/JSONException
    //   271	278	707	org/json/JSONException
    //   282	292	723	org/json/JSONException
    //   292	302	742	org/json/JSONException
    //   302	309	751	org/json/JSONException
    //   313	323	767	org/json/JSONException
    //   323	330	786	org/json/JSONException
    //   334	344	802	org/json/JSONException
    //   344	354	823	org/json/JSONException
    //   360	367	844	org/json/JSONException
    //   383	390	860	org/json/JSONException
    //   394	404	876	org/json/JSONException
  }
  
  protected static af a()
  {
    synchronized (u)
    {
      if (t == null) {
        t = new af();
      }
      af localaf = t;
      return localaf;
    }
  }
  
  private static JSONObject a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    try
    {
      Object localObject1 = new byte[paramInputStream.available()];
      paramInputStream.read((byte[])localObject1);
      localObject1 = new JSONObject(new String((byte[])localObject1, "UTF-8"));
      try
      {
        paramInputStream.close();
        return (JSONObject)localObject1;
      }
      catch (IOException paramInputStream)
      {
        am.a("Config - Unable to close stream (%s)", new Object[] { paramInputStream.getMessage() });
        return (JSONObject)localObject1;
      }
      try
      {
        paramInputStream.close();
        throw ((Throwable)localObject2);
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          am.a("Config - Unable to close stream (%s)", new Object[] { paramInputStream.getMessage() });
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException = localIOException;
      am.a("Config - Exception when reading config (%s)", new Object[] { localIOException.getMessage() });
      try
      {
        paramInputStream.close();
        return new JSONObject();
      }
      catch (IOException paramInputStream)
      {
        for (;;)
        {
          am.a("Config - Unable to close stream (%s)", new Object[] { paramInputStream.getMessage() });
        }
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        localNullPointerException = localNullPointerException;
        am.a("Config - Stream closed when attempting to load config (%s)", new Object[] { localNullPointerException.getMessage() });
        try
        {
          paramInputStream.close();
        }
        catch (IOException paramInputStream)
        {
          am.a("Config - Unable to close stream (%s)", new Object[] { paramInputStream.getMessage() });
        }
      }
    }
    finally {}
  }
  
  private void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {}
    for (;;)
    {
      return;
      try
      {
        l = new ArrayList();
        int i2 = paramJSONArray.length();
        int i1 = 0;
        while (i1 < i2)
        {
          JSONArray localJSONArray = paramJSONArray.getJSONArray(i1);
          ArrayList localArrayList = new ArrayList(4);
          localArrayList.add(localJSONArray.getString(0));
          localArrayList.add(Double.valueOf(localJSONArray.getDouble(1)));
          localArrayList.add(Double.valueOf(localJSONArray.getDouble(2)));
          localArrayList.add(Double.valueOf(localJSONArray.getDouble(3)));
          l.add(localArrayList);
          i1 += 1;
        }
        return;
      }
      catch (JSONException paramJSONArray)
      {
        am.a("Messages - Unable to parse remote points of interest JSON (%s)", new Object[] { paramJSONArray.getMessage() });
      }
    }
  }
  
  private void b(JSONArray paramJSONArray)
  {
    for (;;)
    {
      int i1;
      try
      {
        ArrayList localArrayList = new ArrayList();
        int i2 = paramJSONArray.length();
        i1 = 0;
        if (i1 < i2)
        {
          m localm = m.a(paramJSONArray.getJSONObject(i1));
          if (localm != null)
          {
            am.c("Messages - loaded message - %s", new Object[] { localm.g() });
            localArrayList.add(localm);
          }
        }
        else
        {
          r = localArrayList;
          return;
        }
      }
      catch (JSONException paramJSONArray)
      {
        am.a("Messages - Unable to parse messages JSON (%s)", new Object[] { paramJSONArray.getMessage() });
        return;
      }
      i1 += 1;
    }
  }
  
  private static JSONObject t()
  {
    Object localObject4 = null;
    InputStream localInputStream;
    synchronized (E)
    {
      localInputStream = D;
      ??? = localObject4;
      if (localInputStream == null) {}
    }
    Object localObject3;
    try
    {
      am.c("Config - Attempting to load config file from override stream", new Object[0]);
      ??? = a(D);
      localObject4 = ???;
      if (??? == null)
      {
        if (localInputStream != null) {
          am.c("Config - Failed attempting to load custom config, will fall back to standard config location.", new Object[0]);
        }
        am.c("Config - Attempting to load config file from default location", new Object[0]);
      }
      try
      {
        localObject4 = a(am.s().getResources().getAssets().open("ADBMobileConfig.json"));
        return (JSONObject)localObject4;
      }
      catch (IOException localIOException2)
      {
        Object localObject2;
        am.a("Config - Exception loading config file (%s)", new Object[] { localIOException2.getMessage() });
        return (JSONObject)localObject3;
      }
      catch (JSONException localJSONException2)
      {
        am.a("Config - Exception parsing config file (%s)", new Object[] { localJSONException2.getMessage() });
        return (JSONObject)localObject3;
      }
      catch (am.b localb)
      {
        am.a("Config - Null context when attempting to read config file (%s)", new Object[] { localb.getMessage() });
      }
      localObject5 = finally;
      throw ((Throwable)localObject5);
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        am.c("Config - Error loading user defined config (%s)", new Object[] { localIOException1.getMessage() });
        localObject2 = localObject5;
      }
    }
    catch (JSONException localJSONException1)
    {
      for (;;)
      {
        am.c("Config - Error parsing user defined config (%s)", new Object[] { localJSONException1.getMessage() });
        localObject3 = localObject5;
      }
    }
    return (JSONObject)localObject3;
  }
  
  private void u()
  {
    if (r == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = r.iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        HashMap localHashMap = m.c();
        if ((localm.b()) && (b.a() != ((Integer)localHashMap.get(a)).intValue())) {
          localm.a();
        }
      }
    }
  }
  
  /* Error */
  protected final void a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnonnull +4 -> 7
    //   6: return
    //   7: new 475	java/io/FileInputStream
    //   10: dup
    //   11: aload_1
    //   12: invokespecial 477	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: astore_2
    //   16: aload_2
    //   17: astore_1
    //   18: aload_2
    //   19: invokestatic 396	com/adobe/mobile/af:a	(Ljava/io/InputStream;)Lorg/json/JSONObject;
    //   22: astore 4
    //   24: aload 4
    //   26: ifnonnull +47 -> 73
    //   29: aload_2
    //   30: astore_1
    //   31: ldc_w 479
    //   34: iconst_0
    //   35: anewarray 4	java/lang/Object
    //   38: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   41: aload_2
    //   42: astore_1
    //   43: ldc_w 481
    //   46: invokestatic 483	com/adobe/mobile/aj:c	(Ljava/lang/String;)V
    //   49: aload_2
    //   50: invokevirtual 484	java/io/FileInputStream:close	()V
    //   53: return
    //   54: astore_1
    //   55: ldc_w 486
    //   58: iconst_1
    //   59: anewarray 4	java/lang/Object
    //   62: dup
    //   63: iconst_0
    //   64: aload_1
    //   65: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   68: aastore
    //   69: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   72: return
    //   73: aload_2
    //   74: astore_1
    //   75: aload 4
    //   77: ldc -41
    //   79: invokevirtual 200	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   82: astore 4
    //   84: aload 4
    //   86: astore_3
    //   87: aload_2
    //   88: astore_1
    //   89: ldc_w 489
    //   92: iconst_0
    //   93: anewarray 4	java/lang/Object
    //   96: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   99: aload_3
    //   100: ifnull +12 -> 112
    //   103: aload_2
    //   104: astore_1
    //   105: aload_3
    //   106: invokevirtual 226	org/json/JSONArray:length	()I
    //   109: ifgt +133 -> 242
    //   112: aload_2
    //   113: astore_1
    //   114: ldc_w 481
    //   117: invokestatic 483	com/adobe/mobile/aj:c	(Ljava/lang/String;)V
    //   120: aload_2
    //   121: astore_1
    //   122: aload_0
    //   123: aconst_null
    //   124: putfield 124	com/adobe/mobile/af:r	Ljava/util/ArrayList;
    //   127: goto -78 -> 49
    //   130: astore_3
    //   131: aload_2
    //   132: astore_1
    //   133: ldc_w 491
    //   136: iconst_1
    //   137: anewarray 4	java/lang/Object
    //   140: dup
    //   141: iconst_0
    //   142: aload_3
    //   143: invokevirtual 282	org/json/JSONException:getLocalizedMessage	()Ljava/lang/String;
    //   146: aastore
    //   147: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   150: aload_2
    //   151: ifnull -145 -> 6
    //   154: aload_2
    //   155: invokevirtual 484	java/io/FileInputStream:close	()V
    //   158: return
    //   159: astore_1
    //   160: ldc_w 486
    //   163: iconst_1
    //   164: anewarray 4	java/lang/Object
    //   167: dup
    //   168: iconst_0
    //   169: aload_1
    //   170: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   173: aastore
    //   174: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   177: return
    //   178: astore_1
    //   179: aload_2
    //   180: astore_1
    //   181: ldc_w 493
    //   184: iconst_0
    //   185: anewarray 4	java/lang/Object
    //   188: invokestatic 252	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   191: goto -104 -> 87
    //   194: astore_3
    //   195: aload_2
    //   196: astore_1
    //   197: ldc_w 495
    //   200: iconst_1
    //   201: anewarray 4	java/lang/Object
    //   204: dup
    //   205: iconst_0
    //   206: aload_3
    //   207: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   210: aastore
    //   211: invokestatic 497	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   214: aload_2
    //   215: ifnull -209 -> 6
    //   218: aload_2
    //   219: invokevirtual 484	java/io/FileInputStream:close	()V
    //   222: return
    //   223: astore_1
    //   224: ldc_w 486
    //   227: iconst_1
    //   228: anewarray 4	java/lang/Object
    //   231: dup
    //   232: iconst_0
    //   233: aload_1
    //   234: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   237: aastore
    //   238: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   241: return
    //   242: aload_2
    //   243: astore_1
    //   244: aload_0
    //   245: aload_3
    //   246: invokespecial 228	com/adobe/mobile/af:b	(Lorg/json/JSONArray;)V
    //   249: goto -200 -> 49
    //   252: astore_3
    //   253: aload_1
    //   254: astore_2
    //   255: aload_3
    //   256: astore_1
    //   257: aload_2
    //   258: ifnull +7 -> 265
    //   261: aload_2
    //   262: invokevirtual 484	java/io/FileInputStream:close	()V
    //   265: aload_1
    //   266: athrow
    //   267: astore_2
    //   268: ldc_w 486
    //   271: iconst_1
    //   272: anewarray 4	java/lang/Object
    //   275: dup
    //   276: iconst_0
    //   277: aload_2
    //   278: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   281: aastore
    //   282: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   285: goto -20 -> 265
    //   288: astore_1
    //   289: aconst_null
    //   290: astore_2
    //   291: goto -34 -> 257
    //   294: astore_3
    //   295: aconst_null
    //   296: astore_2
    //   297: goto -102 -> 195
    //   300: astore_3
    //   301: aconst_null
    //   302: astore_2
    //   303: goto -172 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	306	0	this	af
    //   0	306	1	paramFile	File
    //   15	247	2	localObject1	Object
    //   267	11	2	localIOException1	IOException
    //   290	13	2	localObject2	Object
    //   1	105	3	localObject3	Object
    //   130	13	3	localJSONException1	JSONException
    //   194	52	3	localIOException2	IOException
    //   252	4	3	localObject4	Object
    //   294	1	3	localIOException3	IOException
    //   300	1	3	localJSONException2	JSONException
    //   22	63	4	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   49	53	54	java/io/IOException
    //   18	24	130	org/json/JSONException
    //   31	41	130	org/json/JSONException
    //   43	49	130	org/json/JSONException
    //   89	99	130	org/json/JSONException
    //   105	112	130	org/json/JSONException
    //   114	120	130	org/json/JSONException
    //   122	127	130	org/json/JSONException
    //   181	191	130	org/json/JSONException
    //   244	249	130	org/json/JSONException
    //   154	158	159	java/io/IOException
    //   75	84	178	org/json/JSONException
    //   18	24	194	java/io/IOException
    //   31	41	194	java/io/IOException
    //   43	49	194	java/io/IOException
    //   75	84	194	java/io/IOException
    //   89	99	194	java/io/IOException
    //   105	112	194	java/io/IOException
    //   114	120	194	java/io/IOException
    //   122	127	194	java/io/IOException
    //   181	191	194	java/io/IOException
    //   244	249	194	java/io/IOException
    //   218	222	223	java/io/IOException
    //   18	24	252	finally
    //   31	41	252	finally
    //   43	49	252	finally
    //   75	84	252	finally
    //   89	99	252	finally
    //   105	112	252	finally
    //   114	120	252	finally
    //   122	127	252	finally
    //   133	150	252	finally
    //   181	191	252	finally
    //   197	214	252	finally
    //   244	249	252	finally
    //   261	265	267	java/io/IOException
    //   7	16	288	finally
    //   7	16	294	java/io/IOException
    //   7	16	300	org/json/JSONException
  }
  
  /* Error */
  protected final void b(File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +4 -> 5
    //   4: return
    //   5: new 475	java/io/FileInputStream
    //   8: dup
    //   9: aload_1
    //   10: invokespecial 477	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   13: astore_2
    //   14: aload_2
    //   15: astore_1
    //   16: aload_2
    //   17: invokestatic 396	com/adobe/mobile/af:a	(Ljava/io/InputStream;)Lorg/json/JSONObject;
    //   20: astore_3
    //   21: aload_3
    //   22: ifnull +20 -> 42
    //   25: aload_2
    //   26: astore_1
    //   27: aload_0
    //   28: aload_3
    //   29: ldc -117
    //   31: invokevirtual 145	org/json/JSONObject:getJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   34: ldc -60
    //   36: invokevirtual 200	org/json/JSONObject:getJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   39: invokespecial 203	com/adobe/mobile/af:a	(Lorg/json/JSONArray;)V
    //   42: aload_2
    //   43: invokevirtual 484	java/io/FileInputStream:close	()V
    //   46: return
    //   47: astore_1
    //   48: ldc_w 499
    //   51: iconst_1
    //   52: anewarray 4	java/lang/Object
    //   55: dup
    //   56: iconst_0
    //   57: aload_1
    //   58: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   61: aastore
    //   62: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   65: return
    //   66: astore_3
    //   67: aconst_null
    //   68: astore_2
    //   69: aload_2
    //   70: astore_1
    //   71: ldc_w 501
    //   74: iconst_1
    //   75: anewarray 4	java/lang/Object
    //   78: dup
    //   79: iconst_0
    //   80: aload_3
    //   81: invokevirtual 282	org/json/JSONException:getLocalizedMessage	()Ljava/lang/String;
    //   84: aastore
    //   85: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   88: aload_2
    //   89: ifnull -85 -> 4
    //   92: aload_2
    //   93: invokevirtual 484	java/io/FileInputStream:close	()V
    //   96: return
    //   97: astore_1
    //   98: ldc_w 499
    //   101: iconst_1
    //   102: anewarray 4	java/lang/Object
    //   105: dup
    //   106: iconst_0
    //   107: aload_1
    //   108: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   111: aastore
    //   112: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   115: return
    //   116: astore_3
    //   117: aconst_null
    //   118: astore_2
    //   119: aload_2
    //   120: astore_1
    //   121: ldc_w 503
    //   124: iconst_1
    //   125: anewarray 4	java/lang/Object
    //   128: dup
    //   129: iconst_0
    //   130: aload_3
    //   131: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   134: aastore
    //   135: invokestatic 497	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   138: aload_2
    //   139: ifnull -135 -> 4
    //   142: aload_2
    //   143: invokevirtual 484	java/io/FileInputStream:close	()V
    //   146: return
    //   147: astore_1
    //   148: ldc_w 499
    //   151: iconst_1
    //   152: anewarray 4	java/lang/Object
    //   155: dup
    //   156: iconst_0
    //   157: aload_1
    //   158: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   161: aastore
    //   162: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   165: return
    //   166: astore_2
    //   167: aconst_null
    //   168: astore_1
    //   169: aload_1
    //   170: ifnull +7 -> 177
    //   173: aload_1
    //   174: invokevirtual 484	java/io/FileInputStream:close	()V
    //   177: aload_2
    //   178: athrow
    //   179: astore_1
    //   180: ldc_w 499
    //   183: iconst_1
    //   184: anewarray 4	java/lang/Object
    //   187: dup
    //   188: iconst_0
    //   189: aload_1
    //   190: invokevirtual 487	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   193: aastore
    //   194: invokestatic 269	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   197: goto -20 -> 177
    //   200: astore_2
    //   201: goto -32 -> 169
    //   204: astore_3
    //   205: goto -86 -> 119
    //   208: astore_3
    //   209: goto -140 -> 69
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	212	0	this	af
    //   0	212	1	paramFile	File
    //   13	130	2	localFileInputStream	java.io.FileInputStream
    //   166	12	2	localObject1	Object
    //   200	1	2	localObject2	Object
    //   20	9	3	localJSONObject	JSONObject
    //   66	15	3	localJSONException1	JSONException
    //   116	15	3	localIOException1	IOException
    //   204	1	3	localIOException2	IOException
    //   208	1	3	localJSONException2	JSONException
    // Exception table:
    //   from	to	target	type
    //   42	46	47	java/io/IOException
    //   5	14	66	org/json/JSONException
    //   92	96	97	java/io/IOException
    //   5	14	116	java/io/IOException
    //   142	146	147	java/io/IOException
    //   5	14	166	finally
    //   173	177	179	java/io/IOException
    //   16	21	200	finally
    //   27	42	200	finally
    //   71	88	200	finally
    //   121	138	200	finally
    //   16	21	204	java/io/IOException
    //   27	42	204	java/io/IOException
    //   16	21	208	org/json/JSONException
    //   27	42	208	org/json/JSONException
  }
  
  protected final boolean b()
  {
    boolean bool2 = false;
    synchronized (w)
    {
      if (v == null)
      {
        bool1 = bool2;
        if (b != null)
        {
          bool1 = bool2;
          if (b.length() > 0)
          {
            bool1 = bool2;
            if (c != null)
            {
              bool1 = bool2;
              if (c.length() > 0) {
                bool1 = true;
              }
            }
          }
        }
        v = Boolean.valueOf(bool1);
        if (!v.booleanValue()) {
          am.c("Analytics - Your config file is not set up to use Analytics(missing report suite id(s) or tracking server information)", new Object[0]);
        }
      }
      boolean bool1 = v.booleanValue();
      return bool1;
    }
  }
  
  protected final boolean c()
  {
    synchronized (y)
    {
      if (x == null) {
        x = Boolean.valueOf(ap.a());
      }
      boolean bool = x.booleanValue();
      return bool;
    }
  }
  
  protected final boolean d()
  {
    boolean bool2 = false;
    if (am.o()) {
      return false;
    }
    synchronized (A)
    {
      if (z == null)
      {
        bool1 = bool2;
        if (p != null)
        {
          bool1 = bool2;
          if (p.length() > 0) {
            bool1 = true;
          }
        }
        z = Boolean.valueOf(bool1);
        if (!z.booleanValue()) {
          am.c("Audience Manager - Your config file is not set up to use Audience Manager(missing audience manager server information)", new Object[0]);
        }
      }
      boolean bool1 = z.booleanValue();
      return bool1;
    }
  }
  
  protected final String e()
  {
    return b;
  }
  
  protected final String f()
  {
    return c;
  }
  
  protected final String g()
  {
    return d;
  }
  
  protected final boolean h()
  {
    return e;
  }
  
  protected final boolean i()
  {
    return f;
  }
  
  protected final boolean j()
  {
    return g;
  }
  
  protected final int k()
  {
    return h;
  }
  
  protected final int l()
  {
    return j;
  }
  
  protected final ag m()
  {
    return k;
  }
  
  protected final int n()
  {
    return i;
  }
  
  protected final String o()
  {
    return p;
  }
  
  protected final void p()
  {
    am.k().execute(new Runnable()
    {
      public final void run()
      {
        if ((af.a(af.this) == null) || (af.a(af.this).length() <= 0))
        {
          af.b(af.this);
          return;
        }
        aj.a(af.a(af.this), new aj.b()
        {
          public final void a(File paramAnonymous2File)
          {
            af.this.a(paramAnonymous2File);
            af.b(af.this);
            af.c(af.this);
          }
        });
      }
    });
    if ((m != null) && (m.length() > 0)) {
      new Thread(new aj.a(m, new aj.b()
      {
        public final void a(final File paramAnonymousFile)
        {
          am.j().execute(new Runnable()
          {
            public final void run()
            {
              if (paramAnonymousFile != null)
              {
                am.c("Config - Using remote definition for points of interest", new Object[0]);
                b(paramAnonymousFile);
              }
            }
          });
        }
      }, 10000, 10000, "adbdownloadcache", (byte)0)).start();
    }
  }
  
  protected final ArrayList<m> q()
  {
    return r;
  }
  
  protected final String r()
  {
    return s;
  }
  
  protected final boolean s()
  {
    return (s != null) && (s.length() > 0);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */