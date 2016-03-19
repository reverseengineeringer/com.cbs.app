package com.urbanairship;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

public class a
{
  @n(a="productionAppKey")
  public String a;
  @n(a="productionAppSecret")
  public String b;
  @n(a="developmentAppKey")
  public String c;
  @n(a="developmentAppSecret")
  public String d;
  @n(a="hostURL")
  public String e = "https://device-api.urbanairship.com/";
  @n(a="analyticsServer")
  public String f = "https://combine.urbanairship.com/";
  @n(a="landingPageContentURL")
  public String g = "https://dl.urbanairship.com/aaa/";
  @n(a="gcmSender")
  public String h;
  @n(a="additionalGCMSenderIds")
  @Deprecated
  public String[] i;
  @n(a="allowedTransports")
  public String[] j = { "ADM", "GCM" };
  @n(a="whitelist")
  public String[] k = null;
  @n(a="inProduction")
  public boolean l = false;
  @n(a="analyticsEnabled")
  public boolean m = true;
  @n(a="backgroundReportingIntervalMS")
  public long n = 900000L;
  @n(a="clearNamedUser")
  public boolean o = false;
  @h(a="android.util.Log")
  @n(a="developmentLogLevel")
  public int p = 3;
  @h(a="android.util.Log")
  @n(a="productionLogLevel")
  public int q = 6;
  @h(a="android.os.Build.VERSION_CODES")
  @n(a="minSdkVersion")
  public int r = 4;
  @n(a="autoLaunchApplication")
  public boolean s = true;
  @n(a="channelCreationDelayEnabled")
  public boolean t = false;
  @n(a="channelCaptureEnabled")
  public boolean u = true;
  
  private int a(Field paramField, String paramString)
  {
    try
    {
      i1 = Integer.valueOf(paramString).intValue();
      return i1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Object localObject1 = (h)paramField.getAnnotation(h.class);
      if (localObject1 == null) {
        throw new IllegalArgumentException("The field '" + paramField.getName() + "' has a type mismatch or missing annotation.");
      }
      localObject1 = Class.forName(((h)localObject1).a()).getDeclaredFields();
      int i2 = localObject1.length;
      int i1 = 0;
      while (i1 < i2)
      {
        Object localObject2 = localObject1[i1];
        if (((Field)localObject2).getName().equalsIgnoreCase(paramString)) {
          try
          {
            i1 = ((Field)localObject2).getInt(this);
            return i1;
          }
          catch (IllegalArgumentException paramString)
          {
            throw new IllegalArgumentException("The field '" + paramField.getName() + "' is incompatible with specified class", paramString);
          }
        }
        i1 += 1;
      }
      throw new IllegalArgumentException("Unable to match class for field '" + paramField.getName() + "'");
    }
  }
  
  /* Error */
  public static a a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: new 2	com/urbanairship/a
    //   3: dup
    //   4: invokespecial 186	com/urbanairship/a:<init>	()V
    //   7: astore 6
    //   9: aload_0
    //   10: invokevirtual 192	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   13: invokevirtual 198	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   16: astore_0
    //   17: aload_0
    //   18: ldc -56
    //   20: invokevirtual 206	android/content/res/AssetManager:list	(Ljava/lang/String;)[Ljava/lang/String;
    //   23: invokestatic 212	java/util/Arrays:asList	([Ljava/lang/Object;)Ljava/util/List;
    //   26: ldc -42
    //   28: invokeinterface 220 2 0
    //   33: istore_3
    //   34: iload_3
    //   35: ifne +14 -> 49
    //   38: aload 6
    //   40: areturn
    //   41: astore_0
    //   42: aload_0
    //   43: invokestatic 225	com/urbanairship/j:a	(Ljava/lang/Throwable;)V
    //   46: aload 6
    //   48: areturn
    //   49: new 227	java/util/Properties
    //   52: dup
    //   53: invokespecial 228	java/util/Properties:<init>	()V
    //   56: astore 7
    //   58: aload_0
    //   59: ldc -42
    //   61: invokevirtual 232	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   64: astore_0
    //   65: aload_0
    //   66: astore 4
    //   68: aload 7
    //   70: aload_0
    //   71: invokevirtual 236	java/util/Properties:load	(Ljava/io/InputStream;)V
    //   74: aload_0
    //   75: astore 4
    //   77: aload 6
    //   79: invokevirtual 240	java/lang/Object:getClass	()Ljava/lang/Class;
    //   82: invokevirtual 161	java/lang/Class:getDeclaredFields	()[Ljava/lang/reflect/Field;
    //   85: astore 8
    //   87: aload_0
    //   88: astore 4
    //   90: aload 8
    //   92: arraylength
    //   93: istore_2
    //   94: iconst_0
    //   95: istore_1
    //   96: iload_1
    //   97: iload_2
    //   98: if_icmpge +445 -> 543
    //   101: aload 8
    //   103: iload_1
    //   104: aaload
    //   105: astore 9
    //   107: aload_0
    //   108: astore 4
    //   110: ldc 2
    //   112: aload 9
    //   114: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   117: invokevirtual 247	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   120: ifne +478 -> 598
    //   123: aload_0
    //   124: astore 4
    //   126: aload 9
    //   128: ldc -7
    //   130: invokevirtual 128	java/lang/reflect/Field:getAnnotation	(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    //   133: checkcast 249	com/urbanairship/n
    //   136: astore 10
    //   138: aload 10
    //   140: ifnull +452 -> 592
    //   143: aload_0
    //   144: astore 4
    //   146: aload 7
    //   148: aload 10
    //   150: invokeinterface 250 1 0
    //   155: invokevirtual 254	java/util/Properties:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   158: astore 5
    //   160: aload_0
    //   161: astore 4
    //   163: new 130	java/lang/StringBuilder
    //   166: dup
    //   167: ldc_w 256
    //   170: invokespecial 135	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   173: aload 10
    //   175: invokeinterface 250 1 0
    //   180: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: ldc_w 258
    //   186: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload 9
    //   191: invokevirtual 139	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   194: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: pop
    //   198: aload 5
    //   200: ifnull +398 -> 598
    //   203: aload_0
    //   204: astore 4
    //   206: aload 9
    //   208: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   211: getstatic 264	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   214: if_acmpeq +17 -> 231
    //   217: aload_0
    //   218: astore 4
    //   220: aload 9
    //   222: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   225: ldc_w 260
    //   228: if_acmpne +21 -> 249
    //   231: aload_0
    //   232: astore 4
    //   234: aload 9
    //   236: aload 6
    //   238: aload 5
    //   240: invokestatic 267	java/lang/Boolean:valueOf	(Ljava/lang/String;)Ljava/lang/Boolean;
    //   243: invokevirtual 271	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   246: goto +352 -> 598
    //   249: aload_0
    //   250: astore 4
    //   252: aload 9
    //   254: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   257: getstatic 272	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   260: if_acmpeq +16 -> 276
    //   263: aload_0
    //   264: astore 4
    //   266: aload 9
    //   268: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   271: ldc 112
    //   273: if_acmpne +118 -> 391
    //   276: aload_0
    //   277: astore 4
    //   279: aload 9
    //   281: aload 6
    //   283: aload 6
    //   285: aload 9
    //   287: aload 5
    //   289: invokespecial 274	com/urbanairship/a:a	(Ljava/lang/reflect/Field;Ljava/lang/String;)I
    //   292: invokestatic 277	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   295: invokevirtual 271	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   298: goto +300 -> 598
    //   301: astore 5
    //   303: aload_0
    //   304: astore 4
    //   306: new 130	java/lang/StringBuilder
    //   309: dup
    //   310: ldc_w 279
    //   313: invokespecial 135	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   316: aload 9
    //   318: invokevirtual 139	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   321: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: ldc_w 281
    //   327: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: aload 5
    //   335: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   338: goto +260 -> 598
    //   341: astore 5
    //   343: aload_0
    //   344: astore 4
    //   346: new 130	java/lang/StringBuilder
    //   349: dup
    //   350: ldc_w 285
    //   353: invokespecial 135	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   356: ldc -42
    //   358: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   361: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   364: aload 5
    //   366: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   369: aload_0
    //   370: ifnull -332 -> 38
    //   373: aload_0
    //   374: invokevirtual 290	java/io/InputStream:close	()V
    //   377: aload 6
    //   379: areturn
    //   380: astore_0
    //   381: ldc_w 292
    //   384: aload_0
    //   385: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   388: aload 6
    //   390: areturn
    //   391: aload_0
    //   392: astore 4
    //   394: aload 9
    //   396: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   399: getstatic 295	java/lang/Long:TYPE	Ljava/lang/Class;
    //   402: if_acmpeq +17 -> 419
    //   405: aload_0
    //   406: astore 4
    //   408: aload 9
    //   410: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   413: ldc_w 294
    //   416: if_acmpne +74 -> 490
    //   419: aload_0
    //   420: astore 4
    //   422: aload 9
    //   424: aload 6
    //   426: aload 5
    //   428: invokestatic 298	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   431: invokevirtual 271	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   434: goto +164 -> 598
    //   437: astore 5
    //   439: aload_0
    //   440: astore 4
    //   442: new 130	java/lang/StringBuilder
    //   445: dup
    //   446: ldc_w 279
    //   449: invokespecial 135	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   452: aload 9
    //   454: invokevirtual 139	java/lang/reflect/Field:getName	()Ljava/lang/String;
    //   457: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   460: ldc_w 300
    //   463: invokevirtual 143	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   466: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   469: aload 5
    //   471: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   474: goto +124 -> 598
    //   477: astore_0
    //   478: aload 4
    //   480: ifnull +8 -> 488
    //   483: aload 4
    //   485: invokevirtual 290	java/io/InputStream:close	()V
    //   488: aload_0
    //   489: athrow
    //   490: aload_0
    //   491: astore 4
    //   493: aload 9
    //   495: invokevirtual 243	java/lang/reflect/Field:getType	()Ljava/lang/Class;
    //   498: invokevirtual 304	java/lang/Class:isArray	()Z
    //   501: ifeq +24 -> 525
    //   504: aload_0
    //   505: astore 4
    //   507: aload 9
    //   509: aload 6
    //   511: aload 5
    //   513: ldc_w 306
    //   516: invokevirtual 309	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   519: invokevirtual 271	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   522: goto +76 -> 598
    //   525: aload_0
    //   526: astore 4
    //   528: aload 9
    //   530: aload 6
    //   532: aload 5
    //   534: invokevirtual 312	java/lang/String:trim	()Ljava/lang/String;
    //   537: invokevirtual 271	java/lang/reflect/Field:set	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   540: goto +58 -> 598
    //   543: aload_0
    //   544: ifnull -506 -> 38
    //   547: aload_0
    //   548: invokevirtual 290	java/io/InputStream:close	()V
    //   551: aload 6
    //   553: areturn
    //   554: astore_0
    //   555: ldc_w 292
    //   558: aload_0
    //   559: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   562: aload 6
    //   564: areturn
    //   565: astore 4
    //   567: ldc_w 292
    //   570: aload 4
    //   572: invokestatic 283	com/urbanairship/j:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   575: goto -87 -> 488
    //   578: astore_0
    //   579: aconst_null
    //   580: astore 4
    //   582: goto -104 -> 478
    //   585: astore 5
    //   587: aconst_null
    //   588: astore_0
    //   589: goto -246 -> 343
    //   592: aconst_null
    //   593: astore 5
    //   595: goto -397 -> 198
    //   598: iload_1
    //   599: iconst_1
    //   600: iadd
    //   601: istore_1
    //   602: goto -506 -> 96
    //   605: astore 5
    //   607: goto -168 -> 439
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	610	0	paramContext	android.content.Context
    //   95	507	1	i1	int
    //   93	6	2	i2	int
    //   33	2	3	bool	boolean
    //   66	461	4	localContext	android.content.Context
    //   565	6	4	localIOException1	java.io.IOException
    //   580	1	4	localObject1	Object
    //   158	130	5	str	String
    //   301	33	5	localIllegalAccessException	IllegalAccessException
    //   341	86	5	localIOException2	java.io.IOException
    //   437	96	5	localIllegalArgumentException	IllegalArgumentException
    //   585	1	5	localIOException3	java.io.IOException
    //   593	1	5	localObject2	Object
    //   605	1	5	localClassNotFoundException	ClassNotFoundException
    //   7	556	6	locala	a
    //   56	91	7	localProperties	java.util.Properties
    //   85	17	8	arrayOfField	Field[]
    //   105	424	9	localField	Field
    //   136	38	10	localn	n
    // Exception table:
    //   from	to	target	type
    //   17	34	41	java/io/IOException
    //   206	217	301	java/lang/IllegalAccessException
    //   220	231	301	java/lang/IllegalAccessException
    //   234	246	301	java/lang/IllegalAccessException
    //   252	263	301	java/lang/IllegalAccessException
    //   266	276	301	java/lang/IllegalAccessException
    //   279	298	301	java/lang/IllegalAccessException
    //   394	405	301	java/lang/IllegalAccessException
    //   408	419	301	java/lang/IllegalAccessException
    //   422	434	301	java/lang/IllegalAccessException
    //   493	504	301	java/lang/IllegalAccessException
    //   507	522	301	java/lang/IllegalAccessException
    //   528	540	301	java/lang/IllegalAccessException
    //   68	74	341	java/io/IOException
    //   77	87	341	java/io/IOException
    //   90	94	341	java/io/IOException
    //   110	123	341	java/io/IOException
    //   126	138	341	java/io/IOException
    //   146	160	341	java/io/IOException
    //   163	198	341	java/io/IOException
    //   206	217	341	java/io/IOException
    //   220	231	341	java/io/IOException
    //   234	246	341	java/io/IOException
    //   252	263	341	java/io/IOException
    //   266	276	341	java/io/IOException
    //   279	298	341	java/io/IOException
    //   306	338	341	java/io/IOException
    //   394	405	341	java/io/IOException
    //   408	419	341	java/io/IOException
    //   422	434	341	java/io/IOException
    //   442	474	341	java/io/IOException
    //   493	504	341	java/io/IOException
    //   507	522	341	java/io/IOException
    //   528	540	341	java/io/IOException
    //   373	377	380	java/io/IOException
    //   206	217	437	java/lang/IllegalArgumentException
    //   220	231	437	java/lang/IllegalArgumentException
    //   234	246	437	java/lang/IllegalArgumentException
    //   252	263	437	java/lang/IllegalArgumentException
    //   266	276	437	java/lang/IllegalArgumentException
    //   279	298	437	java/lang/IllegalArgumentException
    //   394	405	437	java/lang/IllegalArgumentException
    //   408	419	437	java/lang/IllegalArgumentException
    //   422	434	437	java/lang/IllegalArgumentException
    //   493	504	437	java/lang/IllegalArgumentException
    //   507	522	437	java/lang/IllegalArgumentException
    //   528	540	437	java/lang/IllegalArgumentException
    //   68	74	477	finally
    //   77	87	477	finally
    //   90	94	477	finally
    //   110	123	477	finally
    //   126	138	477	finally
    //   146	160	477	finally
    //   163	198	477	finally
    //   206	217	477	finally
    //   220	231	477	finally
    //   234	246	477	finally
    //   252	263	477	finally
    //   266	276	477	finally
    //   279	298	477	finally
    //   306	338	477	finally
    //   346	369	477	finally
    //   394	405	477	finally
    //   408	419	477	finally
    //   422	434	477	finally
    //   442	474	477	finally
    //   493	504	477	finally
    //   507	522	477	finally
    //   528	540	477	finally
    //   547	551	554	java/io/IOException
    //   483	488	565	java/io/IOException
    //   58	65	578	finally
    //   58	65	585	java/io/IOException
    //   206	217	605	java/lang/ClassNotFoundException
    //   220	231	605	java/lang/ClassNotFoundException
    //   234	246	605	java/lang/ClassNotFoundException
    //   252	263	605	java/lang/ClassNotFoundException
    //   266	276	605	java/lang/ClassNotFoundException
    //   279	298	605	java/lang/ClassNotFoundException
    //   394	405	605	java/lang/ClassNotFoundException
    //   408	419	605	java/lang/ClassNotFoundException
    //   422	434	605	java/lang/ClassNotFoundException
    //   493	504	605	java/lang/ClassNotFoundException
    //   507	522	605	java/lang/ClassNotFoundException
    //   528	540	605	java/lang/ClassNotFoundException
  }
  
  private static boolean a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public final String a()
  {
    if (l) {
      return a;
    }
    return c;
  }
  
  public final boolean a(String paramString)
  {
    if (j == null) {}
    for (;;)
    {
      return false;
      String[] arrayOfString = j;
      int i2 = arrayOfString.length;
      int i1 = 0;
      while (i1 < i2)
      {
        if (paramString.equalsIgnoreCase(arrayOfString[i1])) {
          return true;
        }
        i1 += 1;
      }
    }
  }
  
  public final String b()
  {
    if (l) {
      return b;
    }
    return d;
  }
  
  public final boolean c()
  {
    int i1 = 0;
    boolean bool1 = true;
    String str;
    boolean bool2;
    if (l)
    {
      str = "production";
      if ((a() == null) || (a().length() == 0) || (a().indexOf(' ') > 0))
      {
        j.a("AirshipConfigOptions: " + a() + " is not a valid " + str + " app key");
        bool1 = false;
      }
      if ((b() == null) || (b().length() == 0) || (b().indexOf(' ') > 0))
      {
        j.a("AirshipConfigOptions: " + b() + " is not a valid " + str + " app secret");
        bool1 = false;
      }
      bool2 = bool1;
      if (m)
      {
        bool2 = bool1;
        if (com.urbanairship.d.h.a(f))
        {
          j.a("Invalid config - analyticsServer is empty or null.");
          bool2 = false;
        }
      }
      if (!com.urbanairship.d.h.a(e)) {
        break label491;
      }
      j.a("Invalid config - hostURL is empty or null.");
    }
    label225:
    label347:
    label392:
    label443:
    label491:
    for (bool1 = false;; bool1 = bool2)
    {
      if (!bool1) {}
      try
      {
        Field[] arrayOfField = getClass().getFields();
        int i2 = arrayOfField.length;
        if (i1 >= i2) {
          continue;
        }
        str = arrayOfField[i1];
        if ((str.getModifiers() & 0x10) != 0) {
          break label392;
        }
      }
      catch (SecurityException localSecurityException)
      {
        for (;;)
        {
          continue;
          Object localObject = null;
        }
      }
      if ((str != null) && (!str.isAnnotationPresent(n.class)))
      {
        j.a("AirshipConfigOptions - The public field '" + str.getName() + "' is missing an annotation");
        j.a("AirshipConfigOptions appears to be obfuscated. If using Proguard, add the following to your proguard.cfg: \n\t-keepattributes *Annotation*");
      }
      if (l)
      {
        if (!a(q))
        {
          j.a(q + " is not a valid log level. Falling back to 6 ERROR.");
          q = 6;
        }
        if (n >= 60000L) {
          break label443;
        }
        new StringBuilder("AirshipConfigOptions - The backgroundReportingIntervalMS ").append(n).append(" may decrease battery life.");
      }
      while (n <= 86400000L)
      {
        return bool1;
        str = "development";
        break;
        i1 += 1;
        break label225;
        if (a(p)) {
          break label347;
        }
        j.a(p + " is not a valid log level. Falling back to 3 DEBUG.");
        p = 3;
        break label347;
      }
      new StringBuilder("AirshipConfigOptions - The backgroundReportingIntervalMS ").append(n).append(" may provide less detailed analytic reports.");
      return bool1;
    }
  }
  
  @Deprecated
  public final Set<String> d()
  {
    HashSet localHashSet = new HashSet();
    if (!com.urbanairship.d.h.a(h)) {
      localHashSet.add(h);
    }
    if (i != null) {
      localHashSet.addAll(Arrays.asList(i));
    }
    return localHashSet;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */