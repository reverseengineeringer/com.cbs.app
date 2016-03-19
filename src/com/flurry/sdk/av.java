package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class av
{
  public static final Integer a = Integer.valueOf(50);
  private static final String d = av.class.getSimpleName();
  String b;
  LinkedHashMap<String, List<String>> c;
  
  public av(String paramString)
  {
    b = (paramString + "Main");
    b(b);
  }
  
  private void a()
  {
    try
    {
      LinkedList localLinkedList = new LinkedList(c.keySet());
      new af(y.a().b().getFileStreamPath(d(b)), ".YFlurrySenderIndex.info.", new bd()
      {
        public final bb<List<aw>> a()
        {
          return new ba(new aw.a());
        }
      }).b();
      if (!localLinkedList.isEmpty()) {
        a(b, localLinkedList, b);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void a(String paramString1, List<String> paramList, String paramString2)
  {
    try
    {
      bs.a();
      am.a(5, d, "Saving Index File for " + paramString1 + " file name:" + y.a().b().getFileStreamPath(d(paramString1)));
      paramString1 = new af(y.a().b().getFileStreamPath(d(paramString1)), paramString2, new bd()
      {
        public final bb<List<aw>> a()
        {
          return new ba(new aw.a());
        }
      });
      paramString2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramString2.add(new aw((String)paramList.next()));
      }
      paramString1.a(paramString2);
    }
    finally {}
  }
  
  private void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      bs.a();
      am.a(5, d, "Saving Block File for " + paramString + " file name:" + y.a().b().getFileStreamPath(au.a(paramString)));
      new af(y.a().b().getFileStreamPath(au.a(paramString)), ".yflurrydatasenderblock.", new bd()
      {
        public final bb<au> a()
        {
          return new au.a();
        }
      }).a(new au(paramArrayOfByte));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void b(String paramString)
  {
    c = new LinkedHashMap();
    Object localObject1 = new ArrayList();
    Object localObject2;
    if (i(paramString))
    {
      localObject2 = j(paramString);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        ((List)localObject1).addAll((Collection)localObject2);
        localObject2 = ((List)localObject1).iterator();
        while (((Iterator)localObject2).hasNext()) {
          c((String)((Iterator)localObject2).next());
        }
      }
      h(paramString);
    }
    for (;;)
    {
      paramString = ((List)localObject1).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (String)paramString.next();
        localObject2 = g((String)localObject1);
        c.put(localObject1, localObject2);
        continue;
        paramString = (List)new af(y.a().b().getFileStreamPath(d(b)), paramString, new bd()
        {
          public final bb<List<aw>> a()
          {
            return new ba(new aw.a());
          }
        }).a();
        if (paramString != null) {
          break label187;
        }
        am.c(d, "New main file also not found. returning..");
      }
      return;
      label187:
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        ((List)localObject1).add(((aw)paramString.next()).a());
      }
    }
  }
  
  private void c(String paramString)
  {
    List localList = j(paramString);
    if (localList == null) {
      am.c(d, "No old file to replace");
    }
    do
    {
      return;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        Object localObject = k(str);
        if (localObject == null)
        {
          am.a(6, d, "File does not exist");
        }
        else
        {
          a(str, (byte[])localObject);
          bs.a();
          am.a(5, d, "Deleting  block File for " + str + " file name:" + y.a().b().getFileStreamPath(new StringBuilder(".flurrydatasenderblock.").append(str).toString()));
          localObject = y.a().b().getFileStreamPath(".flurrydatasenderblock." + str);
          if (((File)localObject).exists())
          {
            boolean bool = ((File)localObject).delete();
            am.a(5, d, "Found file for " + str + ". Deleted - " + bool);
          }
        }
      }
    } while (localList == null);
    a(paramString, localList, ".YFlurrySenderIndex.info.");
    h(paramString);
  }
  
  private static String d(String paramString)
  {
    return ".YFlurrySenderIndex.info." + paramString;
  }
  
  private boolean e(String paramString)
  {
    new af(y.a().b().getFileStreamPath(au.a(paramString)), ".yflurrydatasenderblock.", new bd()
    {
      public final bb<au> a()
      {
        return new au.a();
      }
    }).b();
  }
  
  private boolean f(String paramString)
  {
    af localaf;
    try
    {
      bs.a();
      localaf = new af(y.a().b().getFileStreamPath(d(paramString)), ".YFlurrySenderIndex.info.", new bd()
      {
        public final bb<List<aw>> a()
        {
          return new ba(new aw.a());
        }
      });
      Object localObject = a(paramString);
      if (localObject != null)
      {
        am.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + ((List)localObject).size());
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          e(str);
          am.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str);
        }
      }
      c.remove(paramString);
    }
    finally {}
    boolean bool = localaf.b();
    a();
    return bool;
  }
  
  private List<String> g(String paramString)
  {
    try
    {
      bs.a();
      am.a(5, d, "Reading Index File for " + paramString + " file name:" + y.a().b().getFileStreamPath(d(paramString)));
      Object localObject = (List)new af(y.a().b().getFileStreamPath(d(paramString)), ".YFlurrySenderIndex.info.", new bd()
      {
        public final bb<List<aw>> a()
        {
          return new ba(new aw.a());
        }
      }).a();
      paramString = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramString.add(((aw)((Iterator)localObject).next()).a());
      }
    }
    finally {}
    return paramString;
  }
  
  private static void h(String paramString)
  {
    bs.a();
    am.a(5, d, "Deleting Index File for " + paramString + " file name:" + y.a().b().getFileStreamPath(new StringBuilder(".FlurrySenderIndex.info.").append(paramString).toString()));
    File localFile = y.a().b().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      am.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  private boolean i(String paramString)
  {
    try
    {
      File localFile = y.a().b().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
      am.a(5, d, "isOldIndexFilePresent: for " + paramString + localFile.exists());
      boolean bool = localFile.exists();
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  private List<String> j(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: monitorenter
    //   5: invokestatic 120	com/flurry/sdk/bs:a	()V
    //   8: iconst_5
    //   9: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   12: new 51	java/lang/StringBuilder
    //   15: dup
    //   16: ldc_w 268
    //   19: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_1
    //   23: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 126
    //   28: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokestatic 85	com/flurry/sdk/y:a	()Lcom/flurry/sdk/y;
    //   34: invokevirtual 88	com/flurry/sdk/y:b	()Landroid/content/Context;
    //   37: new 51	java/lang/StringBuilder
    //   40: dup
    //   41: ldc_w 274
    //   44: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_1
    //   48: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokevirtual 97	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   57: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   66: invokestatic 85	com/flurry/sdk/y:a	()Lcom/flurry/sdk/y;
    //   69: invokevirtual 88	com/flurry/sdk/y:b	()Landroid/content/Context;
    //   72: new 51	java/lang/StringBuilder
    //   75: dup
    //   76: ldc_w 274
    //   79: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   82: aload_1
    //   83: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: invokevirtual 97	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   92: astore 5
    //   94: aload 5
    //   96: invokevirtual 236	java/io/File:exists	()Z
    //   99: ifeq +261 -> 360
    //   102: iconst_5
    //   103: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   106: new 51	java/lang/StringBuilder
    //   109: dup
    //   110: ldc_w 268
    //   113: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   116: aload_1
    //   117: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc_w 280
    //   123: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   132: new 282	java/io/DataInputStream
    //   135: dup
    //   136: new 284	java/io/FileInputStream
    //   139: dup
    //   140: aload 5
    //   142: invokespecial 287	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   145: invokespecial 290	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   148: astore 7
    //   150: aload 7
    //   152: astore 5
    //   154: aload 7
    //   156: invokevirtual 293	java/io/DataInputStream:readUnsignedShort	()I
    //   159: istore_3
    //   160: iload_3
    //   161: ifne +15 -> 176
    //   164: aload 7
    //   166: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   169: aload 6
    //   171: astore_1
    //   172: aload_0
    //   173: monitorexit
    //   174: aload_1
    //   175: areturn
    //   176: aload 7
    //   178: astore 5
    //   180: new 137	java/util/ArrayList
    //   183: dup
    //   184: iload_3
    //   185: invokespecial 299	java/util/ArrayList:<init>	(I)V
    //   188: astore_1
    //   189: iconst_0
    //   190: istore_2
    //   191: iload_2
    //   192: iload_3
    //   193: if_icmpge +101 -> 294
    //   196: aload 7
    //   198: astore 5
    //   200: aload 7
    //   202: invokevirtual 293	java/io/DataInputStream:readUnsignedShort	()I
    //   205: istore 4
    //   207: aload 7
    //   209: astore 5
    //   211: iconst_4
    //   212: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   215: new 51	java/lang/StringBuilder
    //   218: dup
    //   219: ldc_w 301
    //   222: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   225: iload_2
    //   226: invokevirtual 257	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   229: ldc_w 303
    //   232: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   235: iload 4
    //   237: invokevirtual 257	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   240: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   243: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   246: aload 7
    //   248: astore 5
    //   250: iload 4
    //   252: newarray <illegal type>
    //   254: astore 6
    //   256: aload 7
    //   258: astore 5
    //   260: aload 7
    //   262: aload 6
    //   264: invokevirtual 306	java/io/DataInputStream:readFully	([B)V
    //   267: aload 7
    //   269: astore 5
    //   271: aload_1
    //   272: new 155	java/lang/String
    //   275: dup
    //   276: aload 6
    //   278: invokespecial 307	java/lang/String:<init>	([B)V
    //   281: invokeinterface 160 2 0
    //   286: pop
    //   287: iload_2
    //   288: iconst_1
    //   289: iadd
    //   290: istore_2
    //   291: goto -100 -> 191
    //   294: aload 7
    //   296: astore 5
    //   298: aload 7
    //   300: invokevirtual 293	java/io/DataInputStream:readUnsignedShort	()I
    //   303: pop
    //   304: aload 7
    //   306: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   309: goto -137 -> 172
    //   312: astore 6
    //   314: aconst_null
    //   315: astore 7
    //   317: aconst_null
    //   318: astore_1
    //   319: aload 7
    //   321: astore 5
    //   323: bipush 6
    //   325: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   328: ldc_w 309
    //   331: aload 6
    //   333: invokestatic 312	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   336: aload 7
    //   338: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   341: goto -32 -> 309
    //   344: astore_1
    //   345: aload_0
    //   346: monitorexit
    //   347: aload_1
    //   348: athrow
    //   349: astore_1
    //   350: aconst_null
    //   351: astore 5
    //   353: aload 5
    //   355: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   358: aload_1
    //   359: athrow
    //   360: iconst_5
    //   361: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   364: ldc_w 314
    //   367: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   370: aconst_null
    //   371: astore_1
    //   372: goto -63 -> 309
    //   375: astore_1
    //   376: goto -23 -> 353
    //   379: astore 6
    //   381: aconst_null
    //   382: astore_1
    //   383: goto -64 -> 319
    //   386: astore 6
    //   388: goto -69 -> 319
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	391	0	this	av
    //   0	391	1	paramString	String
    //   190	101	2	i	int
    //   159	35	3	j	int
    //   205	46	4	k	int
    //   92	262	5	localObject	Object
    //   1	276	6	arrayOfByte	byte[]
    //   312	20	6	localThrowable1	Throwable
    //   379	1	6	localThrowable2	Throwable
    //   386	1	6	localThrowable3	Throwable
    //   148	189	7	localDataInputStream	java.io.DataInputStream
    // Exception table:
    //   from	to	target	type
    //   132	150	312	java/lang/Throwable
    //   5	132	344	finally
    //   164	169	344	finally
    //   304	309	344	finally
    //   336	341	344	finally
    //   353	360	344	finally
    //   360	370	344	finally
    //   132	150	349	finally
    //   154	160	375	finally
    //   180	189	375	finally
    //   200	207	375	finally
    //   211	246	375	finally
    //   250	256	375	finally
    //   260	267	375	finally
    //   271	287	375	finally
    //   298	304	375	finally
    //   323	336	375	finally
    //   154	160	379	java/lang/Throwable
    //   180	189	379	java/lang/Throwable
    //   200	207	386	java/lang/Throwable
    //   211	246	386	java/lang/Throwable
    //   250	256	386	java/lang/Throwable
    //   260	267	386	java/lang/Throwable
    //   271	287	386	java/lang/Throwable
    //   298	304	386	java/lang/Throwable
  }
  
  /* Error */
  private static byte[] k(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: invokestatic 120	com/flurry/sdk/bs:a	()V
    //   9: iconst_5
    //   10: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   13: new 51	java/lang/StringBuilder
    //   16: dup
    //   17: ldc_w 316
    //   20: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_0
    //   24: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 126
    //   29: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokestatic 85	com/flurry/sdk/y:a	()Lcom/flurry/sdk/y;
    //   35: invokevirtual 88	com/flurry/sdk/y:b	()Landroid/content/Context;
    //   38: new 51	java/lang/StringBuilder
    //   41: dup
    //   42: ldc -25
    //   44: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: invokevirtual 97	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   57: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   66: invokestatic 85	com/flurry/sdk/y:a	()Lcom/flurry/sdk/y;
    //   69: invokevirtual 88	com/flurry/sdk/y:b	()Landroid/content/Context;
    //   72: new 51	java/lang/StringBuilder
    //   75: dup
    //   76: ldc -25
    //   78: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   81: aload_0
    //   82: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   88: invokevirtual 97	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   91: astore_2
    //   92: aload_2
    //   93: invokevirtual 236	java/io/File:exists	()Z
    //   96: ifeq +144 -> 240
    //   99: iconst_5
    //   100: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   103: new 51	java/lang/StringBuilder
    //   106: dup
    //   107: ldc_w 268
    //   110: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_0
    //   114: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc_w 280
    //   120: invokevirtual 56	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   126: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   129: new 282	java/io/DataInputStream
    //   132: dup
    //   133: new 284	java/io/FileInputStream
    //   136: dup
    //   137: aload_2
    //   138: invokespecial 287	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   141: invokespecial 290	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   144: astore_3
    //   145: aload_3
    //   146: astore_0
    //   147: aload 5
    //   149: astore_2
    //   150: aload_3
    //   151: invokevirtual 293	java/io/DataInputStream:readUnsignedShort	()I
    //   154: istore_1
    //   155: iload_1
    //   156: ifne +9 -> 165
    //   159: aload_3
    //   160: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   163: aconst_null
    //   164: areturn
    //   165: aload_3
    //   166: astore_0
    //   167: aload 5
    //   169: astore_2
    //   170: iload_1
    //   171: newarray <illegal type>
    //   173: astore 4
    //   175: aload_3
    //   176: astore_0
    //   177: aload 4
    //   179: astore_2
    //   180: aload_3
    //   181: aload 4
    //   183: invokevirtual 306	java/io/DataInputStream:readFully	([B)V
    //   186: aload_3
    //   187: astore_0
    //   188: aload 4
    //   190: astore_2
    //   191: aload_3
    //   192: invokevirtual 293	java/io/DataInputStream:readUnsignedShort	()I
    //   195: pop
    //   196: aload_3
    //   197: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   200: aload 4
    //   202: areturn
    //   203: astore 5
    //   205: aconst_null
    //   206: astore_2
    //   207: aload_2
    //   208: astore_0
    //   209: bipush 6
    //   211: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   214: ldc_w 309
    //   217: aload 5
    //   219: invokestatic 312	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   222: aload_2
    //   223: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   226: aload 4
    //   228: areturn
    //   229: astore_0
    //   230: aconst_null
    //   231: astore_3
    //   232: aload_0
    //   233: astore_2
    //   234: aload_3
    //   235: invokestatic 296	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   238: aload_2
    //   239: athrow
    //   240: iconst_4
    //   241: getstatic 36	com/flurry/sdk/av:d	Ljava/lang/String;
    //   244: ldc_w 314
    //   247: invokestatic 134	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   250: aconst_null
    //   251: areturn
    //   252: astore_2
    //   253: aload_0
    //   254: astore_3
    //   255: goto -21 -> 234
    //   258: astore 5
    //   260: aload_2
    //   261: astore 4
    //   263: aload_3
    //   264: astore_2
    //   265: goto -58 -> 207
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	268	0	paramString	String
    //   154	17	1	i	int
    //   91	148	2	localObject1	Object
    //   252	9	2	localObject2	Object
    //   264	1	2	localObject3	Object
    //   144	120	3	localObject4	Object
    //   4	258	4	localObject5	Object
    //   1	167	5	localObject6	Object
    //   203	15	5	localThrowable1	Throwable
    //   258	1	5	localThrowable2	Throwable
    // Exception table:
    //   from	to	target	type
    //   129	145	203	java/lang/Throwable
    //   129	145	229	finally
    //   150	155	252	finally
    //   170	175	252	finally
    //   180	186	252	finally
    //   191	196	252	finally
    //   209	222	252	finally
    //   150	155	258	java/lang/Throwable
    //   170	175	258	java/lang/Throwable
    //   180	186	258	java/lang/Throwable
    //   191	196	258	java/lang/Throwable
  }
  
  public final List<String> a(String paramString)
  {
    return (List)c.get(paramString);
  }
  
  public final void a(au paramau, String paramString)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        am.a(4, d, "addBlockInfo" + paramString);
        String str = a;
        paramau = (List)c.get(paramString);
        if (paramau == null)
        {
          am.a(4, d, "New Data Key");
          paramau = new LinkedList();
          i = 1;
          paramau.add(str);
          if (paramau.size() > a.intValue())
          {
            e((String)paramau.get(0));
            paramau.remove(0);
          }
          c.put(paramString, paramau);
          a(paramString, paramau, ".YFlurrySenderIndex.info.");
          if (i != 0) {
            a();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  public final boolean a(String paramString1, String paramString2)
  {
    List localList = (List)c.get(paramString2);
    boolean bool = false;
    if (localList != null)
    {
      e(paramString1);
      bool = localList.remove(paramString1);
    }
    if ((localList != null) && (!localList.isEmpty()))
    {
      c.put(paramString2, localList);
      a(paramString2, localList, ".YFlurrySenderIndex.info.");
      return bool;
    }
    f(paramString2);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */