package com.cbs.app.inappbilling.IABUtils;

public class Base64
{
  private static final byte[] b;
  private static final byte[] c;
  private static final byte[] d;
  private static final byte[] e;
  
  static
  {
    if (!Base64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
      c = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
      d = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
      e = new byte[] { -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, 63, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9 };
      return;
    }
  }
  
  private static int a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt, byte[] paramArrayOfByte3)
  {
    if (paramArrayOfByte1[2] == 61)
    {
      paramArrayOfByte2[paramInt] = ((byte)((paramArrayOfByte3[paramArrayOfByte1[0]] << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[1]] << 24 >>> 12) >>> 16));
      return 1;
    }
    if (paramArrayOfByte1[3] == 61)
    {
      i = paramArrayOfByte3[paramArrayOfByte1[0]];
      i = paramArrayOfByte3[paramArrayOfByte1[1]] << 24 >>> 12 | i << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[2]] << 24 >>> 18;
      paramArrayOfByte2[paramInt] = ((byte)(i >>> 16));
      paramArrayOfByte2[(paramInt + 1)] = ((byte)(i >>> 8));
      return 2;
    }
    int i = paramArrayOfByte3[paramArrayOfByte1[0]];
    i = paramArrayOfByte3[paramArrayOfByte1[1]] << 24 >>> 12 | i << 24 >>> 6 | paramArrayOfByte3[paramArrayOfByte1[2]] << 24 >>> 18 | paramArrayOfByte3[paramArrayOfByte1[3]] << 24 >>> 24;
    paramArrayOfByte2[paramInt] = ((byte)(i >> 16));
    paramArrayOfByte2[(paramInt + 1)] = ((byte)(i >> 8));
    paramArrayOfByte2[(paramInt + 2)] = ((byte)i);
    return 3;
  }
  
  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte1 = paramString.getBytes();
    int i1 = arrayOfByte1.length;
    byte[] arrayOfByte2 = d;
    paramString = new byte[i1 * 3 / 4 + 2];
    byte[] arrayOfByte3 = new byte[4];
    int m = 0;
    int k = 0;
    int j = 0;
    int n;
    if (m < i1)
    {
      int i = (byte)(arrayOfByte1[(m + 0)] & 0x7F);
      n = arrayOfByte2[i];
      if (n >= -5)
      {
        if (n < -1) {
          break label391;
        }
        if (i == 61)
        {
          n = i1 - m;
          int i2 = (byte)(arrayOfByte1[(i1 - 1 + 0)] & 0x7F);
          if ((k == 0) || (k == 1)) {
            throw new Base64DecoderException("invalid padding byte '=' at byte offset " + m);
          }
          if (((k == 3) && (n > 2)) || ((k == 4) && (n > 1))) {
            throw new Base64DecoderException("padding byte '=' falsely signals end of encoded value at offset " + m);
          }
          if ((i2 == 61) || (i2 == 10)) {
            break label306;
          }
          throw new Base64DecoderException("encoded value has invalid trailing byte");
        }
        n = k + 1;
        arrayOfByte3[k] = i;
        if (n != 4) {
          break label383;
        }
        k = a(arrayOfByte3, paramString, j, arrayOfByte2) + j;
        j = 0;
      }
    }
    for (;;)
    {
      n = m + 1;
      m = k;
      k = j;
      j = m;
      m = n;
      break;
      throw new Base64DecoderException("Bad Base64 input character at " + m + ": " + arrayOfByte1[(m + 0)] + "(decimal)");
      label306:
      m = j;
      if (k != 0)
      {
        if (k == 1) {
          throw new Base64DecoderException("single trailing character at offset " + (i1 - 1));
        }
        arrayOfByte3[k] = 61;
        m = j + a(arrayOfByte3, paramString, j, arrayOfByte2);
      }
      arrayOfByte1 = new byte[m];
      System.arraycopy(paramString, 0, arrayOfByte1, 0, m);
      return arrayOfByte1;
      label383:
      k = j;
      j = n;
      continue;
      label391:
      n = j;
      j = k;
      k = n;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.Base64
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */