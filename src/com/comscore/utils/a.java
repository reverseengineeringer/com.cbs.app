package com.comscore.utils;

public final class a
{
  private static char[] a;
  private static byte[] b;
  
  static
  {
    int m = 0;
    a = new char[64];
    int i = 65;
    int j = 0;
    while (i <= 90)
    {
      a[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 97;
    while (i <= 122)
    {
      a[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    i = 48;
    while (i <= 57)
    {
      a[j] = i;
      i = (char)(i + 1);
      j += 1;
    }
    a[j] = '+';
    a[(j + 1)] = '/';
    b = new byte[''];
    j = 0;
    int k;
    for (;;)
    {
      k = m;
      if (j >= b.length) {
        break;
      }
      b[j] = -1;
      j += 1;
    }
    while (k < 64)
    {
      b[a[k]] = ((byte)k);
      k += 1;
    }
  }
  
  public static char[] a(byte[] paramArrayOfByte)
  {
    int i2 = paramArrayOfByte.length;
    int i3 = (i2 * 4 + 2) / 3;
    char[] arrayOfChar = new char[(i2 + 2) / 3 * 4];
    int k = 0;
    int j = 0;
    if (j < i2)
    {
      int m = j + 1;
      int i4 = paramArrayOfByte[j] & 0xFF;
      int n;
      if (m < i2)
      {
        j = paramArrayOfByte[m] & 0xFF;
        n = m + 1;
        m = j;
        j = n;
        label78:
        if (j >= i2) {
          break label221;
        }
        n = j + 1;
        int i1 = paramArrayOfByte[j] & 0xFF;
        j = n;
        n = i1;
        label105:
        i1 = k + 1;
        arrayOfChar[k] = a[(i4 >>> 2)];
        k = i1 + 1;
        arrayOfChar[i1] = a[((i4 & 0x3) << 4 | m >>> 4)];
        if (k >= i3) {
          break label227;
        }
        i = a[((m & 0xF) << 2 | n >>> 6)];
        label171:
        arrayOfChar[k] = i;
        k += 1;
        if (k >= i3) {
          break label233;
        }
      }
      label221:
      label227:
      label233:
      for (int i = a[(n & 0x3F)];; i = 61)
      {
        arrayOfChar[k] = i;
        k += 1;
        break;
        n = 0;
        j = m;
        m = n;
        break label78;
        n = 0;
        break label105;
        i = 61;
        break label171;
      }
    }
    return arrayOfChar;
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */