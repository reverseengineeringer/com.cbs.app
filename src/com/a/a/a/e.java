package com.a.a.a;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;

public abstract class e
  extends d
{
  static boolean d = false;
  private static Method e;
  private static Method f;
  private static Method g;
  private static Method h;
  private static Method i;
  private static Method j;
  private static Method k;
  private static Method l;
  private static Method m;
  private static String n;
  private static String o;
  private static String p;
  private static long q = 0L;
  private static k r;
  
  protected e(Context paramContext, i parami, j paramj)
  {
    super(paramContext, parami, paramj);
  }
  
  private static String a(Context paramContext, i parami)
  {
    if (o != null) {
      return o;
    }
    if (h == null) {
      throw new a();
    }
    try
    {
      paramContext = (ByteBuffer)h.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new a(paramContext);
      paramContext = parami.a(paramContext.array());
      o = paramContext;
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new a(paramContext);
    }
  }
  
  private static String a(byte[] paramArrayOfByte, String paramString)
  {
    try
    {
      paramArrayOfByte = new String(r.a(paramArrayOfByte, paramString), "UTF-8");
      return paramArrayOfByte;
    }
    catch (k.a paramArrayOfByte)
    {
      throw new a(paramArrayOfByte);
    }
    catch (UnsupportedEncodingException paramArrayOfByte)
    {
      throw new a(paramArrayOfByte);
    }
  }
  
  private static ArrayList<Long> a(MotionEvent paramMotionEvent, DisplayMetrics paramDisplayMetrics)
  {
    if ((i == null) || (paramMotionEvent == null)) {
      throw new a();
    }
    try
    {
      paramMotionEvent = (ArrayList)i.invoke(null, new Object[] { paramMotionEvent, paramDisplayMetrics });
      return paramMotionEvent;
    }
    catch (IllegalAccessException paramMotionEvent)
    {
      throw new a(paramMotionEvent);
    }
    catch (InvocationTargetException paramMotionEvent)
    {
      throw new a(paramMotionEvent);
    }
  }
  
  /* Error */
  protected static void a(String paramString, Context paramContext, i parami)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 33	com/a/a/a/e:d	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +84 -> 92
    //   11: new 82	com/a/a/a/k
    //   14: dup
    //   15: aload_2
    //   16: invokespecial 113	com/a/a/a/k:<init>	(Lcom/a/a/a/i;)V
    //   19: putstatic 80	com/a/a/a/e:r	Lcom/a/a/a/k;
    //   22: aload_0
    //   23: putstatic 115	com/a/a/a/e:n	Ljava/lang/String;
    //   26: getstatic 80	com/a/a/a/e:r	Lcom/a/a/a/k;
    //   29: ldc 117
    //   31: invokevirtual 120	com/a/a/a/k:a	(Ljava/lang/String;)[B
    //   34: astore 4
    //   36: getstatic 80	com/a/a/a/e:r	Lcom/a/a/a/k;
    //   39: aload 4
    //   41: ldc 122
    //   43: invokevirtual 85	com/a/a/a/k:a	([BLjava/lang/String;)[B
    //   46: astore 5
    //   48: aload_1
    //   49: invokevirtual 128	android/content/Context:getCacheDir	()Ljava/io/File;
    //   52: astore_2
    //   53: aload_2
    //   54: astore_0
    //   55: aload_2
    //   56: ifnonnull +40 -> 96
    //   59: aload_1
    //   60: ldc -126
    //   62: iconst_0
    //   63: invokevirtual 134	android/content/Context:getDir	(Ljava/lang/String;I)Ljava/io/File;
    //   66: astore_2
    //   67: aload_2
    //   68: astore_0
    //   69: aload_2
    //   70: ifnonnull +26 -> 96
    //   73: new 6	com/a/a/a/e$a
    //   76: dup
    //   77: invokespecial 49	com/a/a/a/e$a:<init>	()V
    //   80: athrow
    //   81: astore_0
    //   82: new 6	com/a/a/a/e$a
    //   85: dup
    //   86: aload_0
    //   87: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   90: athrow
    //   91: astore_0
    //   92: ldc 2
    //   94: monitorexit
    //   95: return
    //   96: ldc -120
    //   98: ldc -118
    //   100: aload_0
    //   101: invokestatic 144	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    //   104: astore_2
    //   105: new 146	java/io/FileOutputStream
    //   108: dup
    //   109: aload_2
    //   110: invokespecial 149	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   113: astore 6
    //   115: aload 6
    //   117: aload 5
    //   119: iconst_0
    //   120: aload 5
    //   122: arraylength
    //   123: invokevirtual 153	java/io/FileOutputStream:write	([BII)V
    //   126: aload 6
    //   128: invokevirtual 156	java/io/FileOutputStream:close	()V
    //   131: new 158	dalvik/system/DexClassLoader
    //   134: dup
    //   135: aload_2
    //   136: invokevirtual 162	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   139: aload_0
    //   140: invokevirtual 162	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   143: aconst_null
    //   144: aload_1
    //   145: invokevirtual 166	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   148: invokespecial 169	dalvik/system/DexClassLoader:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    //   151: astore 12
    //   153: aload 12
    //   155: aload 4
    //   157: ldc -85
    //   159: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   162: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   165: astore_1
    //   166: aload 12
    //   168: aload 4
    //   170: ldc -77
    //   172: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   175: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   178: astore 5
    //   180: aload 12
    //   182: aload 4
    //   184: ldc -75
    //   186: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   189: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   192: astore 6
    //   194: aload 12
    //   196: aload 4
    //   198: ldc -73
    //   200: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   203: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   206: astore 7
    //   208: aload 12
    //   210: aload 4
    //   212: ldc -71
    //   214: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   217: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   220: astore 8
    //   222: aload 12
    //   224: aload 4
    //   226: ldc -69
    //   228: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   231: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   234: astore 9
    //   236: aload 12
    //   238: aload 4
    //   240: ldc -67
    //   242: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   245: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   248: astore 10
    //   250: aload 12
    //   252: aload 4
    //   254: ldc -65
    //   256: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   259: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   262: astore 11
    //   264: aload 12
    //   266: aload 4
    //   268: ldc -63
    //   270: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   273: invokevirtual 177	dalvik/system/DexClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   276: astore 12
    //   278: aload_1
    //   279: aload 4
    //   281: ldc -61
    //   283: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   286: iconst_0
    //   287: anewarray 197	java/lang/Class
    //   290: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   293: putstatic 203	com/a/a/a/e:e	Ljava/lang/reflect/Method;
    //   296: aload 5
    //   298: aload 4
    //   300: ldc -51
    //   302: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   305: iconst_0
    //   306: anewarray 197	java/lang/Class
    //   309: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   312: putstatic 207	com/a/a/a/e:f	Ljava/lang/reflect/Method;
    //   315: aload 6
    //   317: aload 4
    //   319: ldc -47
    //   321: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   324: iconst_0
    //   325: anewarray 197	java/lang/Class
    //   328: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   331: putstatic 211	com/a/a/a/e:g	Ljava/lang/reflect/Method;
    //   334: aload 7
    //   336: aload 4
    //   338: ldc -43
    //   340: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   343: iconst_1
    //   344: anewarray 197	java/lang/Class
    //   347: dup
    //   348: iconst_0
    //   349: ldc 124
    //   351: aastore
    //   352: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   355: putstatic 47	com/a/a/a/e:h	Ljava/lang/reflect/Method;
    //   358: aload 8
    //   360: aload 4
    //   362: ldc -41
    //   364: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   367: iconst_2
    //   368: anewarray 197	java/lang/Class
    //   371: dup
    //   372: iconst_0
    //   373: ldc -39
    //   375: aastore
    //   376: dup
    //   377: iconst_1
    //   378: ldc -37
    //   380: aastore
    //   381: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   384: putstatic 93	com/a/a/a/e:i	Ljava/lang/reflect/Method;
    //   387: aload 9
    //   389: aload 4
    //   391: ldc -35
    //   393: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   396: iconst_1
    //   397: anewarray 197	java/lang/Class
    //   400: dup
    //   401: iconst_0
    //   402: ldc 124
    //   404: aastore
    //   405: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   408: putstatic 223	com/a/a/a/e:j	Ljava/lang/reflect/Method;
    //   411: aload 10
    //   413: aload 4
    //   415: ldc -31
    //   417: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   420: iconst_1
    //   421: anewarray 197	java/lang/Class
    //   424: dup
    //   425: iconst_0
    //   426: ldc 124
    //   428: aastore
    //   429: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   432: putstatic 227	com/a/a/a/e:k	Ljava/lang/reflect/Method;
    //   435: aload 11
    //   437: aload 4
    //   439: ldc -27
    //   441: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   444: iconst_1
    //   445: anewarray 197	java/lang/Class
    //   448: dup
    //   449: iconst_0
    //   450: ldc 124
    //   452: aastore
    //   453: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   456: putstatic 231	com/a/a/a/e:l	Ljava/lang/reflect/Method;
    //   459: aload 12
    //   461: aload 4
    //   463: ldc -23
    //   465: invokestatic 173	com/a/a/a/e:a	([BLjava/lang/String;)Ljava/lang/String;
    //   468: iconst_1
    //   469: anewarray 197	java/lang/Class
    //   472: dup
    //   473: iconst_0
    //   474: ldc 124
    //   476: aastore
    //   477: invokevirtual 201	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   480: putstatic 235	com/a/a/a/e:m	Ljava/lang/reflect/Method;
    //   483: aload_2
    //   484: invokevirtual 238	java/io/File:getName	()Ljava/lang/String;
    //   487: astore_1
    //   488: aload_2
    //   489: invokevirtual 242	java/io/File:delete	()Z
    //   492: pop
    //   493: new 140	java/io/File
    //   496: dup
    //   497: aload_0
    //   498: aload_1
    //   499: ldc -118
    //   501: ldc -12
    //   503: invokevirtual 248	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   506: invokespecial 251	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   509: invokevirtual 242	java/io/File:delete	()Z
    //   512: pop
    //   513: invokestatic 255	com/a/a/a/e:c	()Ljava/lang/Long;
    //   516: invokevirtual 261	java/lang/Long:longValue	()J
    //   519: putstatic 31	com/a/a/a/e:q	J
    //   522: iconst_1
    //   523: putstatic 33	com/a/a/a/e:d	Z
    //   526: goto -434 -> 92
    //   529: astore_0
    //   530: goto -438 -> 92
    //   533: astore_1
    //   534: aload_2
    //   535: invokevirtual 238	java/io/File:getName	()Ljava/lang/String;
    //   538: astore 4
    //   540: aload_2
    //   541: invokevirtual 242	java/io/File:delete	()Z
    //   544: pop
    //   545: new 140	java/io/File
    //   548: dup
    //   549: aload_0
    //   550: aload 4
    //   552: ldc -118
    //   554: ldc -12
    //   556: invokevirtual 248	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   559: invokespecial 251	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   562: invokevirtual 242	java/io/File:delete	()Z
    //   565: pop
    //   566: aload_1
    //   567: athrow
    //   568: astore_0
    //   569: new 6	com/a/a/a/e$a
    //   572: dup
    //   573: aload_0
    //   574: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   577: athrow
    //   578: astore_0
    //   579: ldc 2
    //   581: monitorexit
    //   582: aload_0
    //   583: athrow
    //   584: astore_0
    //   585: new 6	com/a/a/a/e$a
    //   588: dup
    //   589: aload_0
    //   590: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   593: athrow
    //   594: astore_0
    //   595: new 6	com/a/a/a/e$a
    //   598: dup
    //   599: aload_0
    //   600: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   603: athrow
    //   604: astore_0
    //   605: new 6	com/a/a/a/e$a
    //   608: dup
    //   609: aload_0
    //   610: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   613: athrow
    //   614: astore_0
    //   615: new 6	com/a/a/a/e$a
    //   618: dup
    //   619: aload_0
    //   620: invokespecial 62	com/a/a/a/e$a:<init>	(Ljava/lang/Throwable;)V
    //   623: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	624	0	paramString	String
    //   0	624	1	paramContext	Context
    //   0	624	2	parami	i
    //   6	2	3	bool	boolean
    //   34	517	4	localObject1	Object
    //   46	251	5	localObject2	Object
    //   113	203	6	localObject3	Object
    //   206	129	7	localClass1	Class
    //   220	139	8	localClass2	Class
    //   234	154	9	localClass3	Class
    //   248	164	10	localClass4	Class
    //   262	174	11	localClass5	Class
    //   151	309	12	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   26	53	81	java/io/FileNotFoundException
    //   59	67	81	java/io/FileNotFoundException
    //   73	81	81	java/io/FileNotFoundException
    //   96	131	81	java/io/FileNotFoundException
    //   483	513	81	java/io/FileNotFoundException
    //   534	568	81	java/io/FileNotFoundException
    //   11	26	91	com/a/a/a/e$a
    //   26	53	91	com/a/a/a/e$a
    //   59	67	91	com/a/a/a/e$a
    //   73	81	91	com/a/a/a/e$a
    //   82	91	91	com/a/a/a/e$a
    //   96	131	91	com/a/a/a/e$a
    //   483	513	91	com/a/a/a/e$a
    //   513	526	91	com/a/a/a/e$a
    //   534	568	91	com/a/a/a/e$a
    //   569	578	91	com/a/a/a/e$a
    //   585	594	91	com/a/a/a/e$a
    //   595	604	91	com/a/a/a/e$a
    //   605	614	91	com/a/a/a/e$a
    //   615	624	91	com/a/a/a/e$a
    //   11	26	529	java/lang/UnsupportedOperationException
    //   26	53	529	java/lang/UnsupportedOperationException
    //   59	67	529	java/lang/UnsupportedOperationException
    //   73	81	529	java/lang/UnsupportedOperationException
    //   82	91	529	java/lang/UnsupportedOperationException
    //   96	131	529	java/lang/UnsupportedOperationException
    //   483	513	529	java/lang/UnsupportedOperationException
    //   513	526	529	java/lang/UnsupportedOperationException
    //   534	568	529	java/lang/UnsupportedOperationException
    //   569	578	529	java/lang/UnsupportedOperationException
    //   585	594	529	java/lang/UnsupportedOperationException
    //   595	604	529	java/lang/UnsupportedOperationException
    //   605	614	529	java/lang/UnsupportedOperationException
    //   615	624	529	java/lang/UnsupportedOperationException
    //   131	483	533	finally
    //   26	53	568	java/io/IOException
    //   59	67	568	java/io/IOException
    //   73	81	568	java/io/IOException
    //   96	131	568	java/io/IOException
    //   483	513	568	java/io/IOException
    //   534	568	568	java/io/IOException
    //   3	7	578	finally
    //   11	26	578	finally
    //   26	53	578	finally
    //   59	67	578	finally
    //   73	81	578	finally
    //   82	91	578	finally
    //   96	131	578	finally
    //   483	513	578	finally
    //   513	526	578	finally
    //   534	568	578	finally
    //   569	578	578	finally
    //   585	594	578	finally
    //   595	604	578	finally
    //   605	614	578	finally
    //   615	624	578	finally
    //   26	53	584	java/lang/ClassNotFoundException
    //   59	67	584	java/lang/ClassNotFoundException
    //   73	81	584	java/lang/ClassNotFoundException
    //   96	131	584	java/lang/ClassNotFoundException
    //   483	513	584	java/lang/ClassNotFoundException
    //   534	568	584	java/lang/ClassNotFoundException
    //   26	53	594	com/a/a/a/k$a
    //   59	67	594	com/a/a/a/k$a
    //   73	81	594	com/a/a/a/k$a
    //   96	131	594	com/a/a/a/k$a
    //   483	513	594	com/a/a/a/k$a
    //   534	568	594	com/a/a/a/k$a
    //   26	53	604	java/lang/NoSuchMethodException
    //   59	67	604	java/lang/NoSuchMethodException
    //   73	81	604	java/lang/NoSuchMethodException
    //   96	131	604	java/lang/NoSuchMethodException
    //   483	513	604	java/lang/NoSuchMethodException
    //   534	568	604	java/lang/NoSuchMethodException
    //   26	53	614	java/lang/NullPointerException
    //   59	67	614	java/lang/NullPointerException
    //   73	81	614	java/lang/NullPointerException
    //   96	131	614	java/lang/NullPointerException
    //   483	513	614	java/lang/NullPointerException
    //   534	568	614	java/lang/NullPointerException
  }
  
  private static String b()
  {
    if (n == null) {
      throw new a();
    }
    return n;
  }
  
  private static String b(Context paramContext, i parami)
  {
    if (p != null) {
      return p;
    }
    if (k == null) {
      throw new a();
    }
    try
    {
      paramContext = (ByteBuffer)k.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new a(paramContext);
      paramContext = parami.a(paramContext.array());
      p = paramContext;
      return paramContext;
    }
    catch (InvocationTargetException paramContext)
    {
      throw new a(paramContext);
    }
  }
  
  private static Long c()
  {
    if (e == null) {
      throw new a();
    }
    try
    {
      Long localLong = (Long)e.invoke(null, new Object[0]);
      return localLong;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new a(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new a(localInvocationTargetException);
    }
  }
  
  static String c(Context paramContext)
  {
    if (j == null) {
      throw new a();
    }
    try
    {
      paramContext = (String)j.invoke(null, new Object[] { paramContext });
      if (paramContext == null) {
        throw new a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new a(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new a(paramContext);
    }
    return paramContext;
  }
  
  private static String d()
  {
    if (g == null) {
      throw new a();
    }
    try
    {
      String str = (String)g.invoke(null, new Object[0]);
      return str;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new a(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new a(localInvocationTargetException);
    }
  }
  
  private static ArrayList<Long> d(Context paramContext)
  {
    if (l == null) {
      throw new a();
    }
    try
    {
      paramContext = (ArrayList)l.invoke(null, new Object[] { paramContext });
      if ((paramContext == null) || (paramContext.size() != 2)) {
        throw new a();
      }
    }
    catch (IllegalAccessException paramContext)
    {
      throw new a(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new a(paramContext);
    }
    return paramContext;
  }
  
  private static Long e()
  {
    if (f == null) {
      throw new a();
    }
    try
    {
      Long localLong = (Long)f.invoke(null, new Object[0]);
      return localLong;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new a(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new a(localInvocationTargetException);
    }
  }
  
  private static int[] e(Context paramContext)
  {
    if (m == null) {
      throw new a();
    }
    try
    {
      paramContext = (int[])m.invoke(null, new Object[] { paramContext });
      return paramContext;
    }
    catch (IllegalAccessException paramContext)
    {
      throw new a(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new a(paramContext);
    }
  }
  
  /* Error */
  protected final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_2
    //   2: invokestatic 276	com/a/a/a/e:b	()Ljava/lang/String;
    //   5: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_1
    //   10: invokestatic 281	com/a/a/a/e:d	()Ljava/lang/String;
    //   13: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   16: aload_0
    //   17: bipush 25
    //   19: invokestatic 255	com/a/a/a/e:c	()Ljava/lang/Long;
    //   22: invokevirtual 261	java/lang/Long:longValue	()J
    //   25: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   28: aload_0
    //   29: getfield 287	com/a/a/a/e:a	Landroid/view/MotionEvent;
    //   32: aload_0
    //   33: getfield 290	com/a/a/a/e:b	Landroid/util/DisplayMetrics;
    //   36: invokestatic 292	com/a/a/a/e:a	(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    //   39: astore_1
    //   40: aload_0
    //   41: bipush 14
    //   43: aload_1
    //   44: iconst_0
    //   45: invokevirtual 296	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   48: checkcast 257	java/lang/Long
    //   51: invokevirtual 261	java/lang/Long:longValue	()J
    //   54: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   57: aload_0
    //   58: bipush 15
    //   60: aload_1
    //   61: iconst_1
    //   62: invokevirtual 296	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   65: checkcast 257	java/lang/Long
    //   68: invokevirtual 261	java/lang/Long:longValue	()J
    //   71: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   74: aload_1
    //   75: invokevirtual 270	java/util/ArrayList:size	()I
    //   78: iconst_3
    //   79: if_icmplt +20 -> 99
    //   82: aload_0
    //   83: bipush 16
    //   85: aload_1
    //   86: iconst_2
    //   87: invokevirtual 296	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   90: checkcast 257	java/lang/Long
    //   93: invokevirtual 261	java/lang/Long:longValue	()J
    //   96: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   99: return
    //   100: astore_1
    //   101: return
    //   102: astore_1
    //   103: return
    //   104: astore_1
    //   105: goto -77 -> 28
    //   108: astore_1
    //   109: goto -93 -> 16
    //   112: astore_1
    //   113: goto -105 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	e
    //   39	47	1	localArrayList	ArrayList
    //   100	1	1	localIOException	java.io.IOException
    //   102	1	1	locala1	a
    //   104	1	1	locala2	a
    //   108	1	1	locala3	a
    //   112	1	1	locala4	a
    // Exception table:
    //   from	to	target	type
    //   0	8	100	java/io/IOException
    //   8	16	100	java/io/IOException
    //   16	28	100	java/io/IOException
    //   28	99	100	java/io/IOException
    //   28	99	102	com/a/a/a/e$a
    //   16	28	104	com/a/a/a/e$a
    //   8	16	108	com/a/a/a/e$a
    //   0	8	112	com/a/a/a/e$a
  }
  
  /* Error */
  protected void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_1
    //   2: invokestatic 281	com/a/a/a/e:d	()Ljava/lang/String;
    //   5: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   8: aload_0
    //   9: iconst_2
    //   10: invokestatic 276	com/a/a/a/e:b	()Ljava/lang/String;
    //   13: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   16: invokestatic 255	com/a/a/a/e:c	()Ljava/lang/Long;
    //   19: invokevirtual 261	java/lang/Long:longValue	()J
    //   22: lstore_2
    //   23: aload_0
    //   24: bipush 25
    //   26: lload_2
    //   27: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   30: getstatic 31	com/a/a/a/e:q	J
    //   33: lconst_0
    //   34: lcmp
    //   35: ifeq +23 -> 58
    //   38: aload_0
    //   39: bipush 17
    //   41: lload_2
    //   42: getstatic 31	com/a/a/a/e:q	J
    //   45: lsub
    //   46: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   49: aload_0
    //   50: bipush 23
    //   52: getstatic 31	com/a/a/a/e:q	J
    //   55: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   58: aload_1
    //   59: invokestatic 299	com/a/a/a/e:d	(Landroid/content/Context;)Ljava/util/ArrayList;
    //   62: astore 4
    //   64: aload_0
    //   65: bipush 31
    //   67: aload 4
    //   69: iconst_0
    //   70: invokevirtual 296	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   73: checkcast 257	java/lang/Long
    //   76: invokevirtual 261	java/lang/Long:longValue	()J
    //   79: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   82: aload_0
    //   83: bipush 32
    //   85: aload 4
    //   87: iconst_1
    //   88: invokevirtual 296	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   91: checkcast 257	java/lang/Long
    //   94: invokevirtual 261	java/lang/Long:longValue	()J
    //   97: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   100: aload_0
    //   101: bipush 33
    //   103: invokestatic 301	com/a/a/a/e:e	()Ljava/lang/Long;
    //   106: invokevirtual 261	java/lang/Long:longValue	()J
    //   109: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   112: aload_0
    //   113: bipush 27
    //   115: aload_1
    //   116: aload_0
    //   117: getfield 304	com/a/a/a/e:c	Lcom/a/a/a/i;
    //   120: invokestatic 306	com/a/a/a/e:a	(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;
    //   123: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   126: aload_0
    //   127: bipush 29
    //   129: aload_1
    //   130: aload_0
    //   131: getfield 304	com/a/a/a/e:c	Lcom/a/a/a/i;
    //   134: invokestatic 308	com/a/a/a/e:b	(Landroid/content/Context;Lcom/a/a/a/i;)Ljava/lang/String;
    //   137: invokevirtual 279	com/a/a/a/e:a	(ILjava/lang/String;)V
    //   140: aload_1
    //   141: invokestatic 310	com/a/a/a/e:e	(Landroid/content/Context;)[I
    //   144: astore_1
    //   145: aload_0
    //   146: iconst_5
    //   147: aload_1
    //   148: iconst_0
    //   149: iaload
    //   150: i2l
    //   151: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   154: aload_0
    //   155: bipush 6
    //   157: aload_1
    //   158: iconst_1
    //   159: iaload
    //   160: i2l
    //   161: invokevirtual 284	com/a/a/a/e:a	(IJ)V
    //   164: return
    //   165: astore_1
    //   166: return
    //   167: astore_1
    //   168: return
    //   169: astore 4
    //   171: goto -31 -> 140
    //   174: astore 4
    //   176: goto -50 -> 126
    //   179: astore 4
    //   181: goto -69 -> 112
    //   184: astore 4
    //   186: goto -86 -> 100
    //   189: astore 4
    //   191: goto -133 -> 58
    //   194: astore 4
    //   196: goto -180 -> 16
    //   199: astore 4
    //   201: goto -193 -> 8
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	e
    //   0	204	1	paramContext	Context
    //   22	20	2	l1	long
    //   62	24	4	localArrayList	ArrayList
    //   169	1	4	locala1	a
    //   174	1	4	locala2	a
    //   179	1	4	locala3	a
    //   184	1	4	locala4	a
    //   189	1	4	locala5	a
    //   194	1	4	locala6	a
    //   199	1	4	locala7	a
    // Exception table:
    //   from	to	target	type
    //   0	8	165	java/io/IOException
    //   8	16	165	java/io/IOException
    //   16	58	165	java/io/IOException
    //   58	100	165	java/io/IOException
    //   100	112	165	java/io/IOException
    //   112	126	165	java/io/IOException
    //   126	140	165	java/io/IOException
    //   140	164	165	java/io/IOException
    //   140	164	167	com/a/a/a/e$a
    //   126	140	169	com/a/a/a/e$a
    //   112	126	174	com/a/a/a/e$a
    //   100	112	179	com/a/a/a/e$a
    //   58	100	184	com/a/a/a/e$a
    //   16	58	189	com/a/a/a/e$a
    //   8	16	194	com/a/a/a/e$a
    //   0	8	199	com/a/a/a/e$a
  }
  
  static final class a
    extends Exception
  {
    public a() {}
    
    public a(Throwable paramThrowable)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */