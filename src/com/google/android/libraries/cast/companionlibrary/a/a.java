package com.google.android.libraries.cast.companionlibrary.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build.VERSION;

public abstract class a
  extends AsyncTask<Uri, Void, Bitmap>
{
  private final int a = 0;
  private final int b = 0;
  
  private a() {}
  
  public a(byte paramByte)
  {
    this();
  }
  
  /* Error */
  private Bitmap a(Uri... paramVarArgs)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: aload_1
    //   10: arraylength
    //   11: iconst_1
    //   12: if_icmpne +9 -> 21
    //   15: aload_1
    //   16: iconst_0
    //   17: aaload
    //   18: ifnonnull +9 -> 27
    //   21: aconst_null
    //   22: astore 8
    //   24: aload 8
    //   26: areturn
    //   27: new 26	java/net/URL
    //   30: dup
    //   31: aload_1
    //   32: iconst_0
    //   33: aaload
    //   34: invokevirtual 32	android/net/Uri:toString	()Ljava/lang/String;
    //   37: invokespecial 35	java/net/URL:<init>	(Ljava/lang/String;)V
    //   40: astore_1
    //   41: aload_1
    //   42: invokevirtual 39	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   45: checkcast 41	java/net/HttpURLConnection
    //   48: astore_1
    //   49: aload_1
    //   50: iconst_1
    //   51: invokevirtual 45	java/net/HttpURLConnection:setDoInput	(Z)V
    //   54: aload 9
    //   56: astore 8
    //   58: aload_1
    //   59: invokevirtual 49	java/net/HttpURLConnection:getResponseCode	()I
    //   62: sipush 200
    //   65: if_icmpne +89 -> 154
    //   68: new 51	java/io/BufferedInputStream
    //   71: dup
    //   72: aload_1
    //   73: invokevirtual 55	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   76: invokespecial 58	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   79: invokestatic 64	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   82: astore 7
    //   84: aload 7
    //   86: astore 8
    //   88: aload_0
    //   89: getfield 14	com/google/android/libraries/cast/companionlibrary/a/a:a	I
    //   92: ifle +62 -> 154
    //   95: aload 7
    //   97: astore 8
    //   99: aload_0
    //   100: getfield 16	com/google/android/libraries/cast/companionlibrary/a/a:b	I
    //   103: ifle +51 -> 154
    //   106: aload 7
    //   108: invokevirtual 69	android/graphics/Bitmap:getWidth	()I
    //   111: istore_3
    //   112: aload 7
    //   114: invokevirtual 72	android/graphics/Bitmap:getHeight	()I
    //   117: istore 4
    //   119: iload_3
    //   120: aload_0
    //   121: getfield 14	com/google/android/libraries/cast/companionlibrary/a/a:a	I
    //   124: isub
    //   125: istore 5
    //   127: aload_0
    //   128: getfield 16	com/google/android/libraries/cast/companionlibrary/a/a:b	I
    //   131: istore 6
    //   133: iload 4
    //   135: iload 6
    //   137: isub
    //   138: istore 6
    //   140: iload 5
    //   142: ifne +26 -> 168
    //   145: iload 6
    //   147: ifne +21 -> 168
    //   150: aload 7
    //   152: astore 8
    //   154: aload_1
    //   155: ifnull +168 -> 323
    //   158: aload_1
    //   159: invokevirtual 75	java/net/HttpURLConnection:disconnect	()V
    //   162: aload 8
    //   164: areturn
    //   165: astore_1
    //   166: aconst_null
    //   167: areturn
    //   168: iload 5
    //   170: ifgt +8 -> 178
    //   173: iload 6
    //   175: ifle +54 -> 229
    //   178: aload_0
    //   179: getfield 14	com/google/android/libraries/cast/companionlibrary/a/a:a	I
    //   182: i2f
    //   183: iload_3
    //   184: i2f
    //   185: fdiv
    //   186: fstore_2
    //   187: aload_0
    //   188: getfield 16	com/google/android/libraries/cast/companionlibrary/a/a:b	I
    //   191: i2f
    //   192: iload 4
    //   194: i2f
    //   195: fdiv
    //   196: fload_2
    //   197: invokestatic 81	java/lang/Math:min	(FF)F
    //   200: fstore_2
    //   201: aload 7
    //   203: iload_3
    //   204: i2f
    //   205: fload_2
    //   206: fmul
    //   207: ldc 82
    //   209: fadd
    //   210: f2i
    //   211: fload_2
    //   212: iload 4
    //   214: i2f
    //   215: fmul
    //   216: ldc 82
    //   218: fadd
    //   219: f2i
    //   220: iconst_0
    //   221: invokestatic 86	android/graphics/Bitmap:createScaledBitmap	(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    //   224: astore 8
    //   226: goto -72 -> 154
    //   229: iload_3
    //   230: i2f
    //   231: aload_0
    //   232: getfield 14	com/google/android/libraries/cast/companionlibrary/a/a:a	I
    //   235: i2f
    //   236: fdiv
    //   237: fstore_2
    //   238: iload 4
    //   240: i2f
    //   241: aload_0
    //   242: getfield 16	com/google/android/libraries/cast/companionlibrary/a/a:b	I
    //   245: i2f
    //   246: fdiv
    //   247: fload_2
    //   248: invokestatic 81	java/lang/Math:min	(FF)F
    //   251: fstore_2
    //   252: goto -51 -> 201
    //   255: astore_1
    //   256: aconst_null
    //   257: astore_1
    //   258: aload_1
    //   259: astore 8
    //   261: aload 7
    //   263: ifnull -239 -> 24
    //   266: aload 7
    //   268: invokevirtual 75	java/net/HttpURLConnection:disconnect	()V
    //   271: aload_1
    //   272: areturn
    //   273: astore 7
    //   275: aload 8
    //   277: astore_1
    //   278: aload_1
    //   279: ifnull +7 -> 286
    //   282: aload_1
    //   283: invokevirtual 75	java/net/HttpURLConnection:disconnect	()V
    //   286: aload 7
    //   288: athrow
    //   289: astore 7
    //   291: goto -13 -> 278
    //   294: astore 7
    //   296: aconst_null
    //   297: astore 8
    //   299: aload_1
    //   300: astore 7
    //   302: aload 8
    //   304: astore_1
    //   305: goto -47 -> 258
    //   308: astore 8
    //   310: aload_1
    //   311: astore 8
    //   313: aload 7
    //   315: astore_1
    //   316: aload 8
    //   318: astore 7
    //   320: goto -62 -> 258
    //   323: aload 8
    //   325: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	326	0	this	a
    //   0	326	1	paramVarArgs	Uri[]
    //   186	66	2	f	float
    //   111	119	3	i	int
    //   117	122	4	j	int
    //   125	44	5	k	int
    //   131	43	6	m	int
    //   1	266	7	localBitmap	Bitmap
    //   273	14	7	localObject1	Object
    //   289	1	7	localObject2	Object
    //   294	1	7	localIOException1	java.io.IOException
    //   300	19	7	localObject3	Object
    //   4	299	8	localObject4	Object
    //   308	1	8	localIOException2	java.io.IOException
    //   311	13	8	arrayOfUri	Uri[]
    //   7	48	9	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   27	41	165	java/net/MalformedURLException
    //   41	49	255	java/io/IOException
    //   41	49	273	finally
    //   49	54	289	finally
    //   58	84	289	finally
    //   88	95	289	finally
    //   99	133	289	finally
    //   178	201	289	finally
    //   201	226	289	finally
    //   229	252	289	finally
    //   49	54	294	java/io/IOException
    //   58	84	294	java/io/IOException
    //   88	95	308	java/io/IOException
    //   99	133	308	java/io/IOException
    //   178	201	308	java/io/IOException
    //   201	226	308	java/io/IOException
    //   229	252	308	java/io/IOException
  }
  
  @TargetApi(11)
  public final void a(Uri paramUri)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Uri[] { paramUri });
      return;
    }
    execute(new Uri[] { paramUri });
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.cast.companionlibrary.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */