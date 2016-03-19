package com.d.a.a.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.d.a.c.b.a;
import com.d.a.c.c;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public final class b
  implements com.d.a.a.a.b
{
  public static final Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  protected a b;
  protected final com.d.a.a.a.b.a c;
  protected int d = 32768;
  protected Bitmap.CompressFormat e = a;
  protected int f = 100;
  private File g;
  
  public b(File paramFile1, File paramFile2, com.d.a.a.a.b.a parama, long paramLong, int paramInt)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("cacheDir argument must be not null");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
    }
    if (paramInt < 0) {
      throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
    }
    if (parama == null) {
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    }
    if (paramLong == 0L) {
      paramLong = Long.MAX_VALUE;
    }
    for (;;)
    {
      if (paramInt == 0) {
        paramInt = Integer.MAX_VALUE;
      }
      for (;;)
      {
        g = paramFile2;
        c = parama;
        a(paramFile1, paramFile2, paramLong, paramInt);
        return;
      }
    }
  }
  
  private void a(File paramFile1, File paramFile2, long paramLong, int paramInt)
  {
    try
    {
      b = a.a(paramFile1, paramLong, paramInt);
      return;
    }
    catch (IOException paramFile1)
    {
      do
      {
        c.a(paramFile1);
        if (paramFile2 != null) {
          a(paramFile2, null, paramLong, paramInt);
        }
      } while (b != null);
      throw paramFile1;
    }
  }
  
  private String b(String paramString)
  {
    return c.a(paramString);
  }
  
  /* Error */
  public final File a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 71	com/d/a/a/a/a/a/b:b	Lcom/d/a/a/a/a/a/a;
    //   9: aload_0
    //   10: aload_1
    //   11: invokespecial 84	com/d/a/a/a/a/a/b:b	(Ljava/lang/String;)Ljava/lang/String;
    //   14: invokevirtual 87	com/d/a/a/a/a/a/a:a	(Ljava/lang/String;)Lcom/d/a/a/a/a/a/a$c;
    //   17: astore_1
    //   18: aload_1
    //   19: ifnonnull +17 -> 36
    //   22: aload_2
    //   23: astore_3
    //   24: aload_1
    //   25: ifnull +9 -> 34
    //   28: aload_1
    //   29: invokevirtual 92	com/d/a/a/a/a/a/a$c:close	()V
    //   32: aload_2
    //   33: astore_3
    //   34: aload_3
    //   35: areturn
    //   36: aload_1
    //   37: astore_2
    //   38: aload_1
    //   39: invokevirtual 95	com/d/a/a/a/a/a/a$c:a	()Ljava/io/File;
    //   42: astore_3
    //   43: aload_3
    //   44: astore_2
    //   45: goto -23 -> 22
    //   48: astore_3
    //   49: aconst_null
    //   50: astore_1
    //   51: aload_1
    //   52: astore_2
    //   53: aload_3
    //   54: invokestatic 76	com/d/a/c/c:a	(Ljava/lang/Throwable;)V
    //   57: aload 4
    //   59: astore_3
    //   60: aload_1
    //   61: ifnull -27 -> 34
    //   64: aload_1
    //   65: invokevirtual 92	com/d/a/a/a/a/a/a$c:close	()V
    //   68: aconst_null
    //   69: areturn
    //   70: astore_1
    //   71: aconst_null
    //   72: astore_2
    //   73: aload_2
    //   74: ifnull +7 -> 81
    //   77: aload_2
    //   78: invokevirtual 92	com/d/a/a/a/a/a/a$c:close	()V
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: goto -11 -> 73
    //   87: astore_3
    //   88: goto -37 -> 51
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	91	0	this	b
    //   0	91	1	paramString	String
    //   4	74	2	localObject1	Object
    //   23	21	3	localObject2	Object
    //   48	6	3	localIOException1	IOException
    //   59	1	3	localObject3	Object
    //   87	1	3	localIOException2	IOException
    //   1	57	4	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   5	18	48	java/io/IOException
    //   5	18	70	finally
    //   38	43	83	finally
    //   53	57	83	finally
    //   38	43	87	java/io/IOException
  }
  
  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    a.a locala = b.b(b(paramString));
    if (locala == null) {
      return false;
    }
    paramString = new BufferedOutputStream(locala.a(), d);
    boolean bool;
    try
    {
      bool = paramBitmap.compress(e, f, paramString);
      com.d.a.c.b.a(paramString);
      if (bool)
      {
        locala.b();
        return bool;
      }
    }
    finally
    {
      com.d.a.c.b.a(paramString);
    }
    locala.c();
    return bool;
  }
  
  public final boolean a(String paramString, InputStream paramInputStream, b.a parama)
  {
    paramString = b.b(b(paramString));
    if (paramString == null) {
      return false;
    }
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(paramString.a(), d);
    try
    {
      boolean bool = com.d.a.c.b.a(paramInputStream, localBufferedOutputStream, parama, d);
      com.d.a.c.b.a(localBufferedOutputStream);
      if (bool)
      {
        paramString.b();
        return bool;
      }
      paramString.c();
      return bool;
    }
    finally
    {
      com.d.a.c.b.a(localBufferedOutputStream);
      paramString.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */