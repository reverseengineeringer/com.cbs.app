package com.d.a.a.a.a;

import android.graphics.Bitmap;
import com.d.a.c.b.a;
import java.io.File;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class b
  extends a
{
  private final long h = 432000000L;
  private final Map<File, Long> i = Collections.synchronizedMap(new HashMap());
  
  public b(File paramFile)
  {
    this(paramFile, new com.d.a.a.a.b.b(), 432000L);
  }
  
  private b(File paramFile, com.d.a.a.a.b.a parama, long paramLong)
  {
    super(paramFile, null, parama);
  }
  
  private void c(String paramString)
  {
    paramString = b(paramString);
    long l = System.currentTimeMillis();
    paramString.setLastModified(l);
    i.put(paramString, Long.valueOf(l));
  }
  
  public final File a(String paramString)
  {
    File localFile = super.a(paramString);
    int j;
    if ((localFile != null) && (localFile.exists()))
    {
      paramString = (Long)i.get(localFile);
      if (paramString != null) {
        break label79;
      }
      j = 0;
      paramString = Long.valueOf(localFile.lastModified());
      if (System.currentTimeMillis() - paramString.longValue() <= h) {
        break label84;
      }
      localFile.delete();
      i.remove(localFile);
    }
    label79:
    label84:
    while (j != 0)
    {
      return localFile;
      j = 1;
      break;
    }
    i.put(localFile, paramString);
    return localFile;
  }
  
  public final boolean a(String paramString, Bitmap paramBitmap)
  {
    boolean bool = super.a(paramString, paramBitmap);
    c(paramString);
    return bool;
  }
  
  public final boolean a(String paramString, InputStream paramInputStream, b.a parama)
  {
    boolean bool = super.a(paramString, paramInputStream, parama);
    c(paramString);
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */