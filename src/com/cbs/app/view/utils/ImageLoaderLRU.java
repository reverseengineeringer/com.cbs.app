package com.cbs.app.view.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory.Options;
import android.os.Handler;
import android.util.LruCache;
import com.cbs.app.view.ThumbNailView;

public class ImageLoaderLRU
{
  private static LruCache<String, Bitmap> a;
  
  public ImageLoaderLRU()
  {
    if (a == null) {
      a = new LruCache((int)(Runtime.getRuntime().maxMemory() / 1024L) / 6) {};
    }
  }
  
  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int k = outHeight;
    int m = outWidth;
    int j = 1;
    int i = 1;
    if ((k > paramInt2) || (m > paramInt1))
    {
      k /= 2;
      m /= 2;
      for (;;)
      {
        j = i;
        if (k / i <= paramInt2) {
          break;
        }
        j = i;
        if (m / i <= paramInt1) {
          break;
        }
        i *= 2;
      }
    }
    return j;
  }
  
  /* Error */
  private static Bitmap a(String paramString, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 38	android/graphics/BitmapFactory$Options
    //   5: dup
    //   6: invokespecial 52	android/graphics/BitmapFactory$Options:<init>	()V
    //   9: astore 4
    //   11: aload 4
    //   13: bipush 100
    //   15: putfield 42	android/graphics/BitmapFactory$Options:outHeight	I
    //   18: aload 4
    //   20: sipush 180
    //   23: putfield 45	android/graphics/BitmapFactory$Options:outWidth	I
    //   26: new 54	java/net/URL
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 57	java/net/URL:<init>	(Ljava/lang/String;)V
    //   34: invokevirtual 61	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   37: checkcast 63	java/net/HttpURLConnection
    //   40: astore_0
    //   41: aload_0
    //   42: ldc 65
    //   44: invokevirtual 68	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: invokevirtual 71	java/net/HttpURLConnection:connect	()V
    //   51: aload_0
    //   52: invokevirtual 75	java/net/HttpURLConnection:getResponseCode	()I
    //   55: sipush 200
    //   58: if_icmpne +108 -> 166
    //   61: aload_0
    //   62: invokevirtual 79	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   65: astore_0
    //   66: aload_0
    //   67: ifnull +36 -> 103
    //   70: aload 4
    //   72: aload 4
    //   74: iload_1
    //   75: iload_2
    //   76: invokestatic 81	com/cbs/app/view/utils/ImageLoaderLRU:a	(Landroid/graphics/BitmapFactory$Options;II)I
    //   79: putfield 84	android/graphics/BitmapFactory$Options:inSampleSize	I
    //   82: aload 4
    //   84: iconst_0
    //   85: putfield 88	android/graphics/BitmapFactory$Options:inJustDecodeBounds	Z
    //   88: aload_0
    //   89: invokestatic 94	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    //   92: astore_3
    //   93: aload_0
    //   94: ifnull +7 -> 101
    //   97: aload_0
    //   98: invokevirtual 99	java/io/InputStream:close	()V
    //   101: aload_3
    //   102: areturn
    //   103: aload_0
    //   104: ifnull +7 -> 111
    //   107: aload_0
    //   108: invokevirtual 99	java/io/InputStream:close	()V
    //   111: aconst_null
    //   112: areturn
    //   113: astore_0
    //   114: aconst_null
    //   115: astore_0
    //   116: aload_0
    //   117: ifnull +7 -> 124
    //   120: aload_0
    //   121: invokevirtual 99	java/io/InputStream:close	()V
    //   124: aconst_null
    //   125: areturn
    //   126: astore_0
    //   127: aload_3
    //   128: ifnull +7 -> 135
    //   131: aload_3
    //   132: invokevirtual 99	java/io/InputStream:close	()V
    //   135: aload_0
    //   136: athrow
    //   137: astore_0
    //   138: goto -27 -> 111
    //   141: astore_0
    //   142: aload_3
    //   143: areturn
    //   144: astore_0
    //   145: goto -21 -> 124
    //   148: astore_3
    //   149: goto -14 -> 135
    //   152: astore 4
    //   154: aload_0
    //   155: astore_3
    //   156: aload 4
    //   158: astore_0
    //   159: goto -32 -> 127
    //   162: astore_3
    //   163: goto -47 -> 116
    //   166: aconst_null
    //   167: astore_0
    //   168: goto -102 -> 66
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	171	0	paramString	String
    //   0	171	1	paramInt1	int
    //   0	171	2	paramInt2	int
    //   1	142	3	localBitmap	Bitmap
    //   148	1	3	localIOException1	java.io.IOException
    //   155	1	3	str	String
    //   162	1	3	localIOException2	java.io.IOException
    //   9	74	4	localOptions	BitmapFactory.Options
    //   152	5	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   26	66	113	java/io/IOException
    //   26	66	126	finally
    //   107	111	137	java/io/IOException
    //   97	101	141	java/io/IOException
    //   120	124	144	java/io/IOException
    //   131	135	148	java/io/IOException
    //   70	93	152	finally
    //   70	93	162	java/io/IOException
  }
  
  public final void a(final ThumbNailView paramThumbNailView, final String paramString, final int paramInt)
  {
    Bitmap localBitmap = (Bitmap)a.get(paramString);
    if (localBitmap != null)
    {
      paramThumbNailView.setBitmap(localBitmap);
      return;
    }
    paramThumbNailView.setUrl(paramString);
    new Thread(new Runnable()
    {
      public final void run()
      {
        final Bitmap localBitmap = ImageLoaderLRU.a(ImageLoaderLRU.this, paramString, paramInt, paramInt);
        if (localBitmap != null)
        {
          c.post(new Runnable()
          {
            public final void run()
            {
              if ((d != null) && (d.getUrl().equals(a))) {
                d.setBitmap(localBitmap);
              }
            }
          });
          if (paramInt < 1024) {
            ImageLoaderLRU.a().put(paramString, localBitmap);
          }
        }
      }
    }).start();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.utils.ImageLoaderLRU
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */