package com.flurry.sdk;

import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;

public final class az<ObjectType>
  extends ay<ObjectType>
{
  public az(bb<ObjectType> parambb)
  {
    super(parambb);
  }
  
  /* Error */
  public final ObjectType a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ifnull +24 -> 27
    //   6: new 16	java/util/zip/GZIPInputStream
    //   9: dup
    //   10: aload_1
    //   11: invokespecial 19	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   14: astore_2
    //   15: aload_0
    //   16: aload_2
    //   17: invokespecial 21	com/flurry/sdk/ay:a	(Ljava/io/InputStream;)Ljava/lang/Object;
    //   20: astore_1
    //   21: aload_2
    //   22: invokestatic 26	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   25: aload_1
    //   26: astore_2
    //   27: aload_2
    //   28: areturn
    //   29: astore_1
    //   30: aconst_null
    //   31: astore_2
    //   32: aload_2
    //   33: invokestatic 26	com/flurry/sdk/bs:a	(Ljava/io/Closeable;)V
    //   36: aload_1
    //   37: athrow
    //   38: astore_1
    //   39: goto -7 -> 32
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	az
    //   0	42	1	paramInputStream	java.io.InputStream
    //   1	32	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   6	15	29	finally
    //   15	21	38	finally
  }
  
  public final void a(OutputStream paramOutputStream, ObjectType paramObjectType)
  {
    if (paramOutputStream != null) {}
    try
    {
      localGZIPOutputStream = new GZIPOutputStream(paramOutputStream);
      bs.a(paramObjectType);
    }
    finally
    {
      try
      {
        super.a(localGZIPOutputStream, paramObjectType);
        bs.a(localGZIPOutputStream);
        return;
      }
      finally
      {
        GZIPOutputStream localGZIPOutputStream;
        paramObjectType = localGZIPOutputStream;
      }
      paramOutputStream = finally;
      paramObjectType = null;
    }
    throw paramOutputStream;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */