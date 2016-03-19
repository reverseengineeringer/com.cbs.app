package com.flurry.sdk;

import java.io.File;

public class af<T>
{
  private static final String a = af.class.getSimpleName();
  private final File b;
  private final bb<T> c;
  
  public af(File paramFile, String paramString, bd<T> parambd)
  {
    b = paramFile;
    c = new az(new bc(paramString, 1, parambd));
  }
  
  /* Error */
  public final T a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aload_0
    //   6: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   9: ifnonnull +5 -> 14
    //   12: aload_3
    //   13: areturn
    //   14: aload_0
    //   15: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   18: invokevirtual 52	java/io/File:exists	()Z
    //   21: ifne +34 -> 55
    //   24: iconst_5
    //   25: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   28: new 54	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 56
    //   34: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   41: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   44: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 74	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aconst_null
    //   54: areturn
    //   55: iconst_0
    //   56: istore_1
    //   57: new 76	java/io/FileInputStream
    //   60: dup
    //   61: aload_0
    //   62: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   65: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   68: astore_3
    //   69: aload_3
    //   70: astore_2
    //   71: aload_0
    //   72: getfield 41	com/flurry/sdk/af:c	Lcom/flurry/sdk/bb;
    //   75: aload_3
    //   76: invokeinterface 84 2 0
    //   81: astore 4
    //   83: aload 4
    //   85: astore_2
    //   86: aload_3
    //   87: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   90: aload_2
    //   91: astore_3
    //   92: iload_1
    //   93: ifeq -81 -> 12
    //   96: iconst_3
    //   97: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   100: new 54	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 91
    //   106: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_0
    //   110: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   113: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   116: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 74	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   125: aload_0
    //   126: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   129: invokevirtual 94	java/io/File:delete	()Z
    //   132: pop
    //   133: aload_2
    //   134: areturn
    //   135: astore 4
    //   137: aconst_null
    //   138: astore_3
    //   139: aload_3
    //   140: astore_2
    //   141: iconst_3
    //   142: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   145: new 54	java/lang/StringBuilder
    //   148: dup
    //   149: ldc 96
    //   151: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   154: aload_0
    //   155: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   158: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   161: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   167: aload 4
    //   169: invokestatic 99	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   172: iconst_1
    //   173: istore_1
    //   174: aload_3
    //   175: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   178: aload 5
    //   180: astore_2
    //   181: goto -91 -> 90
    //   184: astore_2
    //   185: aconst_null
    //   186: astore 4
    //   188: aload_2
    //   189: astore_3
    //   190: aload 4
    //   192: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   195: aload_3
    //   196: athrow
    //   197: astore_3
    //   198: aload_2
    //   199: astore 4
    //   201: goto -11 -> 190
    //   204: astore 4
    //   206: goto -67 -> 139
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	209	0	this	af
    //   56	118	1	i	int
    //   70	111	2	localObject1	Object
    //   184	15	2	localObject2	Object
    //   4	192	3	localObject3	Object
    //   197	1	3	localObject4	Object
    //   81	3	4	localObject5	Object
    //   135	33	4	localException1	Exception
    //   186	14	4	localObject6	Object
    //   204	1	4	localException2	Exception
    //   1	178	5	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   57	69	135	java/lang/Exception
    //   57	69	184	finally
    //   71	83	197	finally
    //   141	172	197	finally
    //   71	83	204	java/lang/Exception
  }
  
  /* Error */
  public final void a(T paramT)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aconst_null
    //   3: astore 4
    //   5: aconst_null
    //   6: astore 5
    //   8: aload_1
    //   9: ifnonnull +76 -> 85
    //   12: iconst_3
    //   13: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   16: new 54	java/lang/StringBuilder
    //   19: dup
    //   20: ldc 103
    //   22: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   29: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   32: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 74	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   41: iconst_1
    //   42: istore_2
    //   43: iload_2
    //   44: ifeq +40 -> 84
    //   47: iconst_3
    //   48: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   51: new 54	java/lang/StringBuilder
    //   54: dup
    //   55: ldc 91
    //   57: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   64: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   67: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokestatic 74	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   76: aload_0
    //   77: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   80: invokevirtual 94	java/io/File:delete	()Z
    //   83: pop
    //   84: return
    //   85: aload 4
    //   87: astore_3
    //   88: aload_0
    //   89: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   92: invokestatic 108	com/flurry/sdk/br:a	(Ljava/io/File;)Z
    //   95: ifne +63 -> 158
    //   98: aload 4
    //   100: astore_3
    //   101: new 110	java/io/IOException
    //   104: dup
    //   105: ldc 112
    //   107: invokespecial 113	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   110: athrow
    //   111: astore 4
    //   113: aload 5
    //   115: astore_1
    //   116: aload_1
    //   117: astore_3
    //   118: iconst_3
    //   119: getstatic 22	com/flurry/sdk/af:a	Ljava/lang/String;
    //   122: new 54	java/lang/StringBuilder
    //   125: dup
    //   126: ldc 115
    //   128: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   135: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   138: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: aload 4
    //   146: invokestatic 99	com/flurry/sdk/am:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   149: aload_1
    //   150: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   153: iconst_1
    //   154: istore_2
    //   155: goto -112 -> 43
    //   158: aload 4
    //   160: astore_3
    //   161: new 117	java/io/FileOutputStream
    //   164: dup
    //   165: aload_0
    //   166: getfield 29	com/flurry/sdk/af:b	Ljava/io/File;
    //   169: invokespecial 118	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   172: astore 4
    //   174: aload_0
    //   175: getfield 41	com/flurry/sdk/af:c	Lcom/flurry/sdk/bb;
    //   178: aload 4
    //   180: aload_1
    //   181: invokeinterface 121 3 0
    //   186: aload 4
    //   188: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   191: goto -148 -> 43
    //   194: astore_1
    //   195: aload_3
    //   196: invokestatic 89	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   199: aload_1
    //   200: athrow
    //   201: astore_1
    //   202: aload 4
    //   204: astore_3
    //   205: goto -10 -> 195
    //   208: astore_3
    //   209: aload 4
    //   211: astore_1
    //   212: aload_3
    //   213: astore 4
    //   215: goto -99 -> 116
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	af
    //   0	218	1	paramT	T
    //   1	154	2	i	int
    //   87	118	3	localObject1	Object
    //   208	5	3	localException1	Exception
    //   3	96	4	localObject2	Object
    //   111	48	4	localException2	Exception
    //   172	42	4	localObject3	Object
    //   6	108	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   88	98	111	java/lang/Exception
    //   101	111	111	java/lang/Exception
    //   161	174	111	java/lang/Exception
    //   88	98	194	finally
    //   101	111	194	finally
    //   118	149	194	finally
    //   161	174	194	finally
    //   174	186	201	finally
    //   174	186	208	java/lang/Exception
  }
  
  public final boolean b()
  {
    if (b == null) {
      return false;
    }
    return b.delete();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */