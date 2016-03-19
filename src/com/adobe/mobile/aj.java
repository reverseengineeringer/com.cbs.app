package com.adobe.mobile;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ssl.StrictHostnameVerifier;

final class aj
{
  protected static File a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() <= 0)) {}
    do
    {
      return null;
      paramString2 = f(paramString2);
    } while (paramString2 == null);
    String[] arrayOfString = paramString2.list();
    if ((arrayOfString == null) || (arrayOfString.length <= 0))
    {
      am.c("Cached Files - Directory is empty (%s).", new Object[] { paramString2.getAbsolutePath() });
      return null;
    }
    String str1 = i(paramString1);
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str2 = arrayOfString[i];
      if (str2.substring(0, str2.lastIndexOf('.')).equals(str1)) {
        return new File(paramString2, str2);
      }
      i += 1;
    }
    am.c("Cached Files - This file has not previously been cached (%s).", new Object[] { paramString1 });
    return null;
  }
  
  protected static void a(String paramString, b paramb)
  {
    a(paramString, paramb, "adbdownloadcache");
  }
  
  protected static void a(String paramString1, b paramb, String paramString2)
  {
    new a(paramString1, paramb, 10000, 10000, paramString2, (byte)0).run();
  }
  
  protected static void a(String paramString, List<String> paramList)
  {
    if (paramList.size() <= 0) {
      c(paramString);
    }
    do
    {
      do
      {
        return;
        paramString = f(paramString);
      } while (paramString == null);
      paramString = paramString.listFiles();
    } while ((paramString == null) || (paramString.length <= 0));
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      localArrayList.add(i((String)paramList.next()));
    }
    int j = paramString.length;
    int i = 0;
    label88:
    if (i < j)
    {
      paramList = paramString[i];
      String str = paramList.getName();
      if (!localArrayList.contains(str.substring(0, str.indexOf("."))))
      {
        if (!paramList.delete()) {
          break label147;
        }
        am.c("Cached File - Removed unused cache file", new Object[0]);
      }
    }
    for (;;)
    {
      i += 1;
      break label88;
      break;
      label147:
      am.b("Cached File - Failed to remove unused cache file", new Object[0]);
    }
  }
  
  protected static boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0)) {
      return false;
    }
    try
    {
      new URL(paramString);
      return true;
    }
    catch (MalformedURLException paramString) {}
    return false;
  }
  
  protected static File b(String paramString)
  {
    return a(paramString, "adbdownloadcache");
  }
  
  protected static void c(String paramString)
  {
    paramString = f(paramString);
    if (paramString == null) {}
    do
    {
      return;
      paramString = paramString.listFiles();
    } while ((paramString == null) || (paramString.length <= 0));
    int j = paramString.length;
    int i = 0;
    label29:
    if (i < j)
    {
      if (!paramString[i].delete()) {
        break label59;
      }
      am.c("Cached File - Removed unused cache file", new Object[0]);
    }
    for (;;)
    {
      i += 1;
      break label29;
      break;
      label59:
      am.b("Cached File - Failed to remove unused cache file", new Object[0]);
    }
  }
  
  private static File f(String paramString)
  {
    File localFile = new File(am.i(), paramString);
    paramString = localFile;
    if (!localFile.exists())
    {
      paramString = localFile;
      if (!localFile.mkdir())
      {
        am.b("Cached File - unable to open/make download cache directory", new Object[0]);
        paramString = null;
      }
    }
    return paramString;
  }
  
  private static String g(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      am.b("Cached File - Path was null or empty for Cache File", new Object[0]);
      return null;
    }
    return paramString.substring(paramString.lastIndexOf(".") + 1);
  }
  
  private static String[] h(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
    {
      am.b("Cached File - Extension was null or empty on Cache File", new Object[0]);
      return null;
    }
    String[] arrayOfString = paramString.split("_");
    if (arrayOfString.length != 2)
    {
      am.b("Cached File - Invalid Extension on Cache File (%s)", new Object[] { paramString });
      return null;
    }
    return arrayOfString;
  }
  
  private static String i(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0)) {
      return null;
    }
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes("UTF-8"));
      localObject = ((MessageDigest)localObject).digest();
      StringBuilder localStringBuilder = new StringBuilder();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        for (paramString = Integer.toHexString(localObject[i] & 0xFF); paramString.length() < 2; paramString = "0" + paramString) {}
        localStringBuilder.append(paramString);
        i += 1;
      }
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      am.a("Cached Files - unable to get md5 hash (%s)", new Object[] { paramString.getMessage() });
      return null;
    }
    catch (UnsupportedEncodingException paramString)
    {
      am.a("Cached Files - Unsupported Encoding: UTF-8 (%s)", new Object[] { paramString.getMessage() });
    }
    return null;
  }
  
  private static final class a
    implements Runnable
  {
    private final aj.b a;
    private final String b;
    private final int c;
    private final int d;
    private final String e;
    
    private a(String paramString1, aj.b paramb, int paramInt1, int paramInt2, String paramString2)
    {
      b = paramString1;
      a = paramb;
      c = paramInt1;
      d = paramInt2;
      e = paramString2;
    }
    
    private static HttpURLConnection a(String paramString)
    {
      try
      {
        paramString = new URL(paramString);
        if (paramString.getProtocol().equals("https"))
        {
          paramString = (HttpsURLConnection)paramString.openConnection();
          paramString.setHostnameVerifier(new StrictHostnameVerifier());
          return paramString;
        }
        paramString = (HttpURLConnection)paramString.openConnection();
        return paramString;
      }
      catch (Exception paramString)
      {
        am.a("Cached Files - Exception opening URL(%s)", new Object[] { paramString.getLocalizedMessage() });
      }
      return null;
    }
    
    /* Error */
    public final void run()
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_3
      //   2: aload_0
      //   3: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   6: ifnonnull +30 -> 36
      //   9: ldc 89
      //   11: iconst_0
      //   12: anewarray 4	java/lang/Object
      //   15: invokestatic 91	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   18: aload_0
      //   19: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   22: ifnull +13 -> 35
      //   25: aload_0
      //   26: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   29: aconst_null
      //   30: invokeinterface 96 2 0
      //   35: return
      //   36: aload_0
      //   37: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   40: invokestatic 99	com/adobe/mobile/aj:a	(Ljava/lang/String;)Z
      //   43: ifne +37 -> 80
      //   46: ldc 101
      //   48: iconst_1
      //   49: anewarray 4	java/lang/Object
      //   52: dup
      //   53: iconst_0
      //   54: aload_0
      //   55: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   58: aastore
      //   59: invokestatic 91	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   62: aload_0
      //   63: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   66: ifnull -31 -> 35
      //   69: aload_0
      //   70: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   73: aconst_null
      //   74: invokeinterface 96 2 0
      //   79: return
      //   80: aload_0
      //   81: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   84: aload_0
      //   85: getfield 31	com/adobe/mobile/aj$a:e	Ljava/lang/String;
      //   88: invokestatic 104	com/adobe/mobile/aj:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
      //   91: astore_2
      //   92: new 106	java/text/SimpleDateFormat
      //   95: dup
      //   96: ldc 108
      //   98: getstatic 114	java/util/Locale:US	Ljava/util/Locale;
      //   101: invokespecial 117	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
      //   104: astore 4
      //   106: aload 4
      //   108: ldc 119
      //   110: invokestatic 125	java/util/TimeZone:getTimeZone	(Ljava/lang/String;)Ljava/util/TimeZone;
      //   113: invokevirtual 129	java/text/SimpleDateFormat:setTimeZone	(Ljava/util/TimeZone;)V
      //   116: aload_0
      //   117: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   120: invokestatic 131	com/adobe/mobile/aj$a:a	(Ljava/lang/String;)Ljava/net/HttpURLConnection;
      //   123: astore 7
      //   125: aload 7
      //   127: ifnonnull +21 -> 148
      //   130: aload_0
      //   131: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   134: ifnull -99 -> 35
      //   137: aload_0
      //   138: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   141: aconst_null
      //   142: invokeinterface 96 2 0
      //   147: return
      //   148: aload 7
      //   150: aload_0
      //   151: getfield 27	com/adobe/mobile/aj$a:c	I
      //   154: invokevirtual 135	java/net/HttpURLConnection:setConnectTimeout	(I)V
      //   157: aload 7
      //   159: aload_0
      //   160: getfield 29	com/adobe/mobile/aj$a:d	I
      //   163: invokevirtual 138	java/net/HttpURLConnection:setReadTimeout	(I)V
      //   166: aload_2
      //   167: ifnull +65 -> 232
      //   170: aload_2
      //   171: invokevirtual 143	java/io/File:getPath	()Ljava/lang/String;
      //   174: invokestatic 146	com/adobe/mobile/aj:d	(Ljava/lang/String;)Ljava/lang/String;
      //   177: invokestatic 148	com/adobe/mobile/am:c	(Ljava/lang/String;)Ljava/lang/String;
      //   180: astore 5
      //   182: aload_2
      //   183: invokevirtual 143	java/io/File:getPath	()Ljava/lang/String;
      //   186: invokestatic 151	com/adobe/mobile/aj:e	(Ljava/lang/String;)J
      //   189: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
      //   192: astore 6
      //   194: aload 6
      //   196: invokevirtual 161	java/lang/Long:longValue	()J
      //   199: lconst_0
      //   200: lcmp
      //   201: ifeq +17 -> 218
      //   204: aload 7
      //   206: ldc -93
      //   208: aload 4
      //   210: aload 6
      //   212: invokevirtual 167	java/text/SimpleDateFormat:format	(Ljava/lang/Object;)Ljava/lang/String;
      //   215: invokevirtual 171	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
      //   218: aload 5
      //   220: ifnull +12 -> 232
      //   223: aload 7
      //   225: ldc -83
      //   227: aload 5
      //   229: invokevirtual 171	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
      //   232: aload 7
      //   234: invokevirtual 176	java/net/HttpURLConnection:connect	()V
      //   237: aload 7
      //   239: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
      //   242: sipush 304
      //   245: if_icmpne +60 -> 305
      //   248: ldc -74
      //   250: iconst_1
      //   251: anewarray 4	java/lang/Object
      //   254: dup
      //   255: iconst_0
      //   256: aload_0
      //   257: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   260: aastore
      //   261: invokestatic 91	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   264: aload_0
      //   265: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   268: ifnull +13 -> 281
      //   271: aload_0
      //   272: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   275: aload_2
      //   276: invokeinterface 96 2 0
      //   281: aload 7
      //   283: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   286: return
      //   287: astore_2
      //   288: ldc -69
      //   290: iconst_1
      //   291: anewarray 4	java/lang/Object
      //   294: dup
      //   295: iconst_0
      //   296: aload_2
      //   297: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   300: aastore
      //   301: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   304: return
      //   305: aload 7
      //   307: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
      //   310: sipush 404
      //   313: if_icmpne +60 -> 373
      //   316: ldc -64
      //   318: iconst_1
      //   319: anewarray 4	java/lang/Object
      //   322: dup
      //   323: iconst_0
      //   324: aload_0
      //   325: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   328: aastore
      //   329: invokestatic 91	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   332: aload_0
      //   333: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   336: ifnull +13 -> 349
      //   339: aload_0
      //   340: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   343: aload_2
      //   344: invokeinterface 96 2 0
      //   349: aload 7
      //   351: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   354: return
      //   355: astore_2
      //   356: ldc -69
      //   358: iconst_1
      //   359: anewarray 4	java/lang/Object
      //   362: dup
      //   363: iconst_0
      //   364: aload_2
      //   365: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   368: aastore
      //   369: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   372: return
      //   373: aload 7
      //   375: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
      //   378: sipush 200
      //   381: if_icmpeq +79 -> 460
      //   384: ldc -62
      //   386: iconst_3
      //   387: anewarray 4	java/lang/Object
      //   390: dup
      //   391: iconst_0
      //   392: aload_0
      //   393: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   396: aastore
      //   397: dup
      //   398: iconst_1
      //   399: aload 7
      //   401: invokevirtual 180	java/net/HttpURLConnection:getResponseCode	()I
      //   404: invokestatic 199	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
      //   407: aastore
      //   408: dup
      //   409: iconst_2
      //   410: aload 7
      //   412: invokevirtual 202	java/net/HttpURLConnection:getResponseMessage	()Ljava/lang/String;
      //   415: aastore
      //   416: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   419: aload_0
      //   420: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   423: ifnull +13 -> 436
      //   426: aload_0
      //   427: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   430: aload_2
      //   431: invokeinterface 96 2 0
      //   436: aload 7
      //   438: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   441: return
      //   442: astore_2
      //   443: ldc -69
      //   445: iconst_1
      //   446: anewarray 4	java/lang/Object
      //   449: dup
      //   450: iconst_0
      //   451: aload_2
      //   452: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   455: aastore
      //   456: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   459: return
      //   460: aload_2
      //   461: ifnull +15 -> 476
      //   464: aload_0
      //   465: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   468: aload_0
      //   469: getfield 31	com/adobe/mobile/aj$a:e	Ljava/lang/String;
      //   472: invokestatic 205	com/adobe/mobile/aj:b	(Ljava/lang/String;Ljava/lang/String;)Z
      //   475: pop
      //   476: new 207	java/util/Date
      //   479: dup
      //   480: aload 7
      //   482: invokevirtual 210	java/net/HttpURLConnection:getLastModified	()J
      //   485: invokespecial 213	java/util/Date:<init>	(J)V
      //   488: astore 5
      //   490: aload 7
      //   492: ldc -41
      //   494: invokevirtual 218	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
      //   497: astore 4
      //   499: aload 4
      //   501: astore_2
      //   502: aload 4
      //   504: ifnull +9 -> 513
      //   507: aload 4
      //   509: invokestatic 220	com/adobe/mobile/am:b	(Ljava/lang/String;)Ljava/lang/String;
      //   512: astore_2
      //   513: aload_0
      //   514: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   517: aload 5
      //   519: aload_2
      //   520: aload_0
      //   521: getfield 31	com/adobe/mobile/aj$a:e	Ljava/lang/String;
      //   524: invokestatic 223	com/adobe/mobile/aj:a	(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
      //   527: astore 6
      //   529: aload 6
      //   531: ifnonnull +44 -> 575
      //   534: aload_0
      //   535: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   538: ifnull +13 -> 551
      //   541: aload_0
      //   542: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   545: aconst_null
      //   546: invokeinterface 96 2 0
      //   551: aload 7
      //   553: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   556: return
      //   557: astore_2
      //   558: ldc -69
      //   560: iconst_1
      //   561: anewarray 4	java/lang/Object
      //   564: dup
      //   565: iconst_0
      //   566: aload_2
      //   567: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   570: aastore
      //   571: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   574: return
      //   575: aload 7
      //   577: invokevirtual 227	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
      //   580: astore_2
      //   581: new 229	java/io/FileOutputStream
      //   584: dup
      //   585: aload 6
      //   587: invokespecial 231	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
      //   590: astore 5
      //   592: aload 5
      //   594: astore 4
      //   596: aload_2
      //   597: astore_3
      //   598: sipush 4096
      //   601: newarray <illegal type>
      //   603: astore 8
      //   605: aload 5
      //   607: astore 4
      //   609: aload_2
      //   610: astore_3
      //   611: aload_2
      //   612: aload 8
      //   614: invokevirtual 237	java/io/InputStream:read	([B)I
      //   617: istore_1
      //   618: iload_1
      //   619: iconst_m1
      //   620: if_icmpeq +98 -> 718
      //   623: aload 5
      //   625: astore 4
      //   627: aload_2
      //   628: astore_3
      //   629: aload 5
      //   631: aload 8
      //   633: iconst_0
      //   634: iload_1
      //   635: invokevirtual 243	java/io/OutputStream:write	([BII)V
      //   638: goto -33 -> 605
      //   641: astore_3
      //   642: aload 5
      //   644: astore_3
      //   645: ldc -11
      //   647: iconst_1
      //   648: anewarray 4	java/lang/Object
      //   651: dup
      //   652: iconst_0
      //   653: aload_0
      //   654: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   657: aastore
      //   658: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   661: aload_0
      //   662: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   665: ifnull +13 -> 678
      //   668: aload_0
      //   669: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   672: aconst_null
      //   673: invokeinterface 96 2 0
      //   678: aload_3
      //   679: ifnull +7 -> 686
      //   682: aload_3
      //   683: invokevirtual 248	java/io/OutputStream:close	()V
      //   686: aload_2
      //   687: ifnull +7 -> 694
      //   690: aload_2
      //   691: invokevirtual 249	java/io/InputStream:close	()V
      //   694: aload 7
      //   696: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   699: return
      //   700: astore_2
      //   701: ldc -69
      //   703: iconst_1
      //   704: anewarray 4	java/lang/Object
      //   707: dup
      //   708: iconst_0
      //   709: aload_2
      //   710: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   713: aastore
      //   714: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   717: return
      //   718: aload 5
      //   720: astore 4
      //   722: aload_2
      //   723: astore_3
      //   724: ldc -5
      //   726: iconst_1
      //   727: anewarray 4	java/lang/Object
      //   730: dup
      //   731: iconst_0
      //   732: aload_0
      //   733: getfield 23	com/adobe/mobile/aj$a:b	Ljava/lang/String;
      //   736: aastore
      //   737: invokestatic 91	com/adobe/mobile/am:c	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   740: aload 5
      //   742: astore 4
      //   744: aload_2
      //   745: astore_3
      //   746: aload_0
      //   747: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   750: ifnull +20 -> 770
      //   753: aload 5
      //   755: astore 4
      //   757: aload_2
      //   758: astore_3
      //   759: aload_0
      //   760: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   763: aload 6
      //   765: invokeinterface 96 2 0
      //   770: aload 5
      //   772: invokevirtual 248	java/io/OutputStream:close	()V
      //   775: aload_2
      //   776: ifnull +7 -> 783
      //   779: aload_2
      //   780: invokevirtual 249	java/io/InputStream:close	()V
      //   783: aload 7
      //   785: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   788: return
      //   789: astore_2
      //   790: ldc -69
      //   792: iconst_1
      //   793: anewarray 4	java/lang/Object
      //   796: dup
      //   797: iconst_0
      //   798: aload_2
      //   799: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   802: aastore
      //   803: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   806: return
      //   807: astore 6
      //   809: aconst_null
      //   810: astore_2
      //   811: aconst_null
      //   812: astore 5
      //   814: aload 5
      //   816: astore 4
      //   818: aload_2
      //   819: astore_3
      //   820: ldc -3
      //   822: iconst_1
      //   823: anewarray 4	java/lang/Object
      //   826: dup
      //   827: iconst_0
      //   828: aload 6
      //   830: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   833: aastore
      //   834: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   837: aload 5
      //   839: astore 4
      //   841: aload_2
      //   842: astore_3
      //   843: aload_0
      //   844: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   847: ifnull +19 -> 866
      //   850: aload 5
      //   852: astore 4
      //   854: aload_2
      //   855: astore_3
      //   856: aload_0
      //   857: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   860: aconst_null
      //   861: invokeinterface 96 2 0
      //   866: aload 5
      //   868: ifnull +8 -> 876
      //   871: aload 5
      //   873: invokevirtual 248	java/io/OutputStream:close	()V
      //   876: aload_2
      //   877: ifnull +7 -> 884
      //   880: aload_2
      //   881: invokevirtual 249	java/io/InputStream:close	()V
      //   884: aload 7
      //   886: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   889: return
      //   890: astore_2
      //   891: ldc -69
      //   893: iconst_1
      //   894: anewarray 4	java/lang/Object
      //   897: dup
      //   898: iconst_0
      //   899: aload_2
      //   900: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   903: aastore
      //   904: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   907: return
      //   908: astore 6
      //   910: aconst_null
      //   911: astore_2
      //   912: aconst_null
      //   913: astore 5
      //   915: aload 5
      //   917: astore 4
      //   919: aload_2
      //   920: astore_3
      //   921: ldc -1
      //   923: iconst_1
      //   924: anewarray 4	java/lang/Object
      //   927: dup
      //   928: iconst_0
      //   929: aload 6
      //   931: invokevirtual 75	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
      //   934: aastore
      //   935: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   938: aload 5
      //   940: astore 4
      //   942: aload_2
      //   943: astore_3
      //   944: aload_0
      //   945: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   948: ifnull +19 -> 967
      //   951: aload 5
      //   953: astore 4
      //   955: aload_2
      //   956: astore_3
      //   957: aload_0
      //   958: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   961: aconst_null
      //   962: invokeinterface 96 2 0
      //   967: aload 5
      //   969: ifnull +8 -> 977
      //   972: aload 5
      //   974: invokevirtual 248	java/io/OutputStream:close	()V
      //   977: aload_2
      //   978: ifnull +7 -> 985
      //   981: aload_2
      //   982: invokevirtual 249	java/io/InputStream:close	()V
      //   985: aload 7
      //   987: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   990: return
      //   991: astore_2
      //   992: ldc -69
      //   994: iconst_1
      //   995: anewarray 4	java/lang/Object
      //   998: dup
      //   999: iconst_0
      //   1000: aload_2
      //   1001: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   1004: aastore
      //   1005: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   1008: return
      //   1009: astore 6
      //   1011: aconst_null
      //   1012: astore_2
      //   1013: aconst_null
      //   1014: astore 5
      //   1016: aload 5
      //   1018: astore 4
      //   1020: aload_2
      //   1021: astore_3
      //   1022: ldc_w 257
      //   1025: iconst_1
      //   1026: anewarray 4	java/lang/Object
      //   1029: dup
      //   1030: iconst_0
      //   1031: aload 6
      //   1033: invokevirtual 258	java/lang/Error:getLocalizedMessage	()Ljava/lang/String;
      //   1036: aastore
      //   1037: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   1040: aload 5
      //   1042: astore 4
      //   1044: aload_2
      //   1045: astore_3
      //   1046: aload_0
      //   1047: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   1050: ifnull +19 -> 1069
      //   1053: aload 5
      //   1055: astore 4
      //   1057: aload_2
      //   1058: astore_3
      //   1059: aload_0
      //   1060: getfield 25	com/adobe/mobile/aj$a:a	Lcom/adobe/mobile/aj$b;
      //   1063: aconst_null
      //   1064: invokeinterface 96 2 0
      //   1069: aload 5
      //   1071: ifnull +8 -> 1079
      //   1074: aload 5
      //   1076: invokevirtual 248	java/io/OutputStream:close	()V
      //   1079: aload_2
      //   1080: ifnull +7 -> 1087
      //   1083: aload_2
      //   1084: invokevirtual 249	java/io/InputStream:close	()V
      //   1087: aload 7
      //   1089: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   1092: return
      //   1093: astore_2
      //   1094: ldc -69
      //   1096: iconst_1
      //   1097: anewarray 4	java/lang/Object
      //   1100: dup
      //   1101: iconst_0
      //   1102: aload_2
      //   1103: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   1106: aastore
      //   1107: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   1110: return
      //   1111: astore 5
      //   1113: aconst_null
      //   1114: astore_2
      //   1115: aconst_null
      //   1116: astore 4
      //   1118: aload 4
      //   1120: ifnull +8 -> 1128
      //   1123: aload 4
      //   1125: invokevirtual 248	java/io/OutputStream:close	()V
      //   1128: aload_2
      //   1129: ifnull +7 -> 1136
      //   1132: aload_2
      //   1133: invokevirtual 249	java/io/InputStream:close	()V
      //   1136: aload 7
      //   1138: invokevirtual 185	java/net/HttpURLConnection:disconnect	()V
      //   1141: aload 5
      //   1143: athrow
      //   1144: astore_2
      //   1145: ldc -69
      //   1147: iconst_1
      //   1148: anewarray 4	java/lang/Object
      //   1151: dup
      //   1152: iconst_0
      //   1153: aload_2
      //   1154: invokevirtual 188	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
      //   1157: aastore
      //   1158: invokestatic 190	com/adobe/mobile/am:b	(Ljava/lang/String;[Ljava/lang/Object;)V
      //   1161: goto -20 -> 1141
      //   1164: astore 5
      //   1166: aconst_null
      //   1167: astore 4
      //   1169: goto -51 -> 1118
      //   1172: astore 5
      //   1174: aload_3
      //   1175: astore_2
      //   1176: goto -58 -> 1118
      //   1179: astore 5
      //   1181: aload_3
      //   1182: astore 4
      //   1184: goto -66 -> 1118
      //   1187: astore 6
      //   1189: aconst_null
      //   1190: astore 5
      //   1192: goto -176 -> 1016
      //   1195: astore 6
      //   1197: goto -181 -> 1016
      //   1200: astore 6
      //   1202: aconst_null
      //   1203: astore 5
      //   1205: goto -290 -> 915
      //   1208: astore 6
      //   1210: goto -295 -> 915
      //   1213: astore 6
      //   1215: aconst_null
      //   1216: astore 5
      //   1218: goto -404 -> 814
      //   1221: astore 6
      //   1223: goto -409 -> 814
      //   1226: astore_2
      //   1227: aconst_null
      //   1228: astore_2
      //   1229: goto -584 -> 645
      //   1232: astore 4
      //   1234: goto -589 -> 645
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	1237	0	this	a
      //   617	18	1	i	int
      //   91	185	2	localFile	File
      //   287	57	2	localIOException1	java.io.IOException
      //   355	76	2	localIOException2	java.io.IOException
      //   442	19	2	localIOException3	java.io.IOException
      //   501	19	2	localObject1	Object
      //   557	10	2	localIOException4	java.io.IOException
      //   580	111	2	localInputStream	java.io.InputStream
      //   700	80	2	localIOException5	java.io.IOException
      //   789	10	2	localIOException6	java.io.IOException
      //   810	71	2	localObject2	Object
      //   890	10	2	localIOException7	java.io.IOException
      //   911	71	2	localObject3	Object
      //   991	10	2	localIOException8	java.io.IOException
      //   1012	72	2	localObject4	Object
      //   1093	10	2	localIOException9	java.io.IOException
      //   1114	19	2	localObject5	Object
      //   1144	10	2	localIOException10	java.io.IOException
      //   1175	1	2	localObject6	Object
      //   1226	1	2	localSocketTimeoutException1	java.net.SocketTimeoutException
      //   1228	1	2	localObject7	Object
      //   1	628	3	localObject8	Object
      //   641	1	3	localSocketTimeoutException2	java.net.SocketTimeoutException
      //   644	538	3	localObject9	Object
      //   104	1079	4	localObject10	Object
      //   1232	1	4	localSocketTimeoutException3	java.net.SocketTimeoutException
      //   180	895	5	localObject11	Object
      //   1111	31	5	localObject12	Object
      //   1164	1	5	localObject13	Object
      //   1172	1	5	localObject14	Object
      //   1179	1	5	localObject15	Object
      //   1190	27	5	localObject16	Object
      //   192	572	6	localObject17	Object
      //   807	22	6	localIOException11	java.io.IOException
      //   908	22	6	localException1	Exception
      //   1009	23	6	localError1	Error
      //   1187	1	6	localError2	Error
      //   1195	1	6	localError3	Error
      //   1200	1	6	localException2	Exception
      //   1208	1	6	localException3	Exception
      //   1213	1	6	localIOException12	java.io.IOException
      //   1221	1	6	localIOException13	java.io.IOException
      //   123	1014	7	localHttpURLConnection	HttpURLConnection
      //   603	29	8	arrayOfByte	byte[]
      // Exception table:
      //   from	to	target	type
      //   281	286	287	java/io/IOException
      //   349	354	355	java/io/IOException
      //   436	441	442	java/io/IOException
      //   551	556	557	java/io/IOException
      //   598	605	641	java/net/SocketTimeoutException
      //   611	618	641	java/net/SocketTimeoutException
      //   629	638	641	java/net/SocketTimeoutException
      //   724	740	641	java/net/SocketTimeoutException
      //   746	753	641	java/net/SocketTimeoutException
      //   759	770	641	java/net/SocketTimeoutException
      //   682	686	700	java/io/IOException
      //   690	694	700	java/io/IOException
      //   694	699	700	java/io/IOException
      //   770	775	789	java/io/IOException
      //   779	783	789	java/io/IOException
      //   783	788	789	java/io/IOException
      //   232	281	807	java/io/IOException
      //   305	349	807	java/io/IOException
      //   373	436	807	java/io/IOException
      //   464	476	807	java/io/IOException
      //   476	499	807	java/io/IOException
      //   507	513	807	java/io/IOException
      //   513	529	807	java/io/IOException
      //   534	551	807	java/io/IOException
      //   575	581	807	java/io/IOException
      //   871	876	890	java/io/IOException
      //   880	884	890	java/io/IOException
      //   884	889	890	java/io/IOException
      //   232	281	908	java/lang/Exception
      //   305	349	908	java/lang/Exception
      //   373	436	908	java/lang/Exception
      //   464	476	908	java/lang/Exception
      //   476	499	908	java/lang/Exception
      //   507	513	908	java/lang/Exception
      //   513	529	908	java/lang/Exception
      //   534	551	908	java/lang/Exception
      //   575	581	908	java/lang/Exception
      //   972	977	991	java/io/IOException
      //   981	985	991	java/io/IOException
      //   985	990	991	java/io/IOException
      //   232	281	1009	java/lang/Error
      //   305	349	1009	java/lang/Error
      //   373	436	1009	java/lang/Error
      //   464	476	1009	java/lang/Error
      //   476	499	1009	java/lang/Error
      //   507	513	1009	java/lang/Error
      //   513	529	1009	java/lang/Error
      //   534	551	1009	java/lang/Error
      //   575	581	1009	java/lang/Error
      //   1074	1079	1093	java/io/IOException
      //   1083	1087	1093	java/io/IOException
      //   1087	1092	1093	java/io/IOException
      //   232	281	1111	finally
      //   305	349	1111	finally
      //   373	436	1111	finally
      //   464	476	1111	finally
      //   476	499	1111	finally
      //   507	513	1111	finally
      //   513	529	1111	finally
      //   534	551	1111	finally
      //   575	581	1111	finally
      //   1123	1128	1144	java/io/IOException
      //   1132	1136	1144	java/io/IOException
      //   1136	1141	1144	java/io/IOException
      //   581	592	1164	finally
      //   598	605	1172	finally
      //   611	618	1172	finally
      //   629	638	1172	finally
      //   724	740	1172	finally
      //   746	753	1172	finally
      //   759	770	1172	finally
      //   820	837	1172	finally
      //   843	850	1172	finally
      //   856	866	1172	finally
      //   921	938	1172	finally
      //   944	951	1172	finally
      //   957	967	1172	finally
      //   1022	1040	1172	finally
      //   1046	1053	1172	finally
      //   1059	1069	1172	finally
      //   645	678	1179	finally
      //   581	592	1187	java/lang/Error
      //   598	605	1195	java/lang/Error
      //   611	618	1195	java/lang/Error
      //   629	638	1195	java/lang/Error
      //   724	740	1195	java/lang/Error
      //   746	753	1195	java/lang/Error
      //   759	770	1195	java/lang/Error
      //   581	592	1200	java/lang/Exception
      //   598	605	1208	java/lang/Exception
      //   611	618	1208	java/lang/Exception
      //   629	638	1208	java/lang/Exception
      //   724	740	1208	java/lang/Exception
      //   746	753	1208	java/lang/Exception
      //   759	770	1208	java/lang/Exception
      //   581	592	1213	java/io/IOException
      //   598	605	1221	java/io/IOException
      //   611	618	1221	java/io/IOException
      //   629	638	1221	java/io/IOException
      //   724	740	1221	java/io/IOException
      //   746	753	1221	java/io/IOException
      //   759	770	1221	java/io/IOException
      //   232	281	1226	java/net/SocketTimeoutException
      //   305	349	1226	java/net/SocketTimeoutException
      //   373	436	1226	java/net/SocketTimeoutException
      //   464	476	1226	java/net/SocketTimeoutException
      //   476	499	1226	java/net/SocketTimeoutException
      //   507	513	1226	java/net/SocketTimeoutException
      //   513	529	1226	java/net/SocketTimeoutException
      //   534	551	1226	java/net/SocketTimeoutException
      //   575	581	1226	java/net/SocketTimeoutException
      //   581	592	1232	java/net/SocketTimeoutException
    }
  }
  
  protected static abstract interface b
  {
    public abstract void a(File paramFile);
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */