package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.Closeable;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

public class ImageDownloader
{
  private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
  private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
  private static WorkQueue cacheReadQueue = new WorkQueue(2);
  private static WorkQueue downloadQueue = new WorkQueue(8);
  private static Handler handler;
  private static final Map<RequestKey, DownloaderContext> pendingRequests = new HashMap();
  
  public static boolean cancelRequest(ImageRequest arg0)
  {
    RequestKey localRequestKey = new RequestKey(???.getImageUri(), ???.getCallerTag());
    for (;;)
    {
      synchronized (pendingRequests)
      {
        DownloaderContext localDownloaderContext = (DownloaderContext)pendingRequests.get(localRequestKey);
        if (localDownloaderContext != null)
        {
          if (workItem.cancel())
          {
            pendingRequests.remove(localRequestKey);
            bool = true;
            return bool;
          }
          isCancelled = true;
          bool = true;
        }
      }
      boolean bool = false;
    }
  }
  
  public static void clearCache(Context paramContext)
  {
    ImageResponseCache.clearCache(paramContext);
    UrlRedirectCache.clearCache();
  }
  
  /* Error */
  private static void download(RequestKey paramRequestKey, Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 10
    //   3: aconst_null
    //   4: astore 8
    //   6: aconst_null
    //   7: astore 9
    //   9: iconst_1
    //   10: istore_3
    //   11: iconst_1
    //   12: istore_2
    //   13: new 113	java/net/URL
    //   16: dup
    //   17: aload_0
    //   18: getfield 117	com/facebook/internal/ImageDownloader$RequestKey:uri	Landroid/net/Uri;
    //   21: invokevirtual 123	android/net/Uri:toString	()Ljava/lang/String;
    //   24: invokespecial 126	java/net/URL:<init>	(Ljava/lang/String;)V
    //   27: invokevirtual 130	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   30: checkcast 132	java/net/HttpURLConnection
    //   33: astore 5
    //   35: aload 5
    //   37: iconst_0
    //   38: invokevirtual 136	java/net/HttpURLConnection:setInstanceFollowRedirects	(Z)V
    //   41: aload 5
    //   43: invokevirtual 140	java/net/HttpURLConnection:getResponseCode	()I
    //   46: lookupswitch	default:+437->483, 200:+267->313, 301:+175->221, 302:+175->221
    //   80: aload 5
    //   82: invokevirtual 144	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   85: astore 6
    //   87: aload 6
    //   89: astore 7
    //   91: aload 6
    //   93: astore 8
    //   95: new 146	java/lang/StringBuilder
    //   98: dup
    //   99: invokespecial 147	java/lang/StringBuilder:<init>	()V
    //   102: astore 11
    //   104: aload 6
    //   106: ifnull +300 -> 406
    //   109: aload 6
    //   111: astore 7
    //   113: aload 6
    //   115: astore 8
    //   117: new 149	java/io/InputStreamReader
    //   120: dup
    //   121: aload 6
    //   123: invokespecial 152	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   126: astore_1
    //   127: aload 6
    //   129: astore 7
    //   131: aload 6
    //   133: astore 8
    //   135: sipush 128
    //   138: newarray <illegal type>
    //   140: astore 12
    //   142: aload 6
    //   144: astore 7
    //   146: aload 6
    //   148: astore 8
    //   150: aload_1
    //   151: aload 12
    //   153: iconst_0
    //   154: sipush 128
    //   157: invokevirtual 156	java/io/InputStreamReader:read	([CII)I
    //   160: istore 4
    //   162: iload 4
    //   164: ifle +185 -> 349
    //   167: aload 6
    //   169: astore 7
    //   171: aload 6
    //   173: astore 8
    //   175: aload 11
    //   177: aload 12
    //   179: iconst_0
    //   180: iload 4
    //   182: invokevirtual 160	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   185: pop
    //   186: goto -44 -> 142
    //   189: astore_1
    //   190: aload 7
    //   192: astore 6
    //   194: aload 6
    //   196: invokestatic 166	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   199: aload 5
    //   201: invokestatic 170	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   204: aload 9
    //   206: astore 7
    //   208: iload_2
    //   209: ifeq +11 -> 220
    //   212: aload_0
    //   213: aload_1
    //   214: aload 7
    //   216: iconst_0
    //   217: invokestatic 174	com/facebook/internal/ImageDownloader:issueResponse	(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    //   220: return
    //   221: aload 5
    //   223: ldc -80
    //   225: invokevirtual 180	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   228: astore_1
    //   229: aload_1
    //   230: invokestatic 184	com/facebook/internal/Utility:isNullOrEmpty	(Ljava/lang/String;)Z
    //   233: ifne +236 -> 469
    //   236: aload_1
    //   237: invokestatic 188	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   240: astore_1
    //   241: aload_0
    //   242: getfield 117	com/facebook/internal/ImageDownloader$RequestKey:uri	Landroid/net/Uri;
    //   245: aload_1
    //   246: invokestatic 192	com/facebook/internal/UrlRedirectCache:cacheUriRedirect	(Landroid/net/Uri;Landroid/net/Uri;)V
    //   249: aload_0
    //   250: invokestatic 196	com/facebook/internal/ImageDownloader:removePendingRequest	(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    //   253: astore 6
    //   255: aload 6
    //   257: ifnull +32 -> 289
    //   260: aload 6
    //   262: getfield 99	com/facebook/internal/ImageDownloader$DownloaderContext:isCancelled	Z
    //   265: ifne +24 -> 289
    //   268: aload 6
    //   270: getfield 200	com/facebook/internal/ImageDownloader$DownloaderContext:request	Lcom/facebook/internal/ImageRequest;
    //   273: new 17	com/facebook/internal/ImageDownloader$RequestKey
    //   276: dup
    //   277: aload_1
    //   278: aload_0
    //   279: getfield 204	com/facebook/internal/ImageDownloader$RequestKey:tag	Ljava/lang/Object;
    //   282: invokespecial 76	com/facebook/internal/ImageDownloader$RequestKey:<init>	(Landroid/net/Uri;Ljava/lang/Object;)V
    //   285: iconst_0
    //   286: invokestatic 208	com/facebook/internal/ImageDownloader:enqueueCacheRead	(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    //   289: iconst_0
    //   290: istore_2
    //   291: aconst_null
    //   292: astore_1
    //   293: aconst_null
    //   294: astore 6
    //   296: aload 10
    //   298: astore 7
    //   300: aload 6
    //   302: invokestatic 166	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   305: aload 5
    //   307: invokestatic 170	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   310: goto -102 -> 208
    //   313: aload_1
    //   314: aload 5
    //   316: invokestatic 212	com/facebook/internal/ImageResponseCache:interceptAndCacheImageStream	(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    //   319: astore 6
    //   321: aload 6
    //   323: astore 7
    //   325: aload 6
    //   327: astore 8
    //   329: aload 6
    //   331: invokestatic 218	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   334: astore_1
    //   335: aconst_null
    //   336: astore 8
    //   338: aload_1
    //   339: astore 7
    //   341: iload_3
    //   342: istore_2
    //   343: aload 8
    //   345: astore_1
    //   346: goto -46 -> 300
    //   349: aload 6
    //   351: astore 7
    //   353: aload 6
    //   355: astore 8
    //   357: aload_1
    //   358: invokestatic 166	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   361: aload 6
    //   363: astore 7
    //   365: aload 6
    //   367: astore 8
    //   369: new 220	com/facebook/FacebookException
    //   372: dup
    //   373: aload 11
    //   375: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   378: invokespecial 222	com/facebook/FacebookException:<init>	(Ljava/lang/String;)V
    //   381: astore_1
    //   382: iload_3
    //   383: istore_2
    //   384: aload 10
    //   386: astore 7
    //   388: goto -88 -> 300
    //   391: astore_0
    //   392: aload 5
    //   394: astore_1
    //   395: aload 8
    //   397: invokestatic 166	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   400: aload_1
    //   401: invokestatic 170	com/facebook/internal/Utility:disconnectQuietly	(Ljava/net/URLConnection;)V
    //   404: aload_0
    //   405: athrow
    //   406: aload 6
    //   408: astore 7
    //   410: aload 6
    //   412: astore 8
    //   414: aload 11
    //   416: aload_1
    //   417: getstatic 227	com/facebook/R$string:com_facebook_image_download_unknown_error	I
    //   420: invokevirtual 233	android/content/Context:getString	(I)Ljava/lang/String;
    //   423: invokevirtual 236	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: pop
    //   427: goto -66 -> 361
    //   430: astore_0
    //   431: aconst_null
    //   432: astore_1
    //   433: goto -38 -> 395
    //   436: astore_0
    //   437: aload 5
    //   439: astore_1
    //   440: goto -45 -> 395
    //   443: astore_1
    //   444: aconst_null
    //   445: astore 6
    //   447: aconst_null
    //   448: astore 5
    //   450: goto -256 -> 194
    //   453: astore_1
    //   454: aconst_null
    //   455: astore 6
    //   457: goto -263 -> 194
    //   460: astore_1
    //   461: aconst_null
    //   462: astore 6
    //   464: iconst_0
    //   465: istore_2
    //   466: goto -272 -> 194
    //   469: iconst_0
    //   470: istore_2
    //   471: aconst_null
    //   472: astore_1
    //   473: aconst_null
    //   474: astore 6
    //   476: aload 10
    //   478: astore 7
    //   480: goto -180 -> 300
    //   483: goto -403 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	486	0	paramRequestKey	RequestKey
    //   0	486	1	paramContext	Context
    //   12	459	2	i	int
    //   10	373	3	j	int
    //   160	21	4	k	int
    //   33	416	5	localHttpURLConnection	java.net.HttpURLConnection
    //   85	390	6	localObject1	Object
    //   89	390	7	localObject2	Object
    //   4	409	8	localObject3	Object
    //   7	198	9	localObject4	Object
    //   1	476	10	localObject5	Object
    //   102	313	11	localStringBuilder	StringBuilder
    //   140	38	12	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   95	104	189	java/io/IOException
    //   117	127	189	java/io/IOException
    //   135	142	189	java/io/IOException
    //   150	162	189	java/io/IOException
    //   175	186	189	java/io/IOException
    //   329	335	189	java/io/IOException
    //   357	361	189	java/io/IOException
    //   369	382	189	java/io/IOException
    //   414	427	189	java/io/IOException
    //   95	104	391	finally
    //   117	127	391	finally
    //   135	142	391	finally
    //   150	162	391	finally
    //   175	186	391	finally
    //   329	335	391	finally
    //   357	361	391	finally
    //   369	382	391	finally
    //   414	427	391	finally
    //   13	35	430	finally
    //   35	80	436	finally
    //   80	87	436	finally
    //   221	255	436	finally
    //   260	289	436	finally
    //   313	321	436	finally
    //   13	35	443	java/io/IOException
    //   35	80	453	java/io/IOException
    //   80	87	453	java/io/IOException
    //   313	321	453	java/io/IOException
    //   221	255	460	java/io/IOException
    //   260	289	460	java/io/IOException
  }
  
  public static void downloadAsync(ImageRequest paramImageRequest)
  {
    if (paramImageRequest == null) {
      return;
    }
    RequestKey localRequestKey = new RequestKey(paramImageRequest.getImageUri(), paramImageRequest.getCallerTag());
    for (;;)
    {
      synchronized (pendingRequests)
      {
        DownloaderContext localDownloaderContext = (DownloaderContext)pendingRequests.get(localRequestKey);
        if (localDownloaderContext != null)
        {
          request = paramImageRequest;
          isCancelled = false;
          workItem.moveToFront();
          return;
        }
      }
      enqueueCacheRead(paramImageRequest, localRequestKey, paramImageRequest.isCachedRedirectAllowed());
    }
  }
  
  private static void enqueueCacheRead(ImageRequest paramImageRequest, RequestKey paramRequestKey, boolean paramBoolean)
  {
    enqueueRequest(paramImageRequest, paramRequestKey, cacheReadQueue, new CacheReadWorkItem(paramImageRequest.getContext(), paramRequestKey, paramBoolean));
  }
  
  private static void enqueueDownload(ImageRequest paramImageRequest, RequestKey paramRequestKey)
  {
    enqueueRequest(paramImageRequest, paramRequestKey, downloadQueue, new DownloadImageWorkItem(paramImageRequest.getContext(), paramRequestKey));
  }
  
  private static void enqueueRequest(ImageRequest paramImageRequest, RequestKey paramRequestKey, WorkQueue paramWorkQueue, Runnable paramRunnable)
  {
    synchronized (pendingRequests)
    {
      DownloaderContext localDownloaderContext = new DownloaderContext(null);
      request = paramImageRequest;
      pendingRequests.put(paramRequestKey, localDownloaderContext);
      workItem = paramWorkQueue.addActiveWorkItem(paramRunnable);
      return;
    }
  }
  
  private static Handler getHandler()
  {
    try
    {
      if (handler == null) {
        handler = new Handler(Looper.getMainLooper());
      }
      Handler localHandler = handler;
      return localHandler;
    }
    finally {}
  }
  
  private static void issueResponse(RequestKey paramRequestKey, final Exception paramException, final Bitmap paramBitmap, final boolean paramBoolean)
  {
    paramRequestKey = removePendingRequest(paramRequestKey);
    if ((paramRequestKey != null) && (!isCancelled))
    {
      paramRequestKey = request;
      final ImageRequest.Callback localCallback = paramRequestKey.getCallback();
      if (localCallback != null) {
        getHandler().post(new Runnable()
        {
          public final void run()
          {
            ImageResponse localImageResponse = new ImageResponse(val$request, paramException, paramBoolean, paramBitmap);
            localCallback.onCompleted(localImageResponse);
          }
        });
      }
    }
  }
  
  public static void prioritizeRequest(ImageRequest arg0)
  {
    Object localObject1 = new RequestKey(???.getImageUri(), ???.getCallerTag());
    synchronized (pendingRequests)
    {
      localObject1 = (DownloaderContext)pendingRequests.get(localObject1);
      if (localObject1 != null) {
        workItem.moveToFront();
      }
      return;
    }
  }
  
  private static void readFromCache(RequestKey paramRequestKey, Context paramContext, boolean paramBoolean)
  {
    boolean bool = false;
    Object localObject;
    if (paramBoolean)
    {
      localObject = UrlRedirectCache.getRedirectedUri(uri);
      if (localObject != null)
      {
        localObject = ImageResponseCache.getCachedImageStream((Uri)localObject, paramContext);
        paramBoolean = bool;
        if (localObject != null) {
          paramBoolean = true;
        }
      }
    }
    for (;;)
    {
      if (!paramBoolean) {
        localObject = ImageResponseCache.getCachedImageStream(uri, paramContext);
      }
      if (localObject != null)
      {
        paramContext = BitmapFactory.decodeStream((InputStream)localObject);
        Utility.closeQuietly((Closeable)localObject);
        issueResponse(paramRequestKey, null, paramContext, paramBoolean);
      }
      do
      {
        return;
        paramContext = removePendingRequest(paramRequestKey);
      } while ((paramContext == null) || (isCancelled));
      enqueueDownload(request, paramRequestKey);
      return;
      paramBoolean = false;
      localObject = null;
    }
  }
  
  private static DownloaderContext removePendingRequest(RequestKey paramRequestKey)
  {
    synchronized (pendingRequests)
    {
      paramRequestKey = (DownloaderContext)pendingRequests.remove(paramRequestKey);
      return paramRequestKey;
    }
  }
  
  private static class CacheReadWorkItem
    implements Runnable
  {
    private boolean allowCachedRedirects;
    private Context context;
    private ImageDownloader.RequestKey key;
    
    CacheReadWorkItem(Context paramContext, ImageDownloader.RequestKey paramRequestKey, boolean paramBoolean)
    {
      context = paramContext;
      key = paramRequestKey;
      allowCachedRedirects = paramBoolean;
    }
    
    public void run()
    {
      ImageDownloader.readFromCache(key, context, allowCachedRedirects);
    }
  }
  
  private static class DownloadImageWorkItem
    implements Runnable
  {
    private Context context;
    private ImageDownloader.RequestKey key;
    
    DownloadImageWorkItem(Context paramContext, ImageDownloader.RequestKey paramRequestKey)
    {
      context = paramContext;
      key = paramRequestKey;
    }
    
    public void run()
    {
      ImageDownloader.download(key, context);
    }
  }
  
  private static class DownloaderContext
  {
    boolean isCancelled;
    ImageRequest request;
    WorkQueue.WorkItem workItem;
  }
  
  private static class RequestKey
  {
    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    Object tag;
    Uri uri;
    
    RequestKey(Uri paramUri, Object paramObject)
    {
      uri = paramUri;
      tag = paramObject;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if (paramObject != null)
      {
        bool1 = bool2;
        if ((paramObject instanceof RequestKey))
        {
          paramObject = (RequestKey)paramObject;
          bool1 = bool2;
          if (uri == uri)
          {
            bool1 = bool2;
            if (tag == tag) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      return (uri.hashCode() + 1073) * 37 + tag.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ImageDownloader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */