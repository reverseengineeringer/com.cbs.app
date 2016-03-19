package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.lang.ref.SoftReference;

public final class JsonStringEncoder
{
  private static final byte[] HB = CharTypes.copyHexBytes();
  private static final char[] HC = ;
  private static final int SURR1_FIRST = 55296;
  private static final int SURR1_LAST = 56319;
  private static final int SURR2_FIRST = 56320;
  private static final int SURR2_LAST = 57343;
  protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder = new ThreadLocal();
  protected ByteArrayBuilder _bytes;
  protected final char[] _qbuf = new char[6];
  protected TextBuffer _text;
  
  public JsonStringEncoder()
  {
    _qbuf[0] = '\\';
    _qbuf[2] = '0';
    _qbuf[3] = '0';
  }
  
  private int _appendByte(int paramInt1, int paramInt2, ByteArrayBuilder paramByteArrayBuilder, int paramInt3)
  {
    paramByteArrayBuilder.setCurrentSegmentLength(paramInt3);
    paramByteArrayBuilder.append(92);
    if (paramInt2 < 0)
    {
      paramByteArrayBuilder.append(117);
      if (paramInt1 > 255)
      {
        paramInt2 = paramInt1 >> 8;
        paramByteArrayBuilder.append(HB[(paramInt2 >> 4)]);
        paramByteArrayBuilder.append(HB[(paramInt2 & 0xF)]);
        paramInt1 &= 0xFF;
        paramByteArrayBuilder.append(HB[(paramInt1 >> 4)]);
        paramByteArrayBuilder.append(HB[(paramInt1 & 0xF)]);
      }
    }
    for (;;)
    {
      return paramByteArrayBuilder.getCurrentSegmentLength();
      paramByteArrayBuilder.append(48);
      paramByteArrayBuilder.append(48);
      break;
      paramByteArrayBuilder.append((byte)paramInt2);
    }
  }
  
  private int _appendNamed(int paramInt, char[] paramArrayOfChar)
  {
    paramArrayOfChar[1] = ((char)paramInt);
    return 2;
  }
  
  private int _appendNumeric(int paramInt, char[] paramArrayOfChar)
  {
    paramArrayOfChar[1] = 'u';
    paramArrayOfChar[4] = HC[(paramInt >> 4)];
    paramArrayOfChar[5] = HC[(paramInt & 0xF)];
    return 6;
  }
  
  private static int _convert(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 56320) || (paramInt2 > 57343)) {
      throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(paramInt1) + ", second 0x" + Integer.toHexString(paramInt2) + "; illegal combination");
    }
    return 65536 + (paramInt1 - 55296 << 10) + (paramInt2 - 56320);
  }
  
  private static void _illegal(int paramInt)
  {
    throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(paramInt));
  }
  
  public static JsonStringEncoder getInstance()
  {
    Object localObject1 = (SoftReference)_threadEncoder.get();
    if (localObject1 == null) {}
    for (localObject1 = null;; localObject1 = (JsonStringEncoder)((SoftReference)localObject1).get())
    {
      Object localObject2 = localObject1;
      if (localObject1 == null)
      {
        localObject2 = new JsonStringEncoder();
        _threadEncoder.set(new SoftReference(localObject2));
      }
      return (JsonStringEncoder)localObject2;
    }
  }
  
  public final byte[] encodeAsUTF8(String paramString)
  {
    Object localObject1 = _bytes;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = new ByteArrayBuilder(null);
      _bytes = ((ByteArrayBuilder)localObject2);
    }
    int i2 = paramString.length();
    localObject1 = ((ByteArrayBuilder)localObject2).resetAndGetFirstSegment();
    int k = localObject1.length;
    int i = 0;
    int j = 0;
    int n;
    int m;
    if (j < i2)
    {
      n = j + 1;
      int i1 = paramString.charAt(j);
      m = k;
      j = n;
      k = i1;
      while (k <= 127)
      {
        n = m;
        i1 = i;
        if (i >= m)
        {
          localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
          n = localObject1.length;
          i1 = 0;
        }
        i = i1 + 1;
        localObject1[i1] = ((byte)k);
        if (j >= i2) {
          break label545;
        }
        k = paramString.charAt(j);
        j += 1;
        m = n;
      }
      if (i >= m)
      {
        localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
        i = localObject1.length;
        m = 0;
        if (k < 2048)
        {
          n = m + 1;
          localObject1[m] = ((byte)(k >> 6 | 0xC0));
          m = k;
          k = n;
        }
        for (;;)
        {
          n = i;
          i1 = k;
          if (k >= i)
          {
            localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
            n = localObject1.length;
            i1 = 0;
          }
          localObject1[i1] = ((byte)(m & 0x3F | 0x80));
          k = n;
          i = i1 + 1;
          break;
          if ((k < 55296) || (k > 57343))
          {
            i1 = m + 1;
            localObject1[m] = ((byte)(k >> 12 | 0xE0));
            m = i;
            n = i1;
            if (i1 >= i)
            {
              localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
              m = localObject1.length;
              n = 0;
            }
            localObject1[n] = ((byte)(k >> 6 & 0x3F | 0x80));
            i1 = n + 1;
            n = k;
            i = m;
            k = i1;
            m = n;
          }
          else
          {
            if (k > 56319) {
              _illegal(k);
            }
            if (j >= i2) {
              _illegal(k);
            }
            n = _convert(k, paramString.charAt(j));
            if (n > 1114111) {
              _illegal(n);
            }
            i1 = m + 1;
            localObject1[m] = ((byte)(n >> 18 | 0xF0));
            k = i;
            m = i1;
            if (i1 >= i)
            {
              localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
              k = localObject1.length;
              m = 0;
            }
            i = m + 1;
            localObject1[m] = ((byte)(n >> 12 & 0x3F | 0x80));
            if (i < k) {
              break label554;
            }
            localObject1 = ((ByteArrayBuilder)localObject2).finishCurrentSegment();
            i = localObject1.length;
            k = 0;
            label510:
            localObject1[k] = ((byte)(n >> 6 & 0x3F | 0x80));
            k += 1;
            m = n;
            j += 1;
          }
        }
      }
    }
    for (;;)
    {
      label545:
      return _bytes.completeAndCoalesce(i);
      label554:
      m = i;
      i = k;
      k = m;
      break label510;
      n = i;
      i = m;
      m = n;
      break;
    }
  }
  
  public final char[] quoteAsString(String paramString)
  {
    Object localObject1 = _text;
    Object localObject2 = localObject1;
    if (localObject1 == null)
    {
      localObject2 = new TextBuffer(null);
      _text = ((TextBuffer)localObject2);
    }
    localObject1 = ((TextBuffer)localObject2).emptyAndGetCurrentSegment();
    int[] arrayOfInt = CharTypes.get7BitOutputEscapes();
    int i1 = arrayOfInt.length;
    int i2 = paramString.length();
    int j = 0;
    int k = 0;
    int m = j;
    label73:
    int i;
    if (k < i2)
    {
      m = k;
      i = paramString.charAt(m);
      if ((i < i1) && (arrayOfInt[i] != 0)) {
        break label156;
      }
      if (j < localObject1.length) {
        break label294;
      }
      localObject1 = ((TextBuffer)localObject2).finishCurrentSegment();
      j = 0;
    }
    label156:
    label273:
    label294:
    for (;;)
    {
      k = j + 1;
      localObject1[j] = i;
      int n = m + 1;
      j = k;
      m = n;
      if (n < i2) {
        break label73;
      }
      m = k;
      ((TextBuffer)localObject2).setCurrentLength(m);
      return ((TextBuffer)localObject2).contentsAsArray();
      k = m + 1;
      m = paramString.charAt(m);
      n = arrayOfInt[m];
      if (n < 0) {}
      for (m = _appendNumeric(m, _qbuf);; m = _appendNamed(n, _qbuf))
      {
        if (j + m <= localObject1.length) {
          break label273;
        }
        n = localObject1.length - j;
        if (n > 0) {
          System.arraycopy(_qbuf, 0, localObject1, j, n);
        }
        localObject1 = ((TextBuffer)localObject2).finishCurrentSegment();
        j = m - n;
        System.arraycopy(_qbuf, n, localObject1, 0, j);
        break;
      }
      System.arraycopy(_qbuf, 0, localObject1, j, m);
      j += m;
      break;
    }
  }
  
  public final byte[] quoteAsUTF8(String paramString)
  {
    Object localObject1 = _bytes;
    Object localObject3 = localObject1;
    if (localObject1 == null)
    {
      localObject3 = new ByteArrayBuilder(null);
      _bytes = ((ByteArrayBuilder)localObject3);
    }
    int n = paramString.length();
    localObject1 = ((ByteArrayBuilder)localObject3).resetAndGetFirstSegment();
    int i = 0;
    int j = 0;
    int k = i;
    int[] arrayOfInt;
    Object localObject2;
    label66:
    int m;
    if (j < n)
    {
      arrayOfInt = CharTypes.get7BitOutputEscapes();
      localObject2 = localObject1;
      m = paramString.charAt(j);
      if ((m > 127) || (arrayOfInt[m] != 0)) {
        break label144;
      }
      if (i < localObject2.length) {
        break label549;
      }
      localObject2 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
      i = 0;
    }
    label144:
    label546:
    label549:
    for (;;)
    {
      k = i + 1;
      localObject2[i] = ((byte)m);
      m = j + 1;
      i = k;
      j = m;
      if (m < n) {
        break label66;
      }
      return _bytes.completeAndCoalesce(k);
      localObject1 = localObject2;
      m = i;
      if (i >= localObject2.length)
      {
        localObject1 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
        m = 0;
      }
      k = j + 1;
      j = paramString.charAt(j);
      if (j <= 127)
      {
        i = _appendByte(j, arrayOfInt[j], (ByteArrayBuilder)localObject3, m);
        localObject1 = ((ByteArrayBuilder)localObject3).getCurrentSegment();
        j = k;
        break;
      }
      if (j <= 2047)
      {
        i = m + 1;
        localObject1[m] = ((byte)(j >> 6 | 0xC0));
        j = j & 0x3F | 0x80;
        localObject2 = localObject1;
        m = i;
        if (i >= localObject1.length)
        {
          localObject2 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
          m = 0;
        }
        localObject2[m] = ((byte)j);
        localObject1 = localObject2;
        j = k;
        i = m + 1;
        break;
      }
      if ((j < 55296) || (j > 57343))
      {
        i = m + 1;
        localObject1[m] = ((byte)(j >> 12 | 0xE0));
        if (i < localObject1.length) {
          break label546;
        }
        localObject1 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
        i = 0;
      }
      for (;;)
      {
        m = i + 1;
        localObject1[i] = ((byte)(j >> 6 & 0x3F | 0x80));
        j = j & 0x3F | 0x80;
        i = m;
        break;
        if (j > 56319) {
          _illegal(j);
        }
        if (k >= n) {
          _illegal(j);
        }
        int i1 = _convert(j, paramString.charAt(k));
        if (i1 > 1114111) {
          _illegal(i1);
        }
        i = m + 1;
        localObject1[m] = ((byte)(i1 >> 18 | 0xF0));
        if (i >= localObject1.length)
        {
          localObject1 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
          i = 0;
        }
        for (;;)
        {
          j = i + 1;
          localObject1[i] = ((byte)(i1 >> 12 & 0x3F | 0x80));
          if (j >= localObject1.length) {
            localObject1 = ((ByteArrayBuilder)localObject3).finishCurrentSegment();
          }
          for (i = 0;; i = j)
          {
            m = i + 1;
            localObject1[i] = ((byte)(i1 >> 6 & 0x3F | 0x80));
            k += 1;
            j = i1 & 0x3F | 0x80;
            i = m;
            break;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.io.JsonStringEncoder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */