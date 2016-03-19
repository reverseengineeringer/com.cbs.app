package com.cbs.app.pid;

import android.content.Context;
import android.os.AsyncTask;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.binary.Base64;

public class UnicornAsyncTask
  extends AsyncTask<PidResponseHolder, Void, PidResponseHolder>
{
  private static final String a = PidAsyncTask.class.getSimpleName();
  private Context b;
  
  /* Error */
  private PidResponseHolder a(PidResponseHolder... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 12
    //   3: aload 12
    //   5: astore 11
    //   7: aload_1
    //   8: ifnull +1128 -> 1136
    //   11: aload 12
    //   13: astore 11
    //   15: aload_1
    //   16: arraylength
    //   17: ifle +1119 -> 1136
    //   20: aload_1
    //   21: iconst_0
    //   22: aaload
    //   23: astore 14
    //   25: invokestatic 41	javax/xml/parsers/DocumentBuilderFactory:newInstance	()Ljavax/xml/parsers/DocumentBuilderFactory;
    //   28: astore 11
    //   30: new 43	java/net/URL
    //   33: dup
    //   34: aload 14
    //   36: invokevirtual 48	com/cbs/app/pid/PidResponseHolder:getOriginalSmilContentUrl	()Ljava/lang/String;
    //   39: invokespecial 52	java/net/URL:<init>	(Ljava/lang/String;)V
    //   42: invokevirtual 55	java/net/URL:getPath	()Ljava/lang/String;
    //   45: astore_1
    //   46: aload_1
    //   47: ifnull +245 -> 292
    //   50: aload_1
    //   51: ldc 57
    //   53: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   56: astore_1
    //   57: aload_1
    //   58: arraylength
    //   59: bipush 6
    //   61: if_icmplt +231 -> 292
    //   64: aload_1
    //   65: iconst_4
    //   66: aaload
    //   67: astore 13
    //   69: aload_1
    //   70: iconst_5
    //   71: aaload
    //   72: astore 15
    //   74: aload_1
    //   75: bipush 6
    //   77: aaload
    //   78: astore 12
    //   80: new 65	java/lang/StringBuilder
    //   83: dup
    //   84: ldc 67
    //   86: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   89: aload 15
    //   91: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 74
    //   96: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload 13
    //   101: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: ldc 76
    //   106: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   109: aload_1
    //   110: iconst_3
    //   111: aaload
    //   112: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: invokestatic 82	java/lang/System:currentTimeMillis	()J
    //   119: ldc2_w 83
    //   122: ldiv
    //   123: ldc2_w 85
    //   126: lsub
    //   127: invokestatic 92	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   130: invokevirtual 95	java/lang/Long:toString	()Ljava/lang/String;
    //   133: astore 13
    //   135: aload_0
    //   136: getfield 97	com/cbs/app/pid/UnicornAsyncTask:b	Landroid/content/Context;
    //   139: invokestatic 103	com/cbs/app/view/utils/Util:e	(Landroid/content/Context;)Z
    //   142: ifeq +1166 -> 1308
    //   145: ldc 105
    //   147: astore_1
    //   148: invokestatic 111	com/cbs/app/manager/AuthStatusManager:getUserAuthStatus	()Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;
    //   151: invokestatic 114	com/cbs/app/view/utils/Util:a	(Lcom/cbs/app/view/model/rest/AuthStatusEndpointResponse;)Ljava/lang/String;
    //   154: astore 15
    //   156: new 65	java/lang/StringBuilder
    //   159: dup
    //   160: ldc 116
    //   162: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   165: aload 15
    //   167: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: astore 15
    //   175: new 65	java/lang/StringBuilder
    //   178: dup
    //   179: ldc 119
    //   181: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   184: ldc 121
    //   186: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc 57
    //   191: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: aload_1
    //   195: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: ldc 57
    //   200: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   203: aload 12
    //   205: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: ldc 123
    //   210: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: aload 13
    //   215: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   218: ldc 125
    //   220: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   223: ldc 127
    //   225: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: astore_1
    //   232: aload_1
    //   233: aload_0
    //   234: getfield 97	com/cbs/app/pid/UnicornAsyncTask:b	Landroid/content/Context;
    //   237: invokevirtual 133	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   240: ldc -122
    //   242: invokevirtual 140	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   245: invokestatic 143	com/cbs/app/pid/UnicornAsyncTask:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   248: invokestatic 146	com/cbs/app/pid/UnicornAsyncTask:a	(Ljava/lang/String;)Ljava/lang/String;
    //   251: astore 12
    //   253: aload 14
    //   255: new 65	java/lang/StringBuilder
    //   258: dup
    //   259: invokespecial 148	java/lang/StringBuilder:<init>	()V
    //   262: aload_1
    //   263: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: ldc -106
    //   268: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: aload 12
    //   273: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: ldc -104
    //   278: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: aload 15
    //   283: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   286: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   289: invokevirtual 155	com/cbs/app/pid/PidResponseHolder:setVmapUrl	(Ljava/lang/String;)V
    //   292: new 43	java/net/URL
    //   295: dup
    //   296: aload 14
    //   298: invokevirtual 158	com/cbs/app/pid/PidResponseHolder:getVmapUrl	()Ljava/lang/String;
    //   301: invokespecial 52	java/net/URL:<init>	(Ljava/lang/String;)V
    //   304: invokevirtual 162	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   307: checkcast 164	java/net/HttpURLConnection
    //   310: astore_1
    //   311: aload_1
    //   312: ldc -90
    //   314: invokevirtual 169	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   317: aload_1
    //   318: invokevirtual 173	java/net/HttpURLConnection:getResponseCode	()I
    //   321: pop
    //   322: aload_1
    //   323: invokevirtual 177	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   326: astore_1
    //   327: aload 11
    //   329: invokevirtual 181	javax/xml/parsers/DocumentBuilderFactory:newDocumentBuilder	()Ljavax/xml/parsers/DocumentBuilder;
    //   332: aload_1
    //   333: invokevirtual 187	javax/xml/parsers/DocumentBuilder:parse	(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    //   336: astore 12
    //   338: aload 14
    //   340: aload 12
    //   342: invokevirtual 191	com/cbs/app/pid/PidResponseHolder:setVmapDocument	(Lorg/w3c/dom/Document;)V
    //   345: new 65	java/lang/StringBuilder
    //   348: dup
    //   349: ldc -63
    //   351: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   354: astore_1
    //   355: new 195	javax/xml/transform/dom/DOMSource
    //   358: dup
    //   359: aload 12
    //   361: invokespecial 198	javax/xml/transform/dom/DOMSource:<init>	(Lorg/w3c/dom/Node;)V
    //   364: astore 11
    //   366: new 200	java/io/StringWriter
    //   369: dup
    //   370: invokespecial 201	java/io/StringWriter:<init>	()V
    //   373: astore 13
    //   375: new 203	javax/xml/transform/stream/StreamResult
    //   378: dup
    //   379: aload 13
    //   381: invokespecial 206	javax/xml/transform/stream/StreamResult:<init>	(Ljava/io/Writer;)V
    //   384: astore 15
    //   386: invokestatic 211	javax/xml/transform/TransformerFactory:newInstance	()Ljavax/xml/transform/TransformerFactory;
    //   389: invokevirtual 215	javax/xml/transform/TransformerFactory:newTransformer	()Ljavax/xml/transform/Transformer;
    //   392: aload 11
    //   394: aload 15
    //   396: invokevirtual 221	javax/xml/transform/Transformer:transform	(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    //   399: aload_1
    //   400: aload 13
    //   402: invokevirtual 222	java/io/StringWriter:toString	()Ljava/lang/String;
    //   405: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: pop
    //   409: new 224	java/util/ArrayList
    //   412: dup
    //   413: invokespecial 225	java/util/ArrayList:<init>	()V
    //   416: astore 15
    //   418: aconst_null
    //   419: astore 11
    //   421: new 227	com/cbs/app/pid/CBSAd
    //   424: dup
    //   425: invokespecial 228	com/cbs/app/pid/CBSAd:<init>	()V
    //   428: astore_1
    //   429: aload 12
    //   431: invokeinterface 234 1 0
    //   436: astore 12
    //   438: new 65	java/lang/StringBuilder
    //   441: dup
    //   442: ldc -20
    //   444: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   447: aload 12
    //   449: invokeinterface 241 1 0
    //   454: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   457: pop
    //   458: aload 12
    //   460: invokeinterface 245 1 0
    //   465: astore 16
    //   467: new 65	java/lang/StringBuilder
    //   470: dup
    //   471: ldc -9
    //   473: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   476: aload 16
    //   478: invokeinterface 252 1 0
    //   483: invokevirtual 255	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   486: pop
    //   487: iconst_0
    //   488: istore 6
    //   490: iload 6
    //   492: aload 16
    //   494: invokeinterface 252 1 0
    //   499: if_icmpge +671 -> 1170
    //   502: aload 16
    //   504: iload 6
    //   506: invokeinterface 259 2 0
    //   511: astore 12
    //   513: aload 12
    //   515: invokeinterface 265 1 0
    //   520: iconst_1
    //   521: if_icmpne +778 -> 1299
    //   524: aload 12
    //   526: checkcast 238	org/w3c/dom/Element
    //   529: astore 17
    //   531: aload 17
    //   533: invokeinterface 241 1 0
    //   538: astore 12
    //   540: aload 12
    //   542: ifnull +157 -> 699
    //   545: aload 12
    //   547: ldc_w 267
    //   550: invokevirtual 271	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   553: ifeq +146 -> 699
    //   556: aload 17
    //   558: invokeinterface 245 1 0
    //   563: astore 12
    //   565: new 65	java/lang/StringBuilder
    //   568: dup
    //   569: ldc_w 273
    //   572: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   575: aload 12
    //   577: invokeinterface 252 1 0
    //   582: invokevirtual 255	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   585: pop
    //   586: iconst_0
    //   587: istore 7
    //   589: iload 7
    //   591: aload 12
    //   593: invokeinterface 252 1 0
    //   598: if_icmpge +726 -> 1324
    //   601: aload 12
    //   603: iload 7
    //   605: invokeinterface 259 2 0
    //   610: astore 13
    //   612: aload 13
    //   614: invokeinterface 265 1 0
    //   619: iconst_1
    //   620: if_icmpne +695 -> 1315
    //   623: aload 13
    //   625: checkcast 238	org/w3c/dom/Element
    //   628: astore 13
    //   630: aload 13
    //   632: invokeinterface 241 1 0
    //   637: astore 17
    //   639: aload 17
    //   641: ifnull +674 -> 1315
    //   644: aload 17
    //   646: ldc_w 275
    //   649: invokevirtual 271	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   652: ifeq +663 -> 1315
    //   655: aload 13
    //   657: ldc_w 277
    //   660: invokeinterface 280 2 0
    //   665: astore 12
    //   667: aload 13
    //   669: ldc_w 282
    //   672: invokeinterface 280 2 0
    //   677: pop
    //   678: aload 13
    //   680: ldc_w 284
    //   683: invokeinterface 280 2 0
    //   688: pop
    //   689: aload 14
    //   691: aload 12
    //   693: invokevirtual 287	com/cbs/app/pid/PidResponseHolder:setStreamingUrl	(Ljava/lang/String;)V
    //   696: goto +603 -> 1299
    //   699: aload 12
    //   701: ifnull +598 -> 1299
    //   704: aload 12
    //   706: ldc_w 289
    //   709: invokevirtual 271	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   712: ifeq +587 -> 1299
    //   715: aload 17
    //   717: ldc_w 291
    //   720: invokeinterface 280 2 0
    //   725: astore 18
    //   727: aload 17
    //   729: ldc_w 293
    //   732: invokeinterface 280 2 0
    //   737: astore 13
    //   739: dconst_0
    //   740: dstore_2
    //   741: new 295	java/text/SimpleDateFormat
    //   744: dup
    //   745: ldc_w 297
    //   748: invokespecial 298	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   751: astore 12
    //   753: aload 12
    //   755: ldc_w 300
    //   758: invokestatic 306	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   761: invokevirtual 310	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   764: aload 12
    //   766: aload 13
    //   768: invokevirtual 313	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   771: invokevirtual 318	java/util/Date:getTime	()J
    //   774: lstore 9
    //   776: lload 9
    //   778: l2d
    //   779: ldc2_w 319
    //   782: ddiv
    //   783: dstore_2
    //   784: new 65	java/lang/StringBuilder
    //   787: dup
    //   788: ldc_w 322
    //   791: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   794: aload 13
    //   796: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   799: ldc_w 324
    //   802: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   805: aload 11
    //   807: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   810: pop
    //   811: dload_2
    //   812: dstore 4
    //   814: aload 18
    //   816: ifnull +33 -> 849
    //   819: dload_2
    //   820: dstore 4
    //   822: aload 18
    //   824: ldc_w 326
    //   827: invokevirtual 330	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   830: ifeq +19 -> 849
    //   833: aload 18
    //   835: ldc_w 332
    //   838: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   841: iconst_1
    //   842: aaload
    //   843: invokestatic 338	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   846: i2d
    //   847: dstore 4
    //   849: aload_1
    //   850: astore 12
    //   852: aload 11
    //   854: ifnull +32 -> 886
    //   857: aload_1
    //   858: astore 12
    //   860: aload 11
    //   862: aload 13
    //   864: invokevirtual 271	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   867: ifne +19 -> 886
    //   870: aload 15
    //   872: aload_1
    //   873: invokevirtual 341	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   876: pop
    //   877: new 227	com/cbs/app/pid/CBSAd
    //   880: dup
    //   881: invokespecial 228	com/cbs/app/pid/CBSAd:<init>	()V
    //   884: astore 12
    //   886: aload 12
    //   888: aload 18
    //   890: invokevirtual 344	com/cbs/app/pid/CBSAd:setId	(Ljava/lang/String;)V
    //   893: aload 12
    //   895: dload 4
    //   897: d2i
    //   898: invokevirtual 348	com/cbs/app/pid/CBSAd:setStartTime	(I)V
    //   901: aload 17
    //   903: ldc_w 350
    //   906: invokeinterface 354 2 0
    //   911: astore_1
    //   912: aload_1
    //   913: ifnull +414 -> 1327
    //   916: aload_1
    //   917: invokeinterface 252 1 0
    //   922: ifle +405 -> 1327
    //   925: aload_1
    //   926: iconst_0
    //   927: invokeinterface 259 2 0
    //   932: astore_1
    //   933: aload_1
    //   934: invokeinterface 265 1 0
    //   939: iconst_1
    //   940: if_icmpne +387 -> 1327
    //   943: aload_1
    //   944: checkcast 238	org/w3c/dom/Element
    //   947: astore_1
    //   948: new 65	java/lang/StringBuilder
    //   951: dup
    //   952: ldc_w 356
    //   955: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   958: aload_1
    //   959: invokevirtual 359	java/lang/Object:toString	()Ljava/lang/String;
    //   962: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   965: pop
    //   966: aload_1
    //   967: invokeinterface 362 1 0
    //   972: astore 11
    //   974: aload 11
    //   976: astore_1
    //   977: aload 11
    //   979: ifnull +28 -> 1007
    //   982: aload 11
    //   984: astore_1
    //   985: aload 11
    //   987: ldc_w 364
    //   990: invokevirtual 330	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   993: ifeq +14 -> 1007
    //   996: aload 11
    //   998: ldc_w 364
    //   1001: invokevirtual 63	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   1004: iconst_0
    //   1005: aaload
    //   1006: astore_1
    //   1007: aload_1
    //   1008: ifnull +319 -> 1327
    //   1011: new 295	java/text/SimpleDateFormat
    //   1014: dup
    //   1015: ldc_w 366
    //   1018: invokespecial 298	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   1021: astore 11
    //   1023: aload 11
    //   1025: ldc_w 300
    //   1028: invokestatic 306	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
    //   1031: invokevirtual 310	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
    //   1034: aload 11
    //   1036: aload_1
    //   1037: invokevirtual 313	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   1040: invokevirtual 318	java/util/Date:getTime	()J
    //   1043: l2d
    //   1044: ldc2_w 319
    //   1047: ddiv
    //   1048: dstore_2
    //   1049: aload 12
    //   1051: aload 12
    //   1053: invokevirtual 369	com/cbs/app/pid/CBSAd:getDuration	()I
    //   1056: dload_2
    //   1057: invokestatic 375	java/lang/Math:round	(D)J
    //   1060: l2i
    //   1061: iadd
    //   1062: invokevirtual 378	com/cbs/app/pid/CBSAd:setDuration	(I)V
    //   1065: new 65	java/lang/StringBuilder
    //   1068: dup
    //   1069: ldc_w 380
    //   1072: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1075: aload 12
    //   1077: invokevirtual 369	com/cbs/app/pid/CBSAd:getDuration	()I
    //   1080: invokevirtual 255	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1083: pop
    //   1084: aload 12
    //   1086: astore_1
    //   1087: aload 13
    //   1089: astore 11
    //   1091: goto +208 -> 1299
    //   1094: astore 12
    //   1096: getstatic 21	com/cbs/app/pid/UnicornAsyncTask:a	Ljava/lang/String;
    //   1099: new 65	java/lang/StringBuilder
    //   1102: dup
    //   1103: ldc_w 382
    //   1106: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1109: aload 12
    //   1111: invokevirtual 385	java/text/ParseException:getLocalizedMessage	()Ljava/lang/String;
    //   1114: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1117: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1120: invokestatic 390	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   1123: pop
    //   1124: goto -340 -> 784
    //   1127: astore_1
    //   1128: aload_1
    //   1129: invokevirtual 393	java/net/MalformedURLException:printStackTrace	()V
    //   1132: aload 14
    //   1134: astore 11
    //   1136: aload 11
    //   1138: areturn
    //   1139: astore_1
    //   1140: getstatic 21	com/cbs/app/pid/UnicornAsyncTask:a	Ljava/lang/String;
    //   1143: new 65	java/lang/StringBuilder
    //   1146: dup
    //   1147: ldc_w 382
    //   1150: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1153: aload_1
    //   1154: invokevirtual 385	java/text/ParseException:getLocalizedMessage	()Ljava/lang/String;
    //   1157: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1160: invokevirtual 117	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1163: invokestatic 390	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   1166: pop
    //   1167: goto +160 -> 1327
    //   1170: aload_1
    //   1171: invokevirtual 396	com/cbs/app/pid/CBSAd:getId	()Ljava/lang/String;
    //   1174: ifnull +163 -> 1337
    //   1177: aload 15
    //   1179: aload_1
    //   1180: invokevirtual 341	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   1183: pop
    //   1184: goto +153 -> 1337
    //   1187: iload 6
    //   1189: aload 15
    //   1191: invokevirtual 399	java/util/ArrayList:size	()I
    //   1194: if_icmpge +63 -> 1257
    //   1197: aload 15
    //   1199: iload 6
    //   1201: invokevirtual 403	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1204: checkcast 227	com/cbs/app/pid/CBSAd
    //   1207: astore_1
    //   1208: iconst_0
    //   1209: istore 7
    //   1211: iload 7
    //   1213: iload 6
    //   1215: if_icmpge +128 -> 1343
    //   1218: aload 15
    //   1220: iload 7
    //   1222: invokevirtual 403	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   1225: checkcast 227	com/cbs/app/pid/CBSAd
    //   1228: astore 11
    //   1230: aload_1
    //   1231: invokevirtual 406	com/cbs/app/pid/CBSAd:getStartTime	()I
    //   1234: istore 8
    //   1236: aload_1
    //   1237: aload 11
    //   1239: invokevirtual 369	com/cbs/app/pid/CBSAd:getDuration	()I
    //   1242: iload 8
    //   1244: iadd
    //   1245: invokevirtual 348	com/cbs/app/pid/CBSAd:setStartTime	(I)V
    //   1248: iload 7
    //   1250: iconst_1
    //   1251: iadd
    //   1252: istore 7
    //   1254: goto -43 -> 1211
    //   1257: aload 14
    //   1259: aload 15
    //   1261: invokevirtual 410	com/cbs/app/pid/PidResponseHolder:setAds	(Ljava/util/List;)V
    //   1264: aload 14
    //   1266: areturn
    //   1267: astore_1
    //   1268: aload_1
    //   1269: invokevirtual 411	java/io/IOException:printStackTrace	()V
    //   1272: aload 14
    //   1274: areturn
    //   1275: astore_1
    //   1276: aload_1
    //   1277: invokevirtual 412	javax/xml/parsers/ParserConfigurationException:printStackTrace	()V
    //   1280: aload 14
    //   1282: areturn
    //   1283: astore_1
    //   1284: aload_1
    //   1285: invokevirtual 413	org/xml/sax/SAXException:printStackTrace	()V
    //   1288: aload 14
    //   1290: areturn
    //   1291: astore_1
    //   1292: aload_1
    //   1293: invokevirtual 414	javax/xml/transform/TransformerException:printStackTrace	()V
    //   1296: aload 14
    //   1298: areturn
    //   1299: iload 6
    //   1301: iconst_1
    //   1302: iadd
    //   1303: istore 6
    //   1305: goto -815 -> 490
    //   1308: ldc_w 416
    //   1311: astore_1
    //   1312: goto -1164 -> 148
    //   1315: iload 7
    //   1317: iconst_1
    //   1318: iadd
    //   1319: istore 7
    //   1321: goto -732 -> 589
    //   1324: goto -25 -> 1299
    //   1327: aload 12
    //   1329: astore_1
    //   1330: aload 13
    //   1332: astore 11
    //   1334: goto -35 -> 1299
    //   1337: iconst_0
    //   1338: istore 6
    //   1340: goto -153 -> 1187
    //   1343: iload 6
    //   1345: iconst_1
    //   1346: iadd
    //   1347: istore 6
    //   1349: goto -162 -> 1187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1352	0	this	UnicornAsyncTask
    //   0	1352	1	paramVarArgs	PidResponseHolder[]
    //   740	317	2	d1	double
    //   812	84	4	d2	double
    //   488	860	6	i	int
    //   587	733	7	j	int
    //   1234	11	8	k	int
    //   774	3	9	l	long
    //   5	1328	11	localObject1	Object
    //   1	1084	12	localObject2	Object
    //   1094	234	12	localParseException	java.text.ParseException
    //   67	1264	13	localObject3	Object
    //   23	1274	14	localPidResponseHolder	PidResponseHolder
    //   72	1188	15	localObject4	Object
    //   465	38	16	localNodeList	org.w3c.dom.NodeList
    //   529	373	17	localObject5	Object
    //   725	164	18	str	String
    // Exception table:
    //   from	to	target	type
    //   741	776	1094	java/text/ParseException
    //   25	46	1127	java/net/MalformedURLException
    //   50	64	1127	java/net/MalformedURLException
    //   80	145	1127	java/net/MalformedURLException
    //   148	292	1127	java/net/MalformedURLException
    //   292	418	1127	java/net/MalformedURLException
    //   421	487	1127	java/net/MalformedURLException
    //   490	540	1127	java/net/MalformedURLException
    //   545	586	1127	java/net/MalformedURLException
    //   589	639	1127	java/net/MalformedURLException
    //   644	696	1127	java/net/MalformedURLException
    //   704	739	1127	java/net/MalformedURLException
    //   741	776	1127	java/net/MalformedURLException
    //   784	811	1127	java/net/MalformedURLException
    //   822	849	1127	java/net/MalformedURLException
    //   860	886	1127	java/net/MalformedURLException
    //   886	912	1127	java/net/MalformedURLException
    //   916	974	1127	java/net/MalformedURLException
    //   985	1007	1127	java/net/MalformedURLException
    //   1011	1084	1127	java/net/MalformedURLException
    //   1096	1124	1127	java/net/MalformedURLException
    //   1140	1167	1127	java/net/MalformedURLException
    //   1170	1184	1127	java/net/MalformedURLException
    //   1187	1208	1127	java/net/MalformedURLException
    //   1218	1248	1127	java/net/MalformedURLException
    //   1257	1264	1127	java/net/MalformedURLException
    //   1011	1084	1139	java/text/ParseException
    //   25	46	1267	java/io/IOException
    //   50	64	1267	java/io/IOException
    //   80	145	1267	java/io/IOException
    //   148	292	1267	java/io/IOException
    //   292	418	1267	java/io/IOException
    //   421	487	1267	java/io/IOException
    //   490	540	1267	java/io/IOException
    //   545	586	1267	java/io/IOException
    //   589	639	1267	java/io/IOException
    //   644	696	1267	java/io/IOException
    //   704	739	1267	java/io/IOException
    //   741	776	1267	java/io/IOException
    //   784	811	1267	java/io/IOException
    //   822	849	1267	java/io/IOException
    //   860	886	1267	java/io/IOException
    //   886	912	1267	java/io/IOException
    //   916	974	1267	java/io/IOException
    //   985	1007	1267	java/io/IOException
    //   1011	1084	1267	java/io/IOException
    //   1096	1124	1267	java/io/IOException
    //   1140	1167	1267	java/io/IOException
    //   1170	1184	1267	java/io/IOException
    //   1187	1208	1267	java/io/IOException
    //   1218	1248	1267	java/io/IOException
    //   1257	1264	1267	java/io/IOException
    //   25	46	1275	javax/xml/parsers/ParserConfigurationException
    //   50	64	1275	javax/xml/parsers/ParserConfigurationException
    //   80	145	1275	javax/xml/parsers/ParserConfigurationException
    //   148	292	1275	javax/xml/parsers/ParserConfigurationException
    //   292	418	1275	javax/xml/parsers/ParserConfigurationException
    //   421	487	1275	javax/xml/parsers/ParserConfigurationException
    //   490	540	1275	javax/xml/parsers/ParserConfigurationException
    //   545	586	1275	javax/xml/parsers/ParserConfigurationException
    //   589	639	1275	javax/xml/parsers/ParserConfigurationException
    //   644	696	1275	javax/xml/parsers/ParserConfigurationException
    //   704	739	1275	javax/xml/parsers/ParserConfigurationException
    //   741	776	1275	javax/xml/parsers/ParserConfigurationException
    //   784	811	1275	javax/xml/parsers/ParserConfigurationException
    //   822	849	1275	javax/xml/parsers/ParserConfigurationException
    //   860	886	1275	javax/xml/parsers/ParserConfigurationException
    //   886	912	1275	javax/xml/parsers/ParserConfigurationException
    //   916	974	1275	javax/xml/parsers/ParserConfigurationException
    //   985	1007	1275	javax/xml/parsers/ParserConfigurationException
    //   1011	1084	1275	javax/xml/parsers/ParserConfigurationException
    //   1096	1124	1275	javax/xml/parsers/ParserConfigurationException
    //   1140	1167	1275	javax/xml/parsers/ParserConfigurationException
    //   1170	1184	1275	javax/xml/parsers/ParserConfigurationException
    //   1187	1208	1275	javax/xml/parsers/ParserConfigurationException
    //   1218	1248	1275	javax/xml/parsers/ParserConfigurationException
    //   1257	1264	1275	javax/xml/parsers/ParserConfigurationException
    //   25	46	1283	org/xml/sax/SAXException
    //   50	64	1283	org/xml/sax/SAXException
    //   80	145	1283	org/xml/sax/SAXException
    //   148	292	1283	org/xml/sax/SAXException
    //   292	418	1283	org/xml/sax/SAXException
    //   421	487	1283	org/xml/sax/SAXException
    //   490	540	1283	org/xml/sax/SAXException
    //   545	586	1283	org/xml/sax/SAXException
    //   589	639	1283	org/xml/sax/SAXException
    //   644	696	1283	org/xml/sax/SAXException
    //   704	739	1283	org/xml/sax/SAXException
    //   741	776	1283	org/xml/sax/SAXException
    //   784	811	1283	org/xml/sax/SAXException
    //   822	849	1283	org/xml/sax/SAXException
    //   860	886	1283	org/xml/sax/SAXException
    //   886	912	1283	org/xml/sax/SAXException
    //   916	974	1283	org/xml/sax/SAXException
    //   985	1007	1283	org/xml/sax/SAXException
    //   1011	1084	1283	org/xml/sax/SAXException
    //   1096	1124	1283	org/xml/sax/SAXException
    //   1140	1167	1283	org/xml/sax/SAXException
    //   1170	1184	1283	org/xml/sax/SAXException
    //   1187	1208	1283	org/xml/sax/SAXException
    //   1218	1248	1283	org/xml/sax/SAXException
    //   1257	1264	1283	org/xml/sax/SAXException
    //   25	46	1291	javax/xml/transform/TransformerException
    //   50	64	1291	javax/xml/transform/TransformerException
    //   80	145	1291	javax/xml/transform/TransformerException
    //   148	292	1291	javax/xml/transform/TransformerException
    //   292	418	1291	javax/xml/transform/TransformerException
    //   421	487	1291	javax/xml/transform/TransformerException
    //   490	540	1291	javax/xml/transform/TransformerException
    //   545	586	1291	javax/xml/transform/TransformerException
    //   589	639	1291	javax/xml/transform/TransformerException
    //   644	696	1291	javax/xml/transform/TransformerException
    //   704	739	1291	javax/xml/transform/TransformerException
    //   741	776	1291	javax/xml/transform/TransformerException
    //   784	811	1291	javax/xml/transform/TransformerException
    //   822	849	1291	javax/xml/transform/TransformerException
    //   860	886	1291	javax/xml/transform/TransformerException
    //   886	912	1291	javax/xml/transform/TransformerException
    //   916	974	1291	javax/xml/transform/TransformerException
    //   985	1007	1291	javax/xml/transform/TransformerException
    //   1011	1084	1291	javax/xml/transform/TransformerException
    //   1096	1124	1291	javax/xml/transform/TransformerException
    //   1140	1167	1291	javax/xml/transform/TransformerException
    //   1170	1184	1291	javax/xml/transform/TransformerException
    //   1187	1208	1291	javax/xml/transform/TransformerException
    //   1218	1248	1291	javax/xml/transform/TransformerException
    //   1257	1264	1291	javax/xml/transform/TransformerException
  }
  
  private static String a(String paramString)
  {
    Object localObject = URLEncoder.encode(paramString, "UTF-8");
    paramString = ((String)localObject).toLowerCase().toCharArray();
    localObject = ((String)localObject).toCharArray();
    int i = 0;
    while (i < localObject.length - 2)
    {
      if (localObject[i] == '%')
      {
        localObject[(i + 1)] = paramString[(i + 1)];
        localObject[(i + 2)] = paramString[(i + 2)];
      }
      i += 1;
    }
    return new String((char[])localObject);
  }
  
  private static String a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new SecretKeySpec(paramString2.getBytes("UTF-8"), "HmacSHA1");
      Mac localMac = Mac.getInstance("HmacSHA1");
      localMac.init(paramString2);
      paramString1 = new String(Base64.encodeBase64(localMac.doFinal(paramString1.getBytes("UTF-8"))), "UTF-8");
      return paramString1;
    }
    catch (UnsupportedEncodingException paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    catch (NoSuchAlgorithmException paramString1)
    {
      paramString1.printStackTrace();
      return null;
    }
    catch (InvalidKeyException paramString1)
    {
      paramString1.printStackTrace();
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.pid.UnicornAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */