package com.d.a.a.a.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

public abstract class a
  implements com.d.a.a.a.b
{
  public static final Bitmap.CompressFormat a = Bitmap.CompressFormat.PNG;
  protected final File b;
  protected final File c;
  protected final com.d.a.a.a.b.a d;
  protected int e = 32768;
  protected Bitmap.CompressFormat f = a;
  protected int g = 100;
  
  public a(File paramFile1, File paramFile2, com.d.a.a.a.b.a parama)
  {
    if (paramFile1 == null) {
      throw new IllegalArgumentException("cacheDir argument must be not null");
    }
    if (parama == null) {
      throw new IllegalArgumentException("fileNameGenerator argument must be not null");
    }
    b = paramFile1;
    c = paramFile2;
    d = parama;
  }
  
  public File a(String paramString)
  {
    return b(paramString);
  }
  
  public boolean a(String paramString, Bitmap paramBitmap)
  {
    File localFile = b(paramString);
    paramString = new File(localFile.getAbsolutePath() + ".tmp");
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(paramString), e);
    try
    {
      boolean bool1 = paramBitmap.compress(f, g, localBufferedOutputStream);
      com.d.a.c.b.a(localBufferedOutputStream);
      boolean bool2 = bool1;
      if (bool1)
      {
        bool2 = bool1;
        if (!paramString.renameTo(localFile)) {
          bool2 = false;
        }
      }
      if (!bool2) {
        paramString.delete();
      }
      paramBitmap.recycle();
      return bool2;
    }
    finally
    {
      com.d.a.c.b.a(localBufferedOutputStream);
      paramString.delete();
    }
  }
  
  /* Error */
  public boolean a(String paramString, java.io.InputStream paramInputStream, com.d.a.c.b.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 56	com/d/a/a/a/a/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore 6
    //   7: new 59	java/io/File
    //   10: dup
    //   11: new 61	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   18: aload 6
    //   20: invokevirtual 66	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   23: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: ldc 72
    //   28: invokevirtual 70	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   31: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   34: invokespecial 76	java/io/File:<init>	(Ljava/lang/String;)V
    //   37: astore 7
    //   39: new 78	java/io/BufferedOutputStream
    //   42: dup
    //   43: new 80	java/io/FileOutputStream
    //   46: dup
    //   47: aload 7
    //   49: invokespecial 83	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   52: aload_0
    //   53: getfield 34	com/d/a/a/a/a/a:e	I
    //   56: invokespecial 86	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;I)V
    //   59: astore_1
    //   60: aload_2
    //   61: aload_1
    //   62: aload_3
    //   63: aload_0
    //   64: getfield 34	com/d/a/a/a/a/a:e	I
    //   67: invokestatic 112	com/d/a/c/b:a	(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/d/a/c/b$a;I)Z
    //   70: istore 4
    //   72: aload_1
    //   73: invokestatic 97	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   76: aload_2
    //   77: invokestatic 97	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   80: iload 4
    //   82: istore 5
    //   84: iload 4
    //   86: ifeq +20 -> 106
    //   89: iload 4
    //   91: istore 5
    //   93: aload 7
    //   95: aload 6
    //   97: invokevirtual 101	java/io/File:renameTo	(Ljava/io/File;)Z
    //   100: ifne +6 -> 106
    //   103: iconst_0
    //   104: istore 5
    //   106: iload 5
    //   108: ifne +9 -> 117
    //   111: aload 7
    //   113: invokevirtual 105	java/io/File:delete	()Z
    //   116: pop
    //   117: iload 5
    //   119: ireturn
    //   120: astore_3
    //   121: aload_1
    //   122: invokestatic 97	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   125: aload_3
    //   126: athrow
    //   127: astore_1
    //   128: iconst_0
    //   129: istore 4
    //   131: aload_2
    //   132: invokestatic 97	com/d/a/c/b:a	(Ljava/io/Closeable;)V
    //   135: iload 4
    //   137: istore 5
    //   139: iload 4
    //   141: ifeq +20 -> 161
    //   144: iload 4
    //   146: istore 5
    //   148: aload 7
    //   150: aload 6
    //   152: invokevirtual 101	java/io/File:renameTo	(Ljava/io/File;)Z
    //   155: ifne +6 -> 161
    //   158: iconst_0
    //   159: istore 5
    //   161: iload 5
    //   163: ifne +9 -> 172
    //   166: aload 7
    //   168: invokevirtual 105	java/io/File:delete	()Z
    //   171: pop
    //   172: aload_1
    //   173: athrow
    //   174: astore_1
    //   175: goto -44 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	a
    //   0	178	1	paramString	String
    //   0	178	2	paramInputStream	java.io.InputStream
    //   0	178	3	parama	com.d.a.c.b.a
    //   70	75	4	bool1	boolean
    //   82	80	5	bool2	boolean
    //   5	146	6	localFile1	File
    //   37	130	7	localFile2	File
    // Exception table:
    //   from	to	target	type
    //   60	72	120	finally
    //   39	60	127	finally
    //   121	127	127	finally
    //   72	76	174	finally
  }
  
  protected final File b(String paramString)
  {
    String str = d.a(paramString);
    File localFile = b;
    paramString = localFile;
    if (!b.exists())
    {
      paramString = localFile;
      if (!b.mkdirs())
      {
        paramString = localFile;
        if (c != null) {
          if (!c.exists())
          {
            paramString = localFile;
            if (!c.mkdirs()) {}
          }
          else
          {
            paramString = c;
          }
        }
      }
    }
    return new File(paramString, str);
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */