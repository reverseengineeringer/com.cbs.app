package com.a.c.a;

import java.io.IOException;

public final class a
{
  private final byte[] a;
  private final int b;
  private int c;
  
  private a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a = paramArrayOfByte;
    c = 0;
    b = (paramInt2 + 0);
  }
  
  public static a a(byte[] paramArrayOfByte, int paramInt)
  {
    return new a(paramArrayOfByte, 0, paramInt);
  }
  
  public final int a()
  {
    return b - c;
  }
  
  public final void a(int paramInt)
  {
    int i = (byte)paramInt;
    if (c == b) {
      throw new a(c, b);
    }
    byte[] arrayOfByte = a;
    paramInt = c;
    c = (paramInt + 1);
    arrayOfByte[paramInt] = i;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    b(b.a(paramInt1, paramInt2));
  }
  
  public final void b(int paramInt)
  {
    for (;;)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        a(paramInt);
        return;
      }
      a(paramInt & 0x7F | 0x80);
      paramInt >>>= 7;
    }
  }
  
  public final void b(byte[] paramArrayOfByte, int paramInt)
  {
    if (b - c >= paramInt)
    {
      System.arraycopy(paramArrayOfByte, 0, a, c, paramInt);
      c += paramInt;
      return;
    }
    throw new a(c, b);
  }
  
  public static final class a
    extends IOException
  {
    a(int paramInt1, int paramInt2)
    {
      super();
    }
  }
}

/* Location:
 * Qualified Name:     com.a.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */