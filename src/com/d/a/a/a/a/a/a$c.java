package com.d.a.a.a.a.a;

import java.io.Closeable;
import java.io.File;
import java.io.InputStream;

public final class a$c
  implements Closeable
{
  private final String b;
  private final long c;
  private File[] d;
  private final InputStream[] e;
  private final long[] f;
  
  private a$c(a parama, String paramString, long paramLong, File[] paramArrayOfFile, InputStream[] paramArrayOfInputStream, long[] paramArrayOfLong)
  {
    b = paramString;
    c = paramLong;
    d = paramArrayOfFile;
    e = paramArrayOfInputStream;
    f = paramArrayOfLong;
  }
  
  public final File a()
  {
    return d[0];
  }
  
  public final void close()
  {
    InputStream[] arrayOfInputStream = e;
    int j = arrayOfInputStream.length;
    int i = 0;
    while (i < j)
    {
      d.a(arrayOfInputStream[i]);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */