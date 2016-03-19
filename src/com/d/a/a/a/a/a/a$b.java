package com.d.a.a.a.a.a;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;

final class a$b
{
  private final String b;
  private final long[] c;
  private boolean d;
  private a.a e;
  private long f;
  
  private a$b(a parama, String paramString)
  {
    b = paramString;
    c = new long[a.g(parama)];
  }
  
  private static IOException a(String[] paramArrayOfString)
  {
    throw new IOException("unexpected journal line: " + Arrays.toString(paramArrayOfString));
  }
  
  public final File a(int paramInt)
  {
    return new File(a.h(a), b + "." + paramInt);
  }
  
  public final String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long[] arrayOfLong = c;
    int j = arrayOfLong.length;
    int i = 0;
    while (i < j)
    {
      long l = arrayOfLong[i];
      localStringBuilder.append(' ').append(l);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public final File b(int paramInt)
  {
    return new File(a.h(a), b + "." + paramInt + ".tmp");
  }
}

/* Location:
 * Qualified Name:     com.d.a.a.a.a.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */