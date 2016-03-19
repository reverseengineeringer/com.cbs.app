package com.adobe.mobile;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

final class l
{
  protected static long a = 0L;
  protected static volatile boolean b = false;
  private static final HashMap<String, Object> c = new HashMap();
  private static final HashMap<String, Object> d = new HashMap();
  private static final HashMap<String, Object> e = new HashMap();
  private static final Object f = new Object();
  private static final Object g = new Object();
  private static final Object h = new Object();
  
  private static String a(long paramLong1, long paramLong2)
  {
    return Integer.toString((int)((paramLong2 - paramLong1) / 86400000L));
  }
  
  protected static void a()
  {
    b = false;
    am.a(Long.valueOf(am.p()));
    try
    {
      localObject = am.r();
      ((SharedPreferences.Editor)localObject).putBoolean("ADMS_SuccessfulClose", true);
      ((SharedPreferences.Editor)localObject).putLong("ADMS_PauseDate", new Date().getTime());
      ((SharedPreferences.Editor)localObject).commit();
    }
    catch (am.b localb)
    {
      for (;;)
      {
        try
        {
          Object localObject = am.u();
          if (((Activity)localObject).isFinishing()) {
            ae.b();
          }
          return;
        }
        catch (am.a locala) {}
        localb = localb;
        am.a("Lifecycle - Error updating lifecycle pause data (%s)", new Object[] { localb.getMessage() });
      }
    }
  }
  
  /* Error */
  protected static void a(Activity paramActivity)
  {
    // Byte code:
    //   0: getstatic 23	com/adobe/mobile/l:b	Z
    //   3: ifeq +4 -> 7
    //   6: return
    //   7: iconst_1
    //   8: putstatic 23	com/adobe/mobile/l:b	Z
    //   11: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   14: astore 11
    //   16: aconst_null
    //   17: astore 9
    //   19: invokestatic 102	com/adobe/mobile/am:u	()Landroid/app/Activity;
    //   22: astore 10
    //   24: aload 10
    //   26: astore 9
    //   28: aload 9
    //   30: ifnull +34 -> 64
    //   33: aload_0
    //   34: ifnull +30 -> 64
    //   37: aload 9
    //   39: invokevirtual 128	android/app/Activity:getComponentName	()Landroid/content/ComponentName;
    //   42: invokevirtual 132	android/content/ComponentName:toString	()Ljava/lang/String;
    //   45: aload_0
    //   46: invokevirtual 128	android/app/Activity:getComponentName	()Landroid/content/ComponentName;
    //   49: invokevirtual 132	android/content/ComponentName:toString	()Ljava/lang/String;
    //   52: invokevirtual 138	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   55: ifeq +9 -> 64
    //   58: aconst_null
    //   59: aconst_null
    //   60: aconst_null
    //   61: invokestatic 141	com/adobe/mobile/ae:a	(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    //   64: aload_0
    //   65: invokestatic 143	com/adobe/mobile/am:a	(Landroid/app/Activity;)V
    //   68: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   71: astore_0
    //   72: aload 11
    //   74: ldc 84
    //   76: lconst_0
    //   77: invokeinterface 154 4 0
    //   82: lstore 5
    //   84: aload_0
    //   85: invokevirtual 158	com/adobe/mobile/af:k	()I
    //   88: istore_3
    //   89: iconst_1
    //   90: istore_2
    //   91: iload_2
    //   92: istore_1
    //   93: lload 5
    //   95: lconst_0
    //   96: lcmp
    //   97: ifle +122 -> 219
    //   100: new 86	java/util/Date
    //   103: dup
    //   104: invokespecial 87	java/util/Date:<init>	()V
    //   107: invokevirtual 90	java/util/Date:getTime	()J
    //   110: lload 5
    //   112: lsub
    //   113: ldc2_w 159
    //   116: ldiv
    //   117: l2i
    //   118: istore 4
    //   120: aload 11
    //   122: ldc -94
    //   124: lconst_0
    //   125: invokeinterface 154 4 0
    //   130: lstore 5
    //   132: lload 5
    //   134: ldc2_w 159
    //   137: ldiv
    //   138: putstatic 21	com/adobe/mobile/l:a	J
    //   141: invokestatic 167	com/adobe/mobile/f:e	()Lcom/adobe/mobile/f;
    //   144: iload 4
    //   146: i2l
    //   147: invokevirtual 170	com/adobe/mobile/f:a	(J)V
    //   150: iload_2
    //   151: istore_1
    //   152: iload 4
    //   154: iload_3
    //   155: if_icmpge +64 -> 219
    //   158: iload_2
    //   159: istore_1
    //   160: lload 5
    //   162: lconst_0
    //   163: lcmp
    //   164: ifle +55 -> 219
    //   167: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   170: astore 9
    //   172: aload 9
    //   174: ldc -94
    //   176: iload 4
    //   178: sipush 1000
    //   181: imul
    //   182: i2l
    //   183: lload 5
    //   185: ladd
    //   186: invokeinterface 94 4 0
    //   191: pop
    //   192: aload 9
    //   194: invokeinterface 98 1 0
    //   199: pop
    //   200: aload 11
    //   202: ldc -94
    //   204: lconst_0
    //   205: invokeinterface 154 4 0
    //   210: ldc2_w 159
    //   213: ldiv
    //   214: putstatic 21	com/adobe/mobile/l:a	J
    //   217: iconst_0
    //   218: istore_1
    //   219: new 86	java/util/Date
    //   222: dup
    //   223: invokespecial 87	java/util/Date:<init>	()V
    //   226: invokevirtual 90	java/util/Date:getTime	()J
    //   229: lstore 5
    //   231: iload_1
    //   232: ifeq +547 -> 779
    //   235: aload_0
    //   236: invokevirtual 172	com/adobe/mobile/af:p	()V
    //   239: getstatic 30	com/adobe/mobile/l:c	Ljava/util/HashMap;
    //   242: invokevirtual 175	java/util/HashMap:clear	()V
    //   245: invokestatic 177	com/adobe/mobile/l:c	()V
    //   248: new 25	java/util/HashMap
    //   251: dup
    //   252: invokespecial 28	java/util/HashMap:<init>	()V
    //   255: astore 9
    //   257: aload 11
    //   259: ldc -77
    //   261: invokeinterface 183 2 0
    //   266: ifne +768 -> 1034
    //   269: aload 9
    //   271: ldc -71
    //   273: new 187	java/text/SimpleDateFormat
    //   276: dup
    //   277: ldc -67
    //   279: getstatic 195	java/util/Locale:US	Ljava/util/Locale;
    //   282: invokespecial 198	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   285: lload 5
    //   287: invokestatic 67	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   290: invokevirtual 204	java/text/DateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   293: invokeinterface 210 3 0
    //   298: pop
    //   299: aload 9
    //   301: ldc -44
    //   303: ldc -42
    //   305: invokeinterface 210 3 0
    //   310: pop
    //   311: aload 9
    //   313: ldc -40
    //   315: ldc -38
    //   317: invokeinterface 210 3 0
    //   322: pop
    //   323: aload 9
    //   325: ldc -36
    //   327: ldc -34
    //   329: invokeinterface 210 3 0
    //   334: pop
    //   335: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   338: ldc -32
    //   340: invokeinterface 183 2 0
    //   345: ifeq +572 -> 917
    //   348: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   351: ldc -30
    //   353: aconst_null
    //   354: invokeinterface 230 3 0
    //   359: astore 10
    //   361: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   364: ldc -24
    //   366: aconst_null
    //   367: invokeinterface 230 3 0
    //   372: astore 11
    //   374: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   377: ldc -22
    //   379: aconst_null
    //   380: invokeinterface 230 3 0
    //   385: astore 12
    //   387: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   390: ldc -20
    //   392: aconst_null
    //   393: invokeinterface 230 3 0
    //   398: astore 13
    //   400: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   403: ldc -32
    //   405: aconst_null
    //   406: invokeinterface 230 3 0
    //   411: astore 14
    //   413: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   416: ldc -18
    //   418: aconst_null
    //   419: invokeinterface 230 3 0
    //   424: astore 15
    //   426: aload 10
    //   428: ifnull +80 -> 508
    //   431: aload 14
    //   433: ifnull +75 -> 508
    //   436: aload 9
    //   438: ldc -16
    //   440: aload 10
    //   442: invokeinterface 210 3 0
    //   447: pop
    //   448: aload 9
    //   450: ldc -14
    //   452: aload 11
    //   454: invokeinterface 210 3 0
    //   459: pop
    //   460: aload 9
    //   462: ldc -12
    //   464: aload 12
    //   466: invokeinterface 210 3 0
    //   471: pop
    //   472: aload 9
    //   474: ldc -10
    //   476: aload 13
    //   478: invokeinterface 210 3 0
    //   483: pop
    //   484: aload 9
    //   486: ldc -8
    //   488: aload 14
    //   490: invokeinterface 210 3 0
    //   495: pop
    //   496: aload 9
    //   498: ldc -6
    //   500: aload 15
    //   502: invokeinterface 210 3 0
    //   507: pop
    //   508: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   511: astore 10
    //   513: aload 10
    //   515: ldc -77
    //   517: lload 5
    //   519: invokeinterface 94 4 0
    //   524: pop
    //   525: aload 10
    //   527: invokeinterface 98 1 0
    //   532: pop
    //   533: aload 9
    //   535: invokestatic 253	com/adobe/mobile/am:f	()Ljava/util/HashMap;
    //   538: invokeinterface 257 2 0
    //   543: aload 9
    //   545: ldc_w 259
    //   548: ldc_w 261
    //   551: invokeinterface 210 3 0
    //   556: pop
    //   557: aload 9
    //   559: ldc_w 263
    //   562: invokestatic 265	com/adobe/mobile/am:g	()Ljava/lang/String;
    //   565: invokeinterface 210 3 0
    //   570: pop
    //   571: aload 9
    //   573: ldc_w 267
    //   576: new 187	java/text/SimpleDateFormat
    //   579: dup
    //   580: ldc_w 269
    //   583: getstatic 195	java/util/Locale:US	Ljava/util/Locale;
    //   586: invokespecial 198	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   589: lload 5
    //   591: invokestatic 67	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   594: invokevirtual 204	java/text/DateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   597: invokeinterface 210 3 0
    //   602: pop
    //   603: invokestatic 275	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   606: astore 10
    //   608: aload 10
    //   610: lload 5
    //   612: invokevirtual 278	java/util/Calendar:setTimeInMillis	(J)V
    //   615: aload 9
    //   617: ldc_w 280
    //   620: aload 10
    //   622: bipush 7
    //   624: invokevirtual 284	java/util/Calendar:get	(I)I
    //   627: invokestatic 51	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   630: invokeinterface 210 3 0
    //   635: pop
    //   636: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   639: astore 10
    //   641: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   644: ldc_w 286
    //   647: iconst_0
    //   648: invokeinterface 290 3 0
    //   653: iconst_1
    //   654: iadd
    //   655: istore_1
    //   656: aload 9
    //   658: ldc_w 292
    //   661: iload_1
    //   662: invokestatic 51	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   665: invokeinterface 210 3 0
    //   670: pop
    //   671: aload 10
    //   673: ldc_w 286
    //   676: iload_1
    //   677: invokeinterface 296 3 0
    //   682: pop
    //   683: aload 10
    //   685: ldc_w 298
    //   688: lload 5
    //   690: invokeinterface 94 4 0
    //   695: pop
    //   696: aload 10
    //   698: invokeinterface 98 1 0
    //   703: pop
    //   704: aload 9
    //   706: invokestatic 300	com/adobe/mobile/l:a	(Ljava/util/Map;)V
    //   709: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   712: astore 10
    //   714: aload 10
    //   716: ldc_w 302
    //   719: new 304	org/json/JSONObject
    //   722: dup
    //   723: getstatic 30	com/adobe/mobile/l:c	Ljava/util/HashMap;
    //   726: invokespecial 306	org/json/JSONObject:<init>	(Ljava/util/Map;)V
    //   729: invokevirtual 307	org/json/JSONObject:toString	()Ljava/lang/String;
    //   732: invokeinterface 311 3 0
    //   737: pop
    //   738: aload 10
    //   740: invokeinterface 98 1 0
    //   745: pop
    //   746: aload_0
    //   747: invokevirtual 313	com/adobe/mobile/af:b	()Z
    //   750: ifeq +16 -> 766
    //   753: ldc_w 315
    //   756: aload 9
    //   758: invokestatic 61	com/adobe/mobile/am:p	()J
    //   761: lconst_1
    //   762: lsub
    //   763: invokestatic 320	com/adobe/mobile/d:a	(Ljava/lang/String;Ljava/util/Map;J)V
    //   766: aload_0
    //   767: invokevirtual 322	com/adobe/mobile/af:d	()Z
    //   770: ifeq +9 -> 779
    //   773: getstatic 30	com/adobe/mobile/l:c	Ljava/util/HashMap;
    //   776: invokestatic 325	com/adobe/mobile/i:a	(Ljava/util/Map;)V
    //   779: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   782: astore_0
    //   783: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   786: ldc -94
    //   788: invokeinterface 183 2 0
    //   793: ifne +23 -> 816
    //   796: aload_0
    //   797: ldc -94
    //   799: lload 5
    //   801: invokeinterface 94 4 0
    //   806: pop
    //   807: lload 5
    //   809: ldc2_w 159
    //   812: ldiv
    //   813: putstatic 21	com/adobe/mobile/l:a	J
    //   816: aload_0
    //   817: ldc_w 327
    //   820: invokestatic 329	com/adobe/mobile/am:c	()Ljava/lang/String;
    //   823: invokeinterface 311 3 0
    //   828: pop
    //   829: aload_0
    //   830: ldc 76
    //   832: iconst_0
    //   833: invokeinterface 82 3 0
    //   838: pop
    //   839: aload_0
    //   840: ldc 84
    //   842: invokeinterface 333 2 0
    //   847: pop
    //   848: aload_0
    //   849: invokeinterface 98 1 0
    //   854: pop
    //   855: return
    //   856: astore_0
    //   857: ldc_w 335
    //   860: iconst_1
    //   861: anewarray 4	java/lang/Object
    //   864: dup
    //   865: iconst_0
    //   866: aload_0
    //   867: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   870: aastore
    //   871: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   874: return
    //   875: astore_0
    //   876: ldc_w 337
    //   879: iconst_1
    //   880: anewarray 4	java/lang/Object
    //   883: dup
    //   884: iconst_0
    //   885: aload_0
    //   886: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   889: aastore
    //   890: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   893: return
    //   894: astore 9
    //   896: ldc_w 339
    //   899: iconst_1
    //   900: anewarray 4	java/lang/Object
    //   903: dup
    //   904: iconst_0
    //   905: aload 9
    //   907: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   910: aastore
    //   911: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   914: goto -714 -> 200
    //   917: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   920: invokevirtual 342	com/adobe/mobile/af:n	()I
    //   923: ifle -415 -> 508
    //   926: aload 9
    //   928: ldc -16
    //   930: ldc_w 344
    //   933: invokeinterface 210 3 0
    //   938: pop
    //   939: aload 9
    //   941: ldc -14
    //   943: ldc_w 346
    //   946: invokeinterface 210 3 0
    //   951: pop
    //   952: aload 9
    //   954: ldc -12
    //   956: ldc_w 348
    //   959: invokeinterface 210 3 0
    //   964: pop
    //   965: aload 9
    //   967: ldc -10
    //   969: ldc_w 350
    //   972: invokeinterface 210 3 0
    //   977: pop
    //   978: aload 9
    //   980: ldc -8
    //   982: ldc_w 352
    //   985: invokeinterface 210 3 0
    //   990: pop
    //   991: aload 9
    //   993: ldc -6
    //   995: ldc_w 354
    //   998: invokeinterface 210 3 0
    //   1003: pop
    //   1004: iconst_0
    //   1005: invokestatic 359	com/adobe/mobile/ai:a	(Z)V
    //   1008: goto -500 -> 508
    //   1011: astore 10
    //   1013: ldc_w 361
    //   1016: iconst_1
    //   1017: anewarray 4	java/lang/Object
    //   1020: dup
    //   1021: iconst_0
    //   1022: aload 10
    //   1024: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1027: aastore
    //   1028: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1031: goto -498 -> 533
    //   1034: new 187	java/text/SimpleDateFormat
    //   1037: dup
    //   1038: ldc_w 363
    //   1041: getstatic 195	java/util/Locale:US	Ljava/util/Locale;
    //   1044: invokespecial 198	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   1047: astore 10
    //   1049: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1052: ldc_w 298
    //   1055: lconst_0
    //   1056: invokeinterface 154 4 0
    //   1061: lstore 7
    //   1063: aload 10
    //   1065: new 86	java/util/Date
    //   1068: dup
    //   1069: lload 7
    //   1071: invokespecial 365	java/util/Date:<init>	(J)V
    //   1074: invokevirtual 368	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1077: astore 11
    //   1079: aload 10
    //   1081: lload 5
    //   1083: invokestatic 67	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1086: invokevirtual 204	java/text/DateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   1089: aload 11
    //   1091: invokevirtual 371	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1094: ifne +15 -> 1109
    //   1097: aload 9
    //   1099: ldc -40
    //   1101: ldc -38
    //   1103: invokeinterface 210 3 0
    //   1108: pop
    //   1109: new 187	java/text/SimpleDateFormat
    //   1112: dup
    //   1113: ldc_w 373
    //   1116: getstatic 195	java/util/Locale:US	Ljava/util/Locale;
    //   1119: invokespecial 198	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   1122: astore 10
    //   1124: aload 10
    //   1126: new 86	java/util/Date
    //   1129: dup
    //   1130: lload 7
    //   1132: invokespecial 365	java/util/Date:<init>	(J)V
    //   1135: invokevirtual 368	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   1138: astore 11
    //   1140: aload 10
    //   1142: lload 5
    //   1144: invokestatic 67	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1147: invokevirtual 204	java/text/DateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
    //   1150: aload 11
    //   1152: invokevirtual 371	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1155: ifne +15 -> 1170
    //   1158: aload 9
    //   1160: ldc -36
    //   1162: ldc -34
    //   1164: invokeinterface 210 3 0
    //   1169: pop
    //   1170: aload 9
    //   1172: ldc_w 375
    //   1175: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1178: ldc -77
    //   1180: lconst_0
    //   1181: invokeinterface 154 4 0
    //   1186: lload 5
    //   1188: invokestatic 377	com/adobe/mobile/l:a	(JJ)Ljava/lang/String;
    //   1191: invokeinterface 210 3 0
    //   1196: pop
    //   1197: aload 9
    //   1199: ldc_w 379
    //   1202: lload 7
    //   1204: lload 5
    //   1206: invokestatic 377	com/adobe/mobile/l:a	(JJ)Ljava/lang/String;
    //   1209: invokeinterface 210 3 0
    //   1214: pop
    //   1215: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1218: ldc 76
    //   1220: iconst_0
    //   1221: invokeinterface 383 3 0
    //   1226: ifne +137 -> 1363
    //   1229: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   1232: astore 10
    //   1234: aload 10
    //   1236: ldc 84
    //   1238: invokeinterface 333 2 0
    //   1243: pop
    //   1244: aload 10
    //   1246: ldc -94
    //   1248: invokeinterface 333 2 0
    //   1253: pop
    //   1254: invokestatic 61	com/adobe/mobile/am:p	()J
    //   1257: putstatic 21	com/adobe/mobile/l:a	J
    //   1260: aload 10
    //   1262: invokeinterface 98 1 0
    //   1267: pop
    //   1268: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1271: ldc_w 385
    //   1274: lconst_0
    //   1275: invokeinterface 154 4 0
    //   1280: lstore 7
    //   1282: lload 7
    //   1284: lconst_0
    //   1285: lcmp
    //   1286: ifle +433 -> 1719
    //   1289: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1292: invokevirtual 313	com/adobe/mobile/af:b	()Z
    //   1295: ifeq +424 -> 1719
    //   1298: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1301: invokevirtual 388	com/adobe/mobile/af:i	()Z
    //   1304: ifeq +415 -> 1719
    //   1307: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1310: invokevirtual 391	com/adobe/mobile/af:j	()Z
    //   1313: ifeq +406 -> 1719
    //   1316: new 25	java/util/HashMap
    //   1319: dup
    //   1320: invokespecial 28	java/util/HashMap:<init>	()V
    //   1323: astore 10
    //   1325: aload 10
    //   1327: ldc_w 393
    //   1330: ldc_w 395
    //   1333: invokevirtual 396	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1336: pop
    //   1337: getstatic 30	com/adobe/mobile/l:c	Ljava/util/HashMap;
    //   1340: aload 10
    //   1342: invokevirtual 397	java/util/HashMap:putAll	(Ljava/util/Map;)V
    //   1345: ldc_w 399
    //   1348: aload 10
    //   1350: lload 7
    //   1352: lconst_1
    //   1353: ladd
    //   1354: invokestatic 320	com/adobe/mobile/d:a	(Ljava/lang/String;Ljava/util/Map;J)V
    //   1357: invokestatic 167	com/adobe/mobile/f:e	()Lcom/adobe/mobile/f;
    //   1360: invokevirtual 401	com/adobe/mobile/f:f	()V
    //   1363: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   1366: astore 10
    //   1368: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1371: ldc_w 403
    //   1374: lconst_0
    //   1375: invokeinterface 154 4 0
    //   1380: lstore 7
    //   1382: invokestatic 329	com/adobe/mobile/am:c	()Ljava/lang/String;
    //   1385: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1388: ldc_w 327
    //   1391: ldc_w 405
    //   1394: invokeinterface 230 3 0
    //   1399: invokevirtual 371	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   1402: ifne +357 -> 1759
    //   1405: aload 9
    //   1407: ldc_w 407
    //   1410: ldc_w 409
    //   1413: invokeinterface 210 3 0
    //   1418: pop
    //   1419: aload 10
    //   1421: ldc_w 403
    //   1424: lload 5
    //   1426: invokeinterface 94 4 0
    //   1431: pop
    //   1432: aload 10
    //   1434: ldc_w 411
    //   1437: iconst_0
    //   1438: invokeinterface 296 3 0
    //   1443: pop
    //   1444: lload 7
    //   1446: lconst_0
    //   1447: lcmp
    //   1448: ifle +45 -> 1493
    //   1451: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1454: ldc_w 411
    //   1457: iconst_0
    //   1458: invokeinterface 290 3 0
    //   1463: iconst_1
    //   1464: iadd
    //   1465: istore_1
    //   1466: aload 9
    //   1468: ldc_w 413
    //   1471: iload_1
    //   1472: invokestatic 415	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1475: invokeinterface 210 3 0
    //   1480: pop
    //   1481: aload 10
    //   1483: ldc_w 411
    //   1486: iload_1
    //   1487: invokeinterface 296 3 0
    //   1492: pop
    //   1493: aload 10
    //   1495: invokeinterface 98 1 0
    //   1500: pop
    //   1501: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1504: ldc 84
    //   1506: lconst_0
    //   1507: invokeinterface 154 4 0
    //   1512: lstore 7
    //   1514: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1517: invokevirtual 158	com/adobe/mobile/af:k	()I
    //   1520: istore_1
    //   1521: new 86	java/util/Date
    //   1524: dup
    //   1525: invokespecial 87	java/util/Date:<init>	()V
    //   1528: invokevirtual 90	java/util/Date:getTime	()J
    //   1531: lload 7
    //   1533: lsub
    //   1534: ldc2_w 159
    //   1537: ldiv
    //   1538: l2i
    //   1539: iload_1
    //   1540: if_icmplt -1007 -> 533
    //   1543: lload 7
    //   1545: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1548: ldc -94
    //   1550: lconst_0
    //   1551: invokeinterface 154 4 0
    //   1556: lsub
    //   1557: ldc2_w 159
    //   1560: ldiv
    //   1561: l2i
    //   1562: istore_1
    //   1563: invokestatic 61	com/adobe/mobile/am:p	()J
    //   1566: putstatic 21	com/adobe/mobile/l:a	J
    //   1569: iload_1
    //   1570: ifle +258 -> 1828
    //   1573: iload_1
    //   1574: ldc_w 416
    //   1577: if_icmpge +251 -> 1828
    //   1580: invokestatic 124	com/adobe/mobile/am:a	()Landroid/content/SharedPreferences;
    //   1583: ldc_w 385
    //   1586: lconst_0
    //   1587: invokeinterface 154 4 0
    //   1592: lstore 7
    //   1594: lload 7
    //   1596: lconst_0
    //   1597: lcmp
    //   1598: ifle +212 -> 1810
    //   1601: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1604: invokevirtual 313	com/adobe/mobile/af:b	()Z
    //   1607: ifeq +203 -> 1810
    //   1610: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1613: invokevirtual 388	com/adobe/mobile/af:i	()Z
    //   1616: ifeq +194 -> 1810
    //   1619: invokestatic 148	com/adobe/mobile/af:a	()Lcom/adobe/mobile/af;
    //   1622: invokevirtual 391	com/adobe/mobile/af:j	()Z
    //   1625: ifeq +185 -> 1810
    //   1628: new 25	java/util/HashMap
    //   1631: dup
    //   1632: invokespecial 28	java/util/HashMap:<init>	()V
    //   1635: astore 10
    //   1637: aload 10
    //   1639: ldc_w 418
    //   1642: iload_1
    //   1643: invokestatic 415	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   1646: invokevirtual 396	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1649: pop
    //   1650: getstatic 30	com/adobe/mobile/l:c	Ljava/util/HashMap;
    //   1653: aload 10
    //   1655: invokevirtual 397	java/util/HashMap:putAll	(Ljava/util/Map;)V
    //   1658: ldc_w 420
    //   1661: aload 10
    //   1663: lload 7
    //   1665: lconst_1
    //   1666: ladd
    //   1667: invokestatic 320	com/adobe/mobile/d:a	(Ljava/lang/String;Ljava/util/Map;J)V
    //   1670: invokestatic 74	com/adobe/mobile/am:r	()Landroid/content/SharedPreferences$Editor;
    //   1673: astore 10
    //   1675: aload 10
    //   1677: ldc -94
    //   1679: invokeinterface 333 2 0
    //   1684: pop
    //   1685: aload 10
    //   1687: invokeinterface 98 1 0
    //   1692: pop
    //   1693: goto -1160 -> 533
    //   1696: astore 10
    //   1698: ldc_w 422
    //   1701: iconst_1
    //   1702: anewarray 4	java/lang/Object
    //   1705: dup
    //   1706: iconst_0
    //   1707: aload 10
    //   1709: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1712: aastore
    //   1713: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1716: goto -1183 -> 533
    //   1719: aload 9
    //   1721: ldc_w 393
    //   1724: ldc_w 395
    //   1727: invokeinterface 210 3 0
    //   1732: pop
    //   1733: goto -376 -> 1357
    //   1736: astore 10
    //   1738: ldc_w 424
    //   1741: iconst_1
    //   1742: anewarray 4	java/lang/Object
    //   1745: dup
    //   1746: iconst_0
    //   1747: aload 10
    //   1749: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1752: aastore
    //   1753: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1756: goto -393 -> 1363
    //   1759: lload 7
    //   1761: lconst_0
    //   1762: lcmp
    //   1763: ifle -319 -> 1444
    //   1766: aload 9
    //   1768: ldc_w 426
    //   1771: lload 7
    //   1773: lload 5
    //   1775: invokestatic 377	com/adobe/mobile/l:a	(JJ)Ljava/lang/String;
    //   1778: invokeinterface 210 3 0
    //   1783: pop
    //   1784: goto -340 -> 1444
    //   1787: astore 10
    //   1789: ldc_w 428
    //   1792: iconst_1
    //   1793: anewarray 4	java/lang/Object
    //   1796: dup
    //   1797: iconst_0
    //   1798: aload 10
    //   1800: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1803: aastore
    //   1804: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1807: goto -306 -> 1501
    //   1810: aload 9
    //   1812: ldc_w 418
    //   1815: iload_1
    //   1816: invokestatic 51	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1819: invokeinterface 210 3 0
    //   1824: pop
    //   1825: goto -155 -> 1670
    //   1828: aload 9
    //   1830: ldc_w 430
    //   1833: iload_1
    //   1834: invokestatic 51	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   1837: invokeinterface 210 3 0
    //   1842: pop
    //   1843: goto -173 -> 1670
    //   1846: astore 10
    //   1848: ldc_w 432
    //   1851: iconst_1
    //   1852: anewarray 4	java/lang/Object
    //   1855: dup
    //   1856: iconst_0
    //   1857: aload 10
    //   1859: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1862: aastore
    //   1863: invokestatic 120	com/adobe/mobile/am:a	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1866: goto -1162 -> 704
    //   1869: astore 10
    //   1871: ldc_w 434
    //   1874: iconst_1
    //   1875: anewarray 4	java/lang/Object
    //   1878: dup
    //   1879: iconst_0
    //   1880: aload 10
    //   1882: invokevirtual 117	com/adobe/mobile/am$b:getMessage	()Ljava/lang/String;
    //   1885: aastore
    //   1886: invokestatic 436	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   1889: goto -1143 -> 746
    //   1892: astore 10
    //   1894: goto -1866 -> 28
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1897	0	paramActivity	Activity
    //   92	1742	1	i	int
    //   90	69	2	j	int
    //   88	68	3	k	int
    //   118	64	4	m	int
    //   82	1692	5	l1	long
    //   1061	711	7	l2	long
    //   17	740	9	localObject1	Object
    //   894	935	9	localb1	am.b
    //   22	717	10	localObject2	Object
    //   1011	12	10	localb2	am.b
    //   1047	639	10	localObject3	Object
    //   1696	12	10	localb3	am.b
    //   1736	12	10	localb4	am.b
    //   1787	12	10	localb5	am.b
    //   1846	12	10	localb6	am.b
    //   1869	12	10	localb7	am.b
    //   1892	1	10	locala	am.a
    //   14	1137	11	localObject4	Object
    //   385	80	12	str1	String
    //   398	79	13	str2	String
    //   411	78	14	str3	String
    //   424	77	15	str4	String
    // Exception table:
    //   from	to	target	type
    //   779	816	856	com/adobe/mobile/am$b
    //   816	855	856	com/adobe/mobile/am$b
    //   11	16	875	com/adobe/mobile/am$b
    //   167	200	894	com/adobe/mobile/am$b
    //   335	426	1011	com/adobe/mobile/am$b
    //   436	508	1011	com/adobe/mobile/am$b
    //   508	533	1011	com/adobe/mobile/am$b
    //   917	1008	1011	com/adobe/mobile/am$b
    //   1501	1569	1696	com/adobe/mobile/am$b
    //   1580	1594	1696	com/adobe/mobile/am$b
    //   1601	1670	1696	com/adobe/mobile/am$b
    //   1670	1693	1696	com/adobe/mobile/am$b
    //   1810	1825	1696	com/adobe/mobile/am$b
    //   1828	1843	1696	com/adobe/mobile/am$b
    //   1034	1109	1736	com/adobe/mobile/am$b
    //   1109	1170	1736	com/adobe/mobile/am$b
    //   1170	1282	1736	com/adobe/mobile/am$b
    //   1289	1357	1736	com/adobe/mobile/am$b
    //   1357	1363	1736	com/adobe/mobile/am$b
    //   1719	1733	1736	com/adobe/mobile/am$b
    //   1363	1444	1787	com/adobe/mobile/am$b
    //   1451	1493	1787	com/adobe/mobile/am$b
    //   1493	1501	1787	com/adobe/mobile/am$b
    //   1766	1784	1787	com/adobe/mobile/am$b
    //   636	704	1846	com/adobe/mobile/am$b
    //   709	746	1869	com/adobe/mobile/am$b
    //   19	24	1892	com/adobe/mobile/am$a
  }
  
  private static void a(Map<String, Object> paramMap)
  {
    paramMap = new HashMap(paramMap);
    paramMap.putAll(am.f());
    paramMap.put("a.locale", am.q());
    c.putAll(paramMap);
    c();
    paramMap = c.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      d.put(((String)localEntry.getKey()).toLowerCase(), localEntry.getValue());
    }
  }
  
  protected static Map<String, Object> b()
  {
    synchronized (g)
    {
      if (d.size() <= 0)
      {
        Object localObject2 = new HashMap();
        try
        {
          localObject4 = am.a().getString("ADMS_LifecycleData", null);
          if ((localObject4 != null) && (((String)localObject4).length() > 0)) {
            ((Map)localObject2).putAll(am.a(new JSONObject((String)localObject4)));
          }
        }
        catch (am.b localb)
        {
          for (;;)
          {
            Object localObject4;
            am.a("Lifecycle - Issue loading persisted lifecycle data", new Object[] { localb.getMessage() });
          }
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            am.b("Lifecycle - Issue loading persisted lifecycle data (%s)", new Object[] { localJSONException.getMessage() });
          }
        }
        localObject2 = ((HashMap)localObject2).entrySet().iterator();
        if (((Iterator)localObject2).hasNext())
        {
          localObject4 = (Map.Entry)((Iterator)localObject2).next();
          d.put(((String)((Map.Entry)localObject4).getKey()).toLowerCase(), ((Map.Entry)localObject4).getValue());
        }
      }
    }
    HashMap localHashMap = d;
    return localHashMap;
  }
  
  private static void c()
  {
    synchronized (g)
    {
      d.clear();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */