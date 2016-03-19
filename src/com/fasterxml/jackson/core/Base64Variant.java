package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.Serializable;
import java.util.Arrays;

public final class Base64Variant
  implements Serializable
{
  public static final int BASE64_VALUE_INVALID = -1;
  public static final int BASE64_VALUE_PADDING = -2;
  private static final int INT_SPACE = 32;
  static final char PADDING_CHAR_NONE = '\000';
  private static final long serialVersionUID = 1L;
  private final transient int[] _asciiToBase64 = new int[''];
  private final transient byte[] _base64ToAsciiB = new byte[64];
  private final transient char[] _base64ToAsciiC = new char[64];
  protected final transient int _maxLineLength;
  protected final String _name;
  protected final transient char _paddingChar;
  protected final transient boolean _usesPadding;
  
  public Base64Variant(Base64Variant paramBase64Variant, String paramString, int paramInt)
  {
    this(paramBase64Variant, paramString, _usesPadding, _paddingChar, paramInt);
  }
  
  public Base64Variant(Base64Variant paramBase64Variant, String paramString, boolean paramBoolean, char paramChar, int paramInt)
  {
    _name = paramString;
    paramString = _base64ToAsciiB;
    System.arraycopy(paramString, 0, _base64ToAsciiB, 0, paramString.length);
    paramString = _base64ToAsciiC;
    System.arraycopy(paramString, 0, _base64ToAsciiC, 0, paramString.length);
    paramBase64Variant = _asciiToBase64;
    System.arraycopy(paramBase64Variant, 0, _asciiToBase64, 0, paramBase64Variant.length);
    _usesPadding = paramBoolean;
    _paddingChar = paramChar;
    _maxLineLength = paramInt;
  }
  
  public Base64Variant(String paramString1, String paramString2, boolean paramBoolean, char paramChar, int paramInt)
  {
    _name = paramString1;
    _usesPadding = paramBoolean;
    _paddingChar = paramChar;
    _maxLineLength = paramInt;
    int j = paramString2.length();
    if (j != 64) {
      throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + j + ")");
    }
    paramString2.getChars(0, j, _base64ToAsciiC, 0);
    Arrays.fill(_asciiToBase64, -1);
    paramInt = i;
    while (paramInt < j)
    {
      i = _base64ToAsciiC[paramInt];
      _base64ToAsciiB[paramInt] = ((byte)i);
      _asciiToBase64[i] = paramInt;
      paramInt += 1;
    }
    if (paramBoolean) {
      _asciiToBase64[paramChar] = -2;
    }
  }
  
  protected final void _reportBase64EOF()
  {
    throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
  }
  
  protected final void _reportInvalidBase64(char paramChar, int paramInt, String paramString)
  {
    String str1;
    if (paramChar <= ' ') {
      str1 = "Illegal white space character (code 0x" + Integer.toHexString(paramChar) + ") as character #" + (paramInt + 1) + " of 4-char base64 unit: can only used between units";
    }
    for (;;)
    {
      String str2 = str1;
      if (paramString != null) {
        str2 = str1 + ": " + paramString;
      }
      throw new IllegalArgumentException(str2);
      if (usesPaddingChar(paramChar)) {
        str1 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (paramInt + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
      } else if ((!Character.isDefined(paramChar)) || (Character.isISOControl(paramChar))) {
        str1 = "Illegal character (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      } else {
        str1 = "Illegal character '" + paramChar + "' (code 0x" + Integer.toHexString(paramChar) + ") in base64 content";
      }
    }
  }
  
  public final void decode(String paramString, ByteArrayBuilder paramByteArrayBuilder)
  {
    int k = paramString.length();
    int i = 0;
    if (i < k) {}
    for (;;)
    {
      int j = i + 1;
      char c = paramString.charAt(i);
      if (j < k)
      {
        if (c <= ' ') {
          break label355;
        }
        m = decodeBase64Char(c);
        if (m < 0) {
          _reportInvalidBase64(c, 0, null);
        }
        if (j >= k) {
          _reportBase64EOF();
        }
        i = j + 1;
        c = paramString.charAt(j);
        j = decodeBase64Char(c);
        if (j < 0) {
          _reportInvalidBase64(c, 1, null);
        }
        m = m << 6 | j;
        if (i < k) {
          break label141;
        }
        if (!usesPadding()) {
          paramByteArrayBuilder.append(m >> 4);
        }
      }
      else
      {
        return;
      }
      _reportBase64EOF();
      label141:
      j = i + 1;
      c = paramString.charAt(i);
      i = decodeBase64Char(c);
      if (i < 0)
      {
        if (i != -2) {
          _reportInvalidBase64(c, 2, null);
        }
        if (j >= k) {
          _reportBase64EOF();
        }
        i = j + 1;
        c = paramString.charAt(j);
        if (!usesPaddingChar(c)) {
          _reportInvalidBase64(c, 3, "expected padding character '" + getPaddingChar() + "'");
        }
        paramByteArrayBuilder.append(m >> 4);
        break;
      }
      int m = m << 6 | i;
      if (j >= k)
      {
        if (!usesPadding())
        {
          paramByteArrayBuilder.appendTwoBytes(m >> 2);
          return;
        }
        _reportBase64EOF();
      }
      i = j + 1;
      c = paramString.charAt(j);
      j = decodeBase64Char(c);
      if (j < 0)
      {
        if (j != -2) {
          _reportInvalidBase64(c, 3, null);
        }
        paramByteArrayBuilder.appendTwoBytes(m >> 2);
        break;
      }
      paramByteArrayBuilder.appendThreeBytes(m << 6 | j);
      break;
      label355:
      i = j;
    }
  }
  
  public final byte[] decode(String paramString)
  {
    ByteArrayBuilder localByteArrayBuilder = new ByteArrayBuilder();
    decode(paramString, localByteArrayBuilder);
    return localByteArrayBuilder.toByteArray();
  }
  
  public final int decodeBase64Byte(byte paramByte)
  {
    if (paramByte <= Byte.MAX_VALUE) {
      return _asciiToBase64[paramByte];
    }
    return -1;
  }
  
  public final int decodeBase64Char(char paramChar)
  {
    if (paramChar <= '') {
      return _asciiToBase64[paramChar];
    }
    return -1;
  }
  
  public final int decodeBase64Char(int paramInt)
  {
    if (paramInt <= 127) {
      return _asciiToBase64[paramInt];
    }
    return -1;
  }
  
  public final String encode(byte[] paramArrayOfByte)
  {
    return encode(paramArrayOfByte, false);
  }
  
  public final String encode(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    int k = paramArrayOfByte.length;
    StringBuilder localStringBuilder = new StringBuilder((k >> 2) + k + (k >> 3));
    if (paramBoolean) {
      localStringBuilder.append('"');
    }
    int j = getMaxLineLength();
    int i = 0;
    j >>= 2;
    while (i <= k - 3)
    {
      int n = i + 1;
      i = paramArrayOfByte[i];
      m = n + 1;
      encodeBase64Chunk(localStringBuilder, (i << 8 | paramArrayOfByte[n] & 0xFF) << 8 | paramArrayOfByte[m] & 0xFF);
      j -= 1;
      i = j;
      if (j <= 0)
      {
        localStringBuilder.append('\\');
        localStringBuilder.append('n');
        i = getMaxLineLength() >> 2;
      }
      j = i;
      i = m + 1;
    }
    int m = k - i;
    if (m > 0)
    {
      k = paramArrayOfByte[i] << 16;
      j = k;
      if (m == 2) {
        j = k | (paramArrayOfByte[(i + 1)] & 0xFF) << 8;
      }
      encodeBase64Partial(localStringBuilder, j, m);
    }
    if (paramBoolean) {
      localStringBuilder.append('"');
    }
    return localStringBuilder.toString();
  }
  
  public final byte encodeBase64BitsAsByte(int paramInt)
  {
    return _base64ToAsciiB[paramInt];
  }
  
  public final char encodeBase64BitsAsChar(int paramInt)
  {
    return _base64ToAsciiC[paramInt];
  }
  
  public final int encodeBase64Chunk(int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = _base64ToAsciiB[(paramInt1 >> 18 & 0x3F)];
    paramInt2 = i + 1;
    paramArrayOfByte[i] = _base64ToAsciiB[(paramInt1 >> 12 & 0x3F)];
    i = paramInt2 + 1;
    paramArrayOfByte[paramInt2] = _base64ToAsciiB[(paramInt1 >> 6 & 0x3F)];
    paramArrayOfByte[i] = _base64ToAsciiB[(paramInt1 & 0x3F)];
    return i + 1;
  }
  
  public final int encodeBase64Chunk(int paramInt1, char[] paramArrayOfChar, int paramInt2)
  {
    int i = paramInt2 + 1;
    paramArrayOfChar[paramInt2] = _base64ToAsciiC[(paramInt1 >> 18 & 0x3F)];
    paramInt2 = i + 1;
    paramArrayOfChar[i] = _base64ToAsciiC[(paramInt1 >> 12 & 0x3F)];
    i = paramInt2 + 1;
    paramArrayOfChar[paramInt2] = _base64ToAsciiC[(paramInt1 >> 6 & 0x3F)];
    paramArrayOfChar[i] = _base64ToAsciiC[(paramInt1 & 0x3F)];
    return i + 1;
  }
  
  public final void encodeBase64Chunk(StringBuilder paramStringBuilder, int paramInt)
  {
    paramStringBuilder.append(_base64ToAsciiC[(paramInt >> 18 & 0x3F)]);
    paramStringBuilder.append(_base64ToAsciiC[(paramInt >> 12 & 0x3F)]);
    paramStringBuilder.append(_base64ToAsciiC[(paramInt >> 6 & 0x3F)]);
    paramStringBuilder.append(_base64ToAsciiC[(paramInt & 0x3F)]);
  }
  
  public final int encodeBase64Partial(int paramInt1, int paramInt2, byte[] paramArrayOfByte, int paramInt3)
  {
    int k = paramInt3 + 1;
    paramArrayOfByte[paramInt3] = _base64ToAsciiB[(paramInt1 >> 18 & 0x3F)];
    paramInt3 = k + 1;
    paramArrayOfByte[k] = _base64ToAsciiB[(paramInt1 >> 12 & 0x3F)];
    if (_usesPadding)
    {
      int j = (byte)_paddingChar;
      k = paramInt3 + 1;
      if (paramInt2 == 2) {}
      for (int i = _base64ToAsciiB[(paramInt1 >> 6 & 0x3F)];; i = j)
      {
        paramArrayOfByte[paramInt3] = i;
        paramArrayOfByte[k] = j;
        return k + 1;
      }
    }
    if (paramInt2 == 2)
    {
      paramArrayOfByte[paramInt3] = _base64ToAsciiB[(paramInt1 >> 6 & 0x3F)];
      return paramInt3 + 1;
    }
    return paramInt3;
  }
  
  public final int encodeBase64Partial(int paramInt1, int paramInt2, char[] paramArrayOfChar, int paramInt3)
  {
    int j = paramInt3 + 1;
    paramArrayOfChar[paramInt3] = _base64ToAsciiC[(paramInt1 >> 18 & 0x3F)];
    paramInt3 = j + 1;
    paramArrayOfChar[j] = _base64ToAsciiC[(paramInt1 >> 12 & 0x3F)];
    if (_usesPadding)
    {
      j = paramInt3 + 1;
      if (paramInt2 == 2) {}
      for (int i = _base64ToAsciiC[(paramInt1 >> 6 & 0x3F)];; i = _paddingChar)
      {
        paramArrayOfChar[paramInt3] = i;
        paramArrayOfChar[j] = _paddingChar;
        return j + 1;
      }
    }
    if (paramInt2 == 2)
    {
      paramArrayOfChar[paramInt3] = _base64ToAsciiC[(paramInt1 >> 6 & 0x3F)];
      return paramInt3 + 1;
    }
    return paramInt3;
  }
  
  public final void encodeBase64Partial(StringBuilder paramStringBuilder, int paramInt1, int paramInt2)
  {
    paramStringBuilder.append(_base64ToAsciiC[(paramInt1 >> 18 & 0x3F)]);
    paramStringBuilder.append(_base64ToAsciiC[(paramInt1 >> 12 & 0x3F)]);
    if (_usesPadding) {
      if (paramInt2 == 2)
      {
        c = _base64ToAsciiC[(paramInt1 >> 6 & 0x3F)];
        paramStringBuilder.append(c);
        paramStringBuilder.append(_paddingChar);
      }
    }
    while (paramInt2 != 2) {
      for (;;)
      {
        return;
        char c = _paddingChar;
      }
    }
    paramStringBuilder.append(_base64ToAsciiC[(paramInt1 >> 6 & 0x3F)]);
  }
  
  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public final int getMaxLineLength()
  {
    return _maxLineLength;
  }
  
  public final String getName()
  {
    return _name;
  }
  
  public final byte getPaddingByte()
  {
    return (byte)_paddingChar;
  }
  
  public final char getPaddingChar()
  {
    return _paddingChar;
  }
  
  public final int hashCode()
  {
    return _name.hashCode();
  }
  
  protected final Object readResolve()
  {
    return Base64Variants.valueOf(_name);
  }
  
  public final String toString()
  {
    return _name;
  }
  
  public final boolean usesPadding()
  {
    return _usesPadding;
  }
  
  public final boolean usesPaddingChar(char paramChar)
  {
    return paramChar == _paddingChar;
  }
  
  public final boolean usesPaddingChar(int paramInt)
  {
    return paramInt == _paddingChar;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.Base64Variant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */