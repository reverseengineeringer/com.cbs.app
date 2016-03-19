package com.fasterxml.jackson.core.io;

import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class UTF8Writer
  extends Writer
{
  static final int SURR1_FIRST = 55296;
  static final int SURR1_LAST = 56319;
  static final int SURR2_FIRST = 56320;
  static final int SURR2_LAST = 57343;
  private final IOContext _context;
  private OutputStream _out;
  private byte[] _outBuffer;
  private final int _outBufferEnd;
  private int _outPtr;
  private int _surrogate = 0;
  
  public UTF8Writer(IOContext paramIOContext, OutputStream paramOutputStream)
  {
    _context = paramIOContext;
    _out = paramOutputStream;
    _outBuffer = paramIOContext.allocWriteEncodingBuffer();
    _outBufferEnd = (_outBuffer.length - 4);
    _outPtr = 0;
  }
  
  protected static void illegalSurrogate(int paramInt)
  {
    throw new IOException(illegalSurrogateDesc(paramInt));
  }
  
  protected static String illegalSurrogateDesc(int paramInt)
  {
    if (paramInt > 1114111) {
      return "Illegal character point (0x" + Integer.toHexString(paramInt) + ") to output; max is 0x10FFFF as per RFC 4627";
    }
    if (paramInt >= 55296)
    {
      if (paramInt <= 56319) {
        return "Unmatched first part of surrogate pair (0x" + Integer.toHexString(paramInt) + ")";
      }
      return "Unmatched second part of surrogate pair (0x" + Integer.toHexString(paramInt) + ")";
    }
    return "Illegal character point (0x" + Integer.toHexString(paramInt) + ") to output";
  }
  
  public final Writer append(char paramChar)
  {
    write(paramChar);
    return this;
  }
  
  public final void close()
  {
    if (_out != null)
    {
      if (_outPtr > 0)
      {
        _out.write(_outBuffer, 0, _outPtr);
        _outPtr = 0;
      }
      OutputStream localOutputStream = _out;
      _out = null;
      byte[] arrayOfByte = _outBuffer;
      if (arrayOfByte != null)
      {
        _outBuffer = null;
        _context.releaseWriteEncodingBuffer(arrayOfByte);
      }
      localOutputStream.close();
      int i = _surrogate;
      _surrogate = 0;
      if (i > 0) {
        illegalSurrogate(i);
      }
    }
  }
  
  protected final int convertSurrogate(int paramInt)
  {
    int i = _surrogate;
    _surrogate = 0;
    if ((paramInt < 56320) || (paramInt > 57343)) {
      throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(paramInt) + "; illegal combination");
    }
    return (i - 55296 << 10) + 65536 + (paramInt - 56320);
  }
  
  public final void flush()
  {
    if (_out != null)
    {
      if (_outPtr > 0)
      {
        _out.write(_outBuffer, 0, _outPtr);
        _outPtr = 0;
      }
      _out.flush();
    }
  }
  
  public final void write(int paramInt)
  {
    int i;
    if (_surrogate > 0) {
      i = convertSurrogate(paramInt);
    }
    byte[] arrayOfByte;
    do
    {
      do
      {
        if (_outPtr >= _outBufferEnd)
        {
          _out.write(_outBuffer, 0, _outPtr);
          _outPtr = 0;
        }
        if (i >= 128) {
          break;
        }
        arrayOfByte = _outBuffer;
        paramInt = _outPtr;
        _outPtr = (paramInt + 1);
        arrayOfByte[paramInt] = ((byte)i);
        return;
        i = paramInt;
      } while (paramInt < 55296);
      i = paramInt;
    } while (paramInt > 57343);
    if (paramInt > 56319) {
      illegalSurrogate(paramInt);
    }
    _surrogate = paramInt;
    return;
    paramInt = _outPtr;
    int j;
    if (i < 2048)
    {
      arrayOfByte = _outBuffer;
      j = paramInt + 1;
      arrayOfByte[paramInt] = ((byte)(i >> 6 | 0xC0));
      arrayOfByte = _outBuffer;
      paramInt = j + 1;
      arrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
    }
    for (;;)
    {
      _outPtr = paramInt;
      return;
      if (i <= 65535)
      {
        arrayOfByte = _outBuffer;
        j = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)(i >> 12 | 0xE0));
        arrayOfByte = _outBuffer;
        int k = j + 1;
        arrayOfByte[j] = ((byte)(i >> 6 & 0x3F | 0x80));
        arrayOfByte = _outBuffer;
        paramInt = k + 1;
        arrayOfByte[k] = ((byte)(i & 0x3F | 0x80));
      }
      else
      {
        if (i > 1114111) {
          illegalSurrogate(i);
        }
        arrayOfByte = _outBuffer;
        j = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)(i >> 18 | 0xF0));
        arrayOfByte = _outBuffer;
        paramInt = j + 1;
        arrayOfByte[j] = ((byte)(i >> 12 & 0x3F | 0x80));
        arrayOfByte = _outBuffer;
        j = paramInt + 1;
        arrayOfByte[paramInt] = ((byte)(i >> 6 & 0x3F | 0x80));
        arrayOfByte = _outBuffer;
        paramInt = j + 1;
        arrayOfByte[j] = ((byte)(i & 0x3F | 0x80));
      }
    }
  }
  
  public final void write(String paramString)
  {
    write(paramString, 0, paramString.length());
  }
  
  public final void write(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 2)
    {
      if (paramInt2 == 1) {
        write(paramString.charAt(paramInt1));
      }
      return;
    }
    int i = paramInt1;
    int j = paramInt2;
    if (_surrogate > 0)
    {
      i = paramString.charAt(paramInt1);
      j = paramInt2 - 1;
      write(convertSurrogate(i));
      i = paramInt1 + 1;
    }
    paramInt1 = _outPtr;
    byte[] arrayOfByte = _outBuffer;
    int n = _outBufferEnd;
    int i1 = j + i;
    paramInt2 = i;
    i = paramInt1;
    int m;
    int k;
    if (paramInt2 < i1)
    {
      i = paramInt1;
      if (paramInt1 >= n)
      {
        _out.write(arrayOfByte, 0, paramInt1);
        i = 0;
      }
      j = paramInt2 + 1;
      m = paramString.charAt(paramInt2);
      paramInt2 = i;
      k = m;
      paramInt1 = j;
      if (m < 128)
      {
        paramInt1 = i + 1;
        arrayOfByte[i] = ((byte)m);
        i = i1 - j;
        paramInt2 = n - paramInt1;
        if (i <= paramInt2) {
          break label546;
        }
        i = paramInt2;
      }
    }
    label546:
    for (;;)
    {
      paramInt2 = j;
      for (;;)
      {
        if (paramInt2 < i + j)
        {
          k = paramInt2 + 1;
          m = paramString.charAt(paramInt2);
          if (m < 128)
          {
            arrayOfByte[paramInt1] = ((byte)m);
            paramInt1 += 1;
            paramInt2 = k;
          }
          else
          {
            paramInt2 = paramInt1;
            i = m;
            paramInt1 = k;
            k = i;
            if (k < 2048)
            {
              j = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k >> 6 | 0xC0));
              i = j + 1;
              arrayOfByte[j] = ((byte)(k & 0x3F | 0x80));
              paramInt2 = paramInt1;
              paramInt1 = i;
              break;
            }
            if ((k < 55296) || (k > 57343))
            {
              i = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k >> 12 | 0xE0));
              paramInt2 = i + 1;
              arrayOfByte[i] = ((byte)(k >> 6 & 0x3F | 0x80));
              i = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k & 0x3F | 0x80));
              paramInt2 = paramInt1;
              paramInt1 = i;
              break;
            }
            if (k > 56319)
            {
              _outPtr = paramInt2;
              illegalSurrogate(k);
            }
            _surrogate = k;
            i = paramInt2;
            if (paramInt1 < i1)
            {
              i = paramInt1 + 1;
              j = convertSurrogate(paramString.charAt(paramInt1));
              if (j > 1114111)
              {
                _outPtr = paramInt2;
                illegalSurrogate(j);
              }
              paramInt1 = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(j >> 18 | 0xF0));
              paramInt2 = paramInt1 + 1;
              arrayOfByte[paramInt1] = ((byte)(j >> 12 & 0x3F | 0x80));
              k = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(j >> 6 & 0x3F | 0x80));
              paramInt1 = k + 1;
              arrayOfByte[k] = ((byte)(j & 0x3F | 0x80));
              paramInt2 = i;
              break;
            }
            _outPtr = i;
            return;
          }
        }
      }
      break;
    }
  }
  
  public final void write(char[] paramArrayOfChar)
  {
    write(paramArrayOfChar, 0, paramArrayOfChar.length);
  }
  
  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 2)
    {
      if (paramInt2 == 1) {
        write(paramArrayOfChar[paramInt1]);
      }
      return;
    }
    int i = paramInt1;
    int j = paramInt2;
    if (_surrogate > 0)
    {
      i = paramArrayOfChar[paramInt1];
      j = paramInt2 - 1;
      write(convertSurrogate(i));
      i = paramInt1 + 1;
    }
    paramInt1 = _outPtr;
    byte[] arrayOfByte = _outBuffer;
    int n = _outBufferEnd;
    int i1 = j + i;
    paramInt2 = i;
    i = paramInt1;
    int m;
    int k;
    if (paramInt2 < i1)
    {
      i = paramInt1;
      if (paramInt1 >= n)
      {
        _out.write(arrayOfByte, 0, paramInt1);
        i = 0;
      }
      j = paramInt2 + 1;
      m = paramArrayOfChar[paramInt2];
      paramInt2 = i;
      k = m;
      paramInt1 = j;
      if (m < 128)
      {
        paramInt1 = i + 1;
        arrayOfByte[i] = ((byte)m);
        i = i1 - j;
        paramInt2 = n - paramInt1;
        if (i <= paramInt2) {
          break label536;
        }
        i = paramInt2;
      }
    }
    label536:
    for (;;)
    {
      paramInt2 = j;
      for (;;)
      {
        if (paramInt2 < i + j)
        {
          k = paramInt2 + 1;
          m = paramArrayOfChar[paramInt2];
          if (m < 128)
          {
            arrayOfByte[paramInt1] = ((byte)m);
            paramInt1 += 1;
            paramInt2 = k;
          }
          else
          {
            paramInt2 = paramInt1;
            i = m;
            paramInt1 = k;
            k = i;
            if (k < 2048)
            {
              j = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k >> 6 | 0xC0));
              i = j + 1;
              arrayOfByte[j] = ((byte)(k & 0x3F | 0x80));
              paramInt2 = paramInt1;
              paramInt1 = i;
              break;
            }
            if ((k < 55296) || (k > 57343))
            {
              i = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k >> 12 | 0xE0));
              paramInt2 = i + 1;
              arrayOfByte[i] = ((byte)(k >> 6 & 0x3F | 0x80));
              i = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(k & 0x3F | 0x80));
              paramInt2 = paramInt1;
              paramInt1 = i;
              break;
            }
            if (k > 56319)
            {
              _outPtr = paramInt2;
              illegalSurrogate(k);
            }
            _surrogate = k;
            i = paramInt2;
            if (paramInt1 < i1)
            {
              i = paramInt1 + 1;
              j = convertSurrogate(paramArrayOfChar[paramInt1]);
              if (j > 1114111)
              {
                _outPtr = paramInt2;
                illegalSurrogate(j);
              }
              paramInt1 = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(j >> 18 | 0xF0));
              paramInt2 = paramInt1 + 1;
              arrayOfByte[paramInt1] = ((byte)(j >> 12 & 0x3F | 0x80));
              k = paramInt2 + 1;
              arrayOfByte[paramInt2] = ((byte)(j >> 6 & 0x3F | 0x80));
              paramInt1 = k + 1;
              arrayOfByte[k] = ((byte)(j & 0x3F | 0x80));
              paramInt2 = i;
              break;
            }
            _outPtr = i;
            return;
          }
        }
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.io.UTF8Writer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */