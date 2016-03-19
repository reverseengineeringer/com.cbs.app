package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.OutputStream;

class UrlRedirectCache
{
  private static final String REDIRECT_CONTENT_TAG = TAG + "_Redirect";
  static final String TAG = UrlRedirectCache.class.getSimpleName();
  private static volatile FileLruCache urlRedirectCache;
  
  static void cacheUriRedirect(Uri paramUri1, Uri paramUri2)
  {
    if ((paramUri1 == null) || (paramUri2 == null)) {
      return;
    }
    localUri = null;
    try
    {
      paramUri1 = getCache().openPutStream(paramUri1.toString(), REDIRECT_CONTENT_TAG);
      localUri = paramUri1;
      Utility.closeQuietly(localUri);
    }
    catch (IOException paramUri1)
    {
      try
      {
        paramUri1.write(paramUri2.toString().getBytes());
        Utility.closeQuietly(paramUri1);
        return;
      }
      finally
      {
        localUri = paramUri1;
      }
      paramUri1 = paramUri1;
      Utility.closeQuietly(localUri);
      return;
    }
    finally
    {
      paramUri1 = finally;
      localUri = null;
      paramUri2 = paramUri1;
    }
    throw paramUri2;
  }
  
  static void clearCache()
  {
    try
    {
      getCache().clearCache();
      return;
    }
    catch (IOException localIOException)
    {
      Logger.log(LoggingBehavior.CACHE, 5, TAG, "clearCache failed " + localIOException.getMessage());
    }
  }
  
  static FileLruCache getCache()
  {
    try
    {
      if (urlRedirectCache == null) {
        urlRedirectCache = new FileLruCache(TAG, new FileLruCache.Limits());
      }
      FileLruCache localFileLruCache = urlRedirectCache;
      return localFileLruCache;
    }
    finally {}
  }
  
  /* Error */
  static Uri getRedirectedUri(Uri paramUri)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: aload_0
    //   9: invokevirtual 48	android/net/Uri:toString	()Ljava/lang/String;
    //   12: astore_2
    //   13: invokestatic 45	com/facebook/internal/UrlRedirectCache:getCache	()Lcom/facebook/internal/FileLruCache;
    //   16: astore 4
    //   18: aconst_null
    //   19: astore_0
    //   20: aload 4
    //   22: aload_2
    //   23: getstatic 35	com/facebook/internal/UrlRedirectCache:REDIRECT_CONTENT_TAG	Ljava/lang/String;
    //   26: invokevirtual 109	com/facebook/internal/FileLruCache:get	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnull +76 -> 107
    //   34: new 111	java/io/InputStreamReader
    //   37: dup
    //   38: aload_3
    //   39: invokespecial 114	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   42: astore_2
    //   43: sipush 128
    //   46: newarray <illegal type>
    //   48: astore_0
    //   49: new 21	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 24	java/lang/StringBuilder:<init>	()V
    //   56: astore_3
    //   57: aload_2
    //   58: aload_0
    //   59: iconst_0
    //   60: sipush 128
    //   63: invokevirtual 118	java/io/InputStreamReader:read	([CII)I
    //   66: istore_1
    //   67: iload_1
    //   68: ifle +21 -> 89
    //   71: aload_3
    //   72: aload_0
    //   73: iconst_0
    //   74: iload_1
    //   75: invokevirtual 121	java/lang/StringBuilder:append	([CII)Ljava/lang/StringBuilder;
    //   78: pop
    //   79: goto -22 -> 57
    //   82: astore_0
    //   83: aload_2
    //   84: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   87: aconst_null
    //   88: areturn
    //   89: aload_2
    //   90: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   93: aload_3
    //   94: invokevirtual 33	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   97: astore_3
    //   98: aload_2
    //   99: astore_0
    //   100: iconst_1
    //   101: istore_1
    //   102: aload_3
    //   103: astore_2
    //   104: goto -84 -> 20
    //   107: iload_1
    //   108: ifeq +14 -> 122
    //   111: aload_2
    //   112: invokestatic 125	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   115: astore_2
    //   116: aload_0
    //   117: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   120: aload_2
    //   121: areturn
    //   122: aload_0
    //   123: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   126: aconst_null
    //   127: areturn
    //   128: astore_0
    //   129: aconst_null
    //   130: astore_2
    //   131: aload_2
    //   132: invokestatic 72	com/facebook/internal/Utility:closeQuietly	(Ljava/io/Closeable;)V
    //   135: aload_0
    //   136: athrow
    //   137: astore_0
    //   138: goto -7 -> 131
    //   141: astore_3
    //   142: aload_0
    //   143: astore_2
    //   144: aload_3
    //   145: astore_0
    //   146: goto -15 -> 131
    //   149: astore_0
    //   150: aconst_null
    //   151: astore_2
    //   152: goto -69 -> 83
    //   155: astore_2
    //   156: aload_0
    //   157: astore_2
    //   158: goto -75 -> 83
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	paramUri	Uri
    //   1	107	1	i	int
    //   12	140	2	localObject1	Object
    //   155	1	2	localIOException	IOException
    //   157	1	2	localUri	Uri
    //   29	74	3	localObject2	Object
    //   141	4	3	localObject3	Object
    //   16	5	4	localFileLruCache	FileLruCache
    // Exception table:
    //   from	to	target	type
    //   43	57	82	java/io/IOException
    //   57	67	82	java/io/IOException
    //   71	79	82	java/io/IOException
    //   89	98	82	java/io/IOException
    //   13	18	128	finally
    //   43	57	137	finally
    //   57	67	137	finally
    //   71	79	137	finally
    //   89	98	137	finally
    //   20	30	141	finally
    //   34	43	141	finally
    //   111	116	141	finally
    //   13	18	149	java/io/IOException
    //   20	30	155	java/io/IOException
    //   34	43	155	java/io/IOException
    //   111	116	155	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.UrlRedirectCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */