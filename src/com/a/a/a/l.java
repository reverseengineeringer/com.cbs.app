package com.a.a.a;

import com.a.c.a.a;
import java.io.IOException;

final class l
  implements j
{
  private a a;
  private byte[] b;
  private final int c = 239;
  
  public l()
  {
    a();
  }
  
  public final void a()
  {
    b = new byte[c];
    byte[] arrayOfByte = b;
    a = a.a(arrayOfByte, arrayOfByte.length);
  }
  
  public final void a(int paramInt, long paramLong)
  {
    a locala = a;
    locala.a(paramInt, 0);
    for (;;)
    {
      if ((0xFFFFFFFFFFFFFF80 & paramLong) == 0L)
      {
        locala.a((int)paramLong);
        return;
      }
      locala.a((int)paramLong & 0x7F | 0x80);
      paramLong >>>= 7;
    }
  }
  
  public final void a(int paramInt, String paramString)
  {
    a locala = a;
    locala.a(paramInt, 2);
    paramString = paramString.getBytes("UTF-8");
    locala.b(paramString.length);
    locala.b(paramString, paramString.length);
  }
  
  public final byte[] b()
  {
    int i = a.a();
    if (i < 0) {
      throw new IOException();
    }
    if (i == 0) {
      return b;
    }
    byte[] arrayOfByte = new byte[b.length - i];
    System.arraycopy(b, 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.a.a.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */