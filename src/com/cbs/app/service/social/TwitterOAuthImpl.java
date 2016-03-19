package com.cbs.app.service.social;

import android.os.Handler;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class TwitterOAuthImpl
{
  private static final String a = TwitterOAuthImpl.class.getSimpleName();
  private static Handler b = new Handler();
  private static int c = 10000;
  private TwitterOAuthResponse d;
  private boolean e = false;
  
  private static String a(BufferedInputStream paramBufferedInputStream)
  {
    paramBufferedInputStream = new BufferedReader(new InputStreamReader(paramBufferedInputStream));
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      String str = paramBufferedInputStream.readLine();
      if (str == null) {
        break;
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  private static String b(OAuthRequestBundle paramOAuthRequestBundle)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 84	java/net/URL
    //   5: dup
    //   6: aload_0
    //   7: getfield 88	com/cbs/app/service/social/OAuthRequestBundle:c	Ljava/lang/String;
    //   10: invokespecial 91	java/net/URL:<init>	(Ljava/lang/String;)V
    //   13: invokevirtual 95	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   16: checkcast 97	javax/net/ssl/HttpsURLConnection
    //   19: astore_1
    //   20: aload_1
    //   21: iconst_1
    //   22: invokevirtual 101	javax/net/ssl/HttpsURLConnection:setDoOutput	(Z)V
    //   25: aload_1
    //   26: iconst_1
    //   27: invokevirtual 104	javax/net/ssl/HttpsURLConnection:setDoInput	(Z)V
    //   30: aload_1
    //   31: aload_0
    //   32: getfield 106	com/cbs/app/service/social/OAuthRequestBundle:b	Ljava/lang/String;
    //   35: invokevirtual 109	javax/net/ssl/HttpsURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   38: aload_1
    //   39: ldc 111
    //   41: aload_0
    //   42: getfield 113	com/cbs/app/service/social/OAuthRequestBundle:e	Ljava/lang/String;
    //   45: invokevirtual 117	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   48: aload_1
    //   49: ldc 119
    //   51: ldc 121
    //   53: invokevirtual 117	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   56: aload_1
    //   57: ldc 123
    //   59: ldc 125
    //   61: invokevirtual 117	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   64: aload_1
    //   65: ldc 127
    //   67: aload_0
    //   68: getfield 129	com/cbs/app/service/social/OAuthRequestBundle:d	Ljava/lang/String;
    //   71: invokevirtual 117	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   74: aload_1
    //   75: ldc -125
    //   77: ldc -123
    //   79: invokevirtual 117	javax/net/ssl/HttpsURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   82: aload_1
    //   83: getstatic 39	com/cbs/app/service/social/TwitterOAuthImpl:c	I
    //   86: invokevirtual 137	javax/net/ssl/HttpsURLConnection:setConnectTimeout	(I)V
    //   89: aload_1
    //   90: getstatic 39	com/cbs/app/service/social/TwitterOAuthImpl:c	I
    //   93: invokevirtual 140	javax/net/ssl/HttpsURLConnection:setReadTimeout	(I)V
    //   96: aload_1
    //   97: iconst_0
    //   98: invokevirtual 143	javax/net/ssl/HttpsURLConnection:setUseCaches	(Z)V
    //   101: aload_0
    //   102: getfield 144	com/cbs/app/service/social/OAuthRequestBundle:a	Ljava/lang/String;
    //   105: astore_0
    //   106: aload_0
    //   107: ifnull +54 -> 161
    //   110: new 146	java/io/BufferedOutputStream
    //   113: dup
    //   114: aload_1
    //   115: invokevirtual 150	javax/net/ssl/HttpsURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   118: invokespecial 153	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   121: astore_3
    //   122: new 155	java/io/BufferedWriter
    //   125: dup
    //   126: new 157	java/io/OutputStreamWriter
    //   129: dup
    //   130: aload_3
    //   131: ldc -97
    //   133: invokespecial 162	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;Ljava/lang/String;)V
    //   136: invokespecial 165	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   139: astore_2
    //   140: aload_2
    //   141: aload_0
    //   142: invokevirtual 168	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   145: aload_2
    //   146: invokevirtual 171	java/io/BufferedWriter:flush	()V
    //   149: aload_3
    //   150: invokevirtual 172	java/io/BufferedOutputStream:flush	()V
    //   153: aload_2
    //   154: invokevirtual 175	java/io/BufferedWriter:close	()V
    //   157: aload_3
    //   158: invokevirtual 176	java/io/BufferedOutputStream:close	()V
    //   161: aload_1
    //   162: invokevirtual 180	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   165: sipush 200
    //   168: if_icmpeq +111 -> 279
    //   171: new 64	java/lang/StringBuilder
    //   174: dup
    //   175: ldc -74
    //   177: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_1
    //   181: invokevirtual 180	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   184: invokevirtual 186	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   187: pop
    //   188: new 64	java/lang/StringBuilder
    //   191: dup
    //   192: ldc -68
    //   194: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   197: aload_1
    //   198: invokevirtual 180	javax/net/ssl/HttpsURLConnection:getResponseCode	()I
    //   201: invokevirtual 186	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   204: ldc -66
    //   206: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: aload_1
    //   210: invokevirtual 193	javax/net/ssl/HttpsURLConnection:getResponseMessage	()Ljava/lang/String;
    //   213: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: astore_0
    //   220: aload_1
    //   221: ifnull +7 -> 228
    //   224: aload_1
    //   225: invokevirtual 196	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   228: aload_0
    //   229: areturn
    //   230: astore_0
    //   231: aconst_null
    //   232: astore_2
    //   233: aload_2
    //   234: ifnull +7 -> 241
    //   237: aload_2
    //   238: invokevirtual 175	java/io/BufferedWriter:close	()V
    //   241: aload_3
    //   242: invokevirtual 176	java/io/BufferedOutputStream:close	()V
    //   245: aload_0
    //   246: athrow
    //   247: astore_2
    //   248: aload_1
    //   249: astore_0
    //   250: aload_2
    //   251: astore_1
    //   252: new 64	java/lang/StringBuilder
    //   255: dup
    //   256: ldc -58
    //   258: invokespecial 183	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   261: aload_1
    //   262: invokevirtual 199	java/io/IOException:toString	()Ljava/lang/String;
    //   265: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: pop
    //   269: aload_0
    //   270: ifnull +7 -> 277
    //   273: aload_0
    //   274: invokevirtual 196	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   277: aconst_null
    //   278: areturn
    //   279: new 201	java/io/BufferedInputStream
    //   282: dup
    //   283: aload_1
    //   284: invokevirtual 205	javax/net/ssl/HttpsURLConnection:getInputStream	()Ljava/io/InputStream;
    //   287: invokespecial 206	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   290: invokestatic 208	com/cbs/app/service/social/TwitterOAuthImpl:a	(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    //   293: astore_0
    //   294: aload_1
    //   295: ifnull +7 -> 302
    //   298: aload_1
    //   299: invokevirtual 196	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   302: aload_0
    //   303: areturn
    //   304: astore_0
    //   305: aload_2
    //   306: astore_1
    //   307: aload_1
    //   308: ifnull +7 -> 315
    //   311: aload_1
    //   312: invokevirtual 196	javax/net/ssl/HttpsURLConnection:disconnect	()V
    //   315: aload_0
    //   316: athrow
    //   317: astore_0
    //   318: goto -11 -> 307
    //   321: astore_2
    //   322: aload_0
    //   323: astore_1
    //   324: aload_2
    //   325: astore_0
    //   326: goto -19 -> 307
    //   329: astore_1
    //   330: aconst_null
    //   331: astore_0
    //   332: goto -80 -> 252
    //   335: astore_0
    //   336: goto -103 -> 233
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	339	0	paramOAuthRequestBundle	OAuthRequestBundle
    //   19	305	1	localObject1	Object
    //   329	1	1	localIOException1	java.io.IOException
    //   1	237	2	localBufferedWriter	java.io.BufferedWriter
    //   247	59	2	localIOException2	java.io.IOException
    //   321	4	2	localObject2	Object
    //   121	121	3	localBufferedOutputStream	java.io.BufferedOutputStream
    // Exception table:
    //   from	to	target	type
    //   122	140	230	finally
    //   20	106	247	java/io/IOException
    //   110	122	247	java/io/IOException
    //   153	161	247	java/io/IOException
    //   161	220	247	java/io/IOException
    //   237	241	247	java/io/IOException
    //   241	247	247	java/io/IOException
    //   279	294	247	java/io/IOException
    //   2	20	304	finally
    //   20	106	317	finally
    //   110	122	317	finally
    //   153	161	317	finally
    //   161	220	317	finally
    //   237	241	317	finally
    //   241	247	317	finally
    //   279	294	317	finally
    //   252	269	321	finally
    //   2	20	329	java/io/IOException
    //   140	153	335	finally
  }
  
  public final void a()
  {
    e = true;
  }
  
  public final void a(final OAuthRequestBundle paramOAuthRequestBundle)
  {
    if (paramOAuthRequestBundle != null) {
      new Thread(new Runnable()
      {
        public final void run()
        {
          String str = TwitterOAuthImpl.a(TwitterOAuthImpl.this, paramOAuthRequestBundle);
          TwitterOAuthImpl.b().post(TwitterOAuthImpl.a(TwitterOAuthImpl.this, str, paramOAuthRequestBundlef));
        }
      }) {}.start();
    }
  }
  
  public void setTwitterOAuthResponse(TwitterOAuthResponse paramTwitterOAuthResponse)
  {
    d = paramTwitterOAuthResponse;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.social.TwitterOAuthImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */