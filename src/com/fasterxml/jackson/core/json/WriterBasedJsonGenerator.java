package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class WriterBasedJsonGenerator
  extends JsonGeneratorImpl
{
  protected static final char[] HEX_CHARS = ;
  protected static final int SHORT_WRITE = 32;
  protected SerializableString _currentEscape;
  protected char[] _entityBuffer;
  protected char[] _outputBuffer;
  protected int _outputEnd;
  protected int _outputHead = 0;
  protected int _outputTail = 0;
  protected final Writer _writer;
  
  public WriterBasedJsonGenerator(IOContext paramIOContext, int paramInt, ObjectCodec paramObjectCodec, Writer paramWriter)
  {
    super(paramIOContext, paramInt, paramObjectCodec);
    _writer = paramWriter;
    _outputBuffer = paramIOContext.allocConcatBuffer();
    _outputEnd = _outputBuffer.length;
  }
  
  private char[] _allocateEntityBuffer()
  {
    char[] arrayOfChar = new char[14];
    arrayOfChar[0] = '\\';
    arrayOfChar[2] = '\\';
    arrayOfChar[3] = 'u';
    arrayOfChar[4] = '0';
    arrayOfChar[5] = '0';
    arrayOfChar[8] = '\\';
    arrayOfChar[9] = 'u';
    _entityBuffer = arrayOfChar;
    return arrayOfChar;
  }
  
  private void _appendCharacterEscape(char paramChar, int paramInt)
  {
    Object localObject;
    if (paramInt >= 0)
    {
      if (_outputTail + 2 > _outputEnd) {
        _flushBuffer();
      }
      localObject = _outputBuffer;
      paramChar = _outputTail;
      _outputTail = (paramChar + '\001');
      localObject[paramChar] = 92;
      localObject = _outputBuffer;
      paramChar = _outputTail;
      _outputTail = (paramChar + '\001');
      localObject[paramChar] = ((char)paramInt);
      return;
    }
    if (paramInt != -2)
    {
      if (_outputTail + 2 > _outputEnd) {
        _flushBuffer();
      }
      paramInt = _outputTail;
      localObject = _outputBuffer;
      int i = paramInt + 1;
      localObject[paramInt] = 92;
      paramInt = i + 1;
      localObject[i] = 117;
      if (paramChar > 'ÿ')
      {
        i = paramChar >> '\b' & 0xFF;
        int j = paramInt + 1;
        localObject[paramInt] = HEX_CHARS[(i >> 4)];
        paramInt = j + 1;
        localObject[j] = HEX_CHARS[(i & 0xF)];
        paramChar = (char)(paramChar & 0xFF);
      }
      for (;;)
      {
        i = paramInt + 1;
        localObject[paramInt] = HEX_CHARS[(paramChar >> '\004')];
        localObject[i] = HEX_CHARS[(paramChar & 0xF)];
        _outputTail = (i + 1);
        return;
        i = paramInt + 1;
        localObject[paramInt] = 48;
        paramInt = i + 1;
        localObject[i] = 48;
      }
    }
    if (_currentEscape == null) {
      localObject = _characterEscapes.getEscapeSequence(paramChar).getValue();
    }
    for (;;)
    {
      paramChar = ((String)localObject).length();
      if (_outputTail + paramChar <= _outputEnd) {
        break;
      }
      _flushBuffer();
      if (paramChar <= _outputEnd) {
        break;
      }
      _writer.write((String)localObject);
      return;
      localObject = _currentEscape.getValue();
      _currentEscape = null;
    }
    ((String)localObject).getChars(0, paramChar, _outputBuffer, _outputTail);
    _outputTail += paramChar;
  }
  
  private int _prependOrWriteCharacterEscape(char[] paramArrayOfChar, int paramInt1, int paramInt2, char paramChar, int paramInt3)
  {
    Object localObject;
    if (paramInt3 >= 0)
    {
      if ((paramInt1 > 1) && (paramInt1 < paramInt2))
      {
        paramInt1 -= 2;
        paramArrayOfChar[paramInt1] = '\\';
        paramArrayOfChar[(paramInt1 + 1)] = ((char)paramInt3);
        return paramInt1;
      }
      localObject = _entityBuffer;
      paramArrayOfChar = (char[])localObject;
      if (localObject == null) {
        paramArrayOfChar = _allocateEntityBuffer();
      }
      paramArrayOfChar[1] = ((char)paramInt3);
      _writer.write(paramArrayOfChar, 0, 2);
      return paramInt1;
    }
    if (paramInt3 != -2)
    {
      if ((paramInt1 > 5) && (paramInt1 < paramInt2))
      {
        paramInt1 -= 6;
        paramInt2 = paramInt1 + 1;
        paramArrayOfChar[paramInt1] = '\\';
        paramInt1 = paramInt2 + 1;
        paramArrayOfChar[paramInt2] = 'u';
        if (paramChar > 'ÿ')
        {
          paramInt2 = paramChar >> '\b' & 0xFF;
          paramInt3 = paramInt1 + 1;
          paramArrayOfChar[paramInt1] = HEX_CHARS[(paramInt2 >> 4)];
          paramInt1 = paramInt3 + 1;
          paramArrayOfChar[paramInt3] = HEX_CHARS[(paramInt2 & 0xF)];
          paramChar = (char)(paramChar & 0xFF);
        }
        for (;;)
        {
          paramInt2 = paramInt1 + 1;
          paramArrayOfChar[paramInt1] = HEX_CHARS[(paramChar >> '\004')];
          paramArrayOfChar[paramInt2] = HEX_CHARS[(paramChar & 0xF)];
          return paramInt2 - 5;
          paramInt2 = paramInt1 + 1;
          paramArrayOfChar[paramInt1] = '0';
          paramInt1 = paramInt2 + 1;
          paramArrayOfChar[paramInt2] = '0';
        }
      }
      localObject = _entityBuffer;
      paramArrayOfChar = (char[])localObject;
      if (localObject == null) {
        paramArrayOfChar = _allocateEntityBuffer();
      }
      _outputHead = _outputTail;
      if (paramChar > 'ÿ')
      {
        paramInt2 = paramChar >> '\b' & 0xFF;
        paramChar &= 0xFF;
        paramArrayOfChar[10] = HEX_CHARS[(paramInt2 >> 4)];
        paramArrayOfChar[11] = HEX_CHARS[(paramInt2 & 0xF)];
        paramArrayOfChar[12] = HEX_CHARS[(paramChar >> '\004')];
        paramArrayOfChar[13] = HEX_CHARS[(paramChar & 0xF)];
        _writer.write(paramArrayOfChar, 8, 6);
        return paramInt1;
      }
      paramArrayOfChar[6] = HEX_CHARS[(paramChar >> '\004')];
      paramArrayOfChar[7] = HEX_CHARS[(paramChar & 0xF)];
      _writer.write(paramArrayOfChar, 2, 6);
      return paramInt1;
    }
    if (_currentEscape == null) {
      localObject = _characterEscapes.getEscapeSequence(paramChar).getValue();
    }
    for (;;)
    {
      paramChar = ((String)localObject).length();
      if ((paramInt1 < paramChar) || (paramInt1 >= paramInt2)) {
        break;
      }
      paramInt1 -= paramChar;
      ((String)localObject).getChars(0, paramChar, paramArrayOfChar, paramInt1);
      return paramInt1;
      localObject = _currentEscape.getValue();
      _currentEscape = null;
    }
    _writer.write((String)localObject);
    return paramInt1;
  }
  
  private void _prependOrWriteCharacterEscape(char paramChar, int paramInt)
  {
    char[] arrayOfChar;
    Object localObject;
    if (paramInt >= 0)
    {
      if (_outputTail >= 2)
      {
        paramChar = _outputTail - 2;
        _outputHead = paramChar;
        _outputBuffer[paramChar] = '\\';
        _outputBuffer[(paramChar + '\001')] = ((char)paramInt);
        return;
      }
      arrayOfChar = _entityBuffer;
      localObject = arrayOfChar;
      if (arrayOfChar == null) {
        localObject = _allocateEntityBuffer();
      }
      _outputHead = _outputTail;
      localObject[1] = ((char)paramInt);
      _writer.write((char[])localObject, 0, 2);
      return;
    }
    if (paramInt != -2)
    {
      if (_outputTail >= 6)
      {
        localObject = _outputBuffer;
        paramInt = _outputTail - 6;
        _outputHead = paramInt;
        localObject[paramInt] = 92;
        paramInt += 1;
        localObject[paramInt] = 117;
        if (paramChar > 'ÿ')
        {
          int i = paramChar >> '\b' & 0xFF;
          paramInt += 1;
          localObject[paramInt] = HEX_CHARS[(i >> 4)];
          paramInt += 1;
          localObject[paramInt] = HEX_CHARS[(i & 0xF)];
          paramChar = (char)(paramChar & 0xFF);
        }
        for (;;)
        {
          paramInt += 1;
          localObject[paramInt] = HEX_CHARS[(paramChar >> '\004')];
          localObject[(paramInt + 1)] = HEX_CHARS[(paramChar & 0xF)];
          return;
          paramInt += 1;
          localObject[paramInt] = 48;
          paramInt += 1;
          localObject[paramInt] = 48;
        }
      }
      arrayOfChar = _entityBuffer;
      localObject = arrayOfChar;
      if (arrayOfChar == null) {
        localObject = _allocateEntityBuffer();
      }
      _outputHead = _outputTail;
      if (paramChar > 'ÿ')
      {
        paramInt = paramChar >> '\b' & 0xFF;
        paramChar &= 0xFF;
        localObject[10] = HEX_CHARS[(paramInt >> 4)];
        localObject[11] = HEX_CHARS[(paramInt & 0xF)];
        localObject[12] = HEX_CHARS[(paramChar >> '\004')];
        localObject[13] = HEX_CHARS[(paramChar & 0xF)];
        _writer.write((char[])localObject, 8, 6);
        return;
      }
      localObject[6] = HEX_CHARS[(paramChar >> '\004')];
      localObject[7] = HEX_CHARS[(paramChar & 0xF)];
      _writer.write((char[])localObject, 2, 6);
      return;
    }
    if (_currentEscape == null) {
      localObject = _characterEscapes.getEscapeSequence(paramChar).getValue();
    }
    for (;;)
    {
      paramChar = ((String)localObject).length();
      if (_outputTail < paramChar) {
        break;
      }
      paramInt = _outputTail - paramChar;
      _outputHead = paramInt;
      ((String)localObject).getChars(0, paramChar, _outputBuffer, paramInt);
      return;
      localObject = _currentEscape.getValue();
      _currentEscape = null;
    }
    _outputHead = _outputTail;
    _writer.write((String)localObject);
  }
  
  private int _readMore(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    int j = 0;
    int i = paramInt1;
    paramInt1 = j;
    while (i < paramInt2)
    {
      paramArrayOfByte[paramInt1] = paramArrayOfByte[i];
      paramInt1 += 1;
      i += 1;
    }
    paramInt3 = Math.min(paramInt3, paramArrayOfByte.length);
    do
    {
      paramInt2 = paramInt3 - paramInt1;
      if (paramInt2 != 0)
      {
        paramInt2 = paramInputStream.read(paramArrayOfByte, paramInt1, paramInt2);
        if (paramInt2 >= 0) {}
      }
      else
      {
        return paramInt1;
      }
      paramInt2 = paramInt1 + paramInt2;
      paramInt1 = paramInt2;
    } while (paramInt2 < 3);
    return paramInt2;
  }
  
  private void _writeLongString(String paramString)
  {
    _flushBuffer();
    int m = paramString.length();
    int i = 0;
    int k = _outputEnd;
    int j = k;
    if (i + k > m) {
      j = m - i;
    }
    paramString.getChars(i, i + j, _outputBuffer, 0);
    if (_characterEscapes != null) {
      _writeSegmentCustom(j);
    }
    for (;;)
    {
      j = i + j;
      i = j;
      if (j < m) {
        break;
      }
      return;
      if (_maximumNonEscapedChar != 0) {
        _writeSegmentASCII(j, _maximumNonEscapedChar);
      } else {
        _writeSegment(j);
      }
    }
  }
  
  private final void _writeNull()
  {
    if (_outputTail + 4 >= _outputEnd) {
      _flushBuffer();
    }
    int i = _outputTail;
    char[] arrayOfChar = _outputBuffer;
    arrayOfChar[i] = 'n';
    i += 1;
    arrayOfChar[i] = 'u';
    i += 1;
    arrayOfChar[i] = 'l';
    i += 1;
    arrayOfChar[i] = 'l';
    _outputTail = (i + 1);
  }
  
  private void _writeQuotedInt(int paramInt)
  {
    if (_outputTail + 13 >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _outputTail = NumberOutput.outputInt(paramInt, _outputBuffer, _outputTail);
    arrayOfChar = _outputBuffer;
    paramInt = _outputTail;
    _outputTail = (paramInt + 1);
    arrayOfChar[paramInt] = '"';
  }
  
  private void _writeQuotedLong(long paramLong)
  {
    if (_outputTail + 23 >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _outputTail = NumberOutput.outputLong(paramLong, _outputBuffer, _outputTail);
    arrayOfChar = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
  }
  
  private void _writeQuotedRaw(String paramString)
  {
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    writeRaw(paramString);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramString[i] = 34;
  }
  
  private void _writeQuotedShort(short paramShort)
  {
    if (_outputTail + 8 >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _outputTail = NumberOutput.outputInt(paramShort, _outputBuffer, _outputTail);
    arrayOfChar = _outputBuffer;
    paramShort = _outputTail;
    _outputTail = (paramShort + 1);
    arrayOfChar[paramShort] = '"';
  }
  
  private void _writeSegment(int paramInt)
  {
    int j = 0;
    int[] arrayOfInt = _outputEscapes;
    int n = arrayOfInt.length;
    int i;
    for (int k = 0; j < paramInt; k = _prependOrWriteCharacterEscape(_outputBuffer, j, paramInt, i, arrayOfInt[i]))
    {
      int m;
      do
      {
        i = _outputBuffer[j];
        if (i < n)
        {
          m = j;
          if (arrayOfInt[i] != 0) {
            break;
          }
        }
        m = j + 1;
        j = m;
      } while (m < paramInt);
      j = m - k;
      if (j > 0)
      {
        _writer.write(_outputBuffer, k, j);
        if (m >= paramInt) {
          break;
        }
      }
      j = m + 1;
    }
  }
  
  private void _writeSegmentASCII(int paramInt1, int paramInt2)
  {
    int j = 0;
    int[] arrayOfInt = _outputEscapes;
    int i2 = Math.min(arrayOfInt.length, paramInt2 + 1);
    int m = 0;
    int k = 0;
    if (k < paramInt1)
    {
      int i1 = j;
      label36:
      int i = _outputBuffer[k];
      if (i < i2)
      {
        j = arrayOfInt[i];
        if (j == 0) {
          break label134;
        }
      }
      for (;;)
      {
        int n = k - m;
        if (n > 0)
        {
          _writer.write(_outputBuffer, m, n);
          if (k >= paramInt1) {
            return;
          }
        }
        k += 1;
        m = _prependOrWriteCharacterEscape(_outputBuffer, k, paramInt1, i, j);
        break;
        j = i1;
        if (i > paramInt2)
        {
          j = -1;
        }
        else
        {
          label134:
          n = k + 1;
          i1 = j;
          k = n;
          if (n < paramInt1) {
            break label36;
          }
          k = n;
        }
      }
    }
  }
  
  private void _writeSegmentCustom(int paramInt)
  {
    int k = 0;
    int[] arrayOfInt = _outputEscapes;
    int m;
    CharacterEscapes localCharacterEscapes;
    int n;
    int j;
    label43:
    int i2;
    label52:
    int i;
    if (_maximumNonEscapedChar <= 0)
    {
      m = 65535;
      int i3 = Math.min(arrayOfInt.length, m + 1);
      localCharacterEscapes = _characterEscapes;
      n = 0;
      j = 0;
      if (k >= paramInt) {
        return;
      }
      i2 = j;
      i = _outputBuffer[k];
      if (i >= i3) {
        break label141;
      }
      j = arrayOfInt[i];
      if (j == 0) {
        break label180;
      }
    }
    for (;;)
    {
      int i1 = k - n;
      if (i1 > 0)
      {
        _writer.write(_outputBuffer, n, i1);
        if (k >= paramInt) {
          return;
        }
      }
      k += 1;
      n = _prependOrWriteCharacterEscape(_outputBuffer, k, paramInt, i, j);
      break label43;
      m = _maximumNonEscapedChar;
      break;
      label141:
      if (i > m)
      {
        j = -1;
      }
      else
      {
        SerializableString localSerializableString = localCharacterEscapes.getEscapeSequence(i);
        _currentEscape = localSerializableString;
        j = i2;
        if (localSerializableString != null)
        {
          j = -2;
        }
        else
        {
          label180:
          i1 = k + 1;
          i2 = j;
          k = i1;
          if (i1 < paramInt) {
            break label52;
          }
          k = i1;
        }
      }
    }
  }
  
  private void _writeString(String paramString)
  {
    int i = paramString.length();
    if (i > _outputEnd)
    {
      _writeLongString(paramString);
      return;
    }
    if (_outputTail + i > _outputEnd) {
      _flushBuffer();
    }
    paramString.getChars(0, i, _outputBuffer, _outputTail);
    if (_characterEscapes != null)
    {
      _writeStringCustom(i);
      return;
    }
    if (_maximumNonEscapedChar != 0)
    {
      _writeStringASCII(i, _maximumNonEscapedChar);
      return;
    }
    _writeString2(i);
  }
  
  private void _writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (_characterEscapes != null) {
      _writeStringCustom(paramArrayOfChar, paramInt1, paramInt2);
    }
    label50:
    label184:
    label199:
    for (;;)
    {
      return;
      if (_maximumNonEscapedChar != 0)
      {
        _writeStringASCII(paramArrayOfChar, paramInt1, paramInt2, _maximumNonEscapedChar);
        return;
      }
      int j = paramInt2 + paramInt1;
      int[] arrayOfInt = _outputEscapes;
      int k = arrayOfInt.length;
      int i;
      if (paramInt1 < j)
      {
        paramInt2 = paramInt1;
        do
        {
          int m = paramArrayOfChar[paramInt2];
          if (m < k)
          {
            i = paramInt2;
            if (arrayOfInt[m] != 0) {
              break;
            }
          }
          i = paramInt2 + 1;
          paramInt2 = i;
        } while (i < j);
        paramInt2 = i - paramInt1;
        if (paramInt2 >= 32) {
          break label184;
        }
        if (_outputTail + paramInt2 > _outputEnd) {
          _flushBuffer();
        }
        if (paramInt2 > 0)
        {
          System.arraycopy(paramArrayOfChar, paramInt1, _outputBuffer, _outputTail, paramInt2);
          _outputTail += paramInt2;
        }
      }
      for (;;)
      {
        if (i >= j) {
          break label199;
        }
        paramInt1 = i + 1;
        char c = paramArrayOfChar[i];
        _appendCharacterEscape(c, arrayOfInt[c]);
        break label50;
        break;
        _flushBuffer();
        _writer.write(paramArrayOfChar, paramInt1, paramInt2);
      }
    }
  }
  
  private void _writeString2(int paramInt)
  {
    paramInt = _outputTail + paramInt;
    int[] arrayOfInt = _outputEscapes;
    int i = arrayOfInt.length;
    for (;;)
    {
      if (_outputTail < paramInt) {
        do
        {
          j = _outputBuffer[_outputTail];
          if ((j < i) && (arrayOfInt[j] != 0)) {
            break;
          }
          j = _outputTail + 1;
          _outputTail = j;
        } while (j < paramInt);
      }
      return;
      int j = _outputTail - _outputHead;
      if (j > 0) {
        _writer.write(_outputBuffer, _outputHead, j);
      }
      char[] arrayOfChar = _outputBuffer;
      j = _outputTail;
      _outputTail = (j + 1);
      char c = arrayOfChar[j];
      _prependOrWriteCharacterEscape(c, arrayOfInt[c]);
    }
  }
  
  private void _writeStringASCII(int paramInt1, int paramInt2)
  {
    int j = _outputTail + paramInt1;
    int[] arrayOfInt = _outputEscapes;
    int k = Math.min(arrayOfInt.length, paramInt2 + 1);
    if (_outputTail < j) {
      label121:
      do
      {
        int i = _outputBuffer[_outputTail];
        if (i < k)
        {
          paramInt1 = arrayOfInt[i];
          if (paramInt1 == 0) {}
        }
        else
        {
          for (;;)
          {
            int m = _outputTail - _outputHead;
            if (m > 0) {
              _writer.write(_outputBuffer, _outputHead, m);
            }
            _outputTail += 1;
            _prependOrWriteCharacterEscape(i, paramInt1);
            break;
            if (i <= paramInt2) {
              break label121;
            }
            paramInt1 = -1;
          }
        }
        paramInt1 = _outputTail + 1;
        _outputTail = paramInt1;
      } while (paramInt1 < j);
    }
  }
  
  private void _writeStringASCII(char[] paramArrayOfChar, int paramInt1, int paramInt2, int paramInt3)
  {
    int n = paramInt2 + paramInt1;
    int[] arrayOfInt = _outputEscapes;
    int i1 = Math.min(arrayOfInt.length, paramInt3 + 1);
    int j = 0;
    paramInt2 = paramInt1;
    paramInt1 = j;
    if (paramInt2 < n)
    {
      j = paramInt2;
      int m = paramInt1;
      label43:
      int i = paramArrayOfChar[j];
      int k;
      if (i < i1)
      {
        k = arrayOfInt[i];
        paramInt1 = k;
        if (k == 0) {
          break label173;
        }
        paramInt1 = k;
        label74:
        k = j - paramInt2;
        if (k >= 32) {
          break label200;
        }
        if (_outputTail + k > _outputEnd) {
          _flushBuffer();
        }
        if (k > 0)
        {
          System.arraycopy(paramArrayOfChar, paramInt2, _outputBuffer, _outputTail, k);
          _outputTail += k;
        }
      }
      for (;;)
      {
        if (j >= n) {
          return;
        }
        paramInt2 = j + 1;
        _appendCharacterEscape(i, paramInt1);
        break;
        paramInt1 = m;
        if (i > paramInt3)
        {
          paramInt1 = -1;
          break label74;
        }
        label173:
        k = j + 1;
        m = paramInt1;
        j = k;
        if (k < n) {
          break label43;
        }
        j = k;
        break label74;
        label200:
        _flushBuffer();
        _writer.write(paramArrayOfChar, paramInt2, k);
      }
    }
  }
  
  private void _writeStringCustom(int paramInt)
  {
    int k = _outputTail + paramInt;
    int[] arrayOfInt = _outputEscapes;
    int j;
    int m;
    CharacterEscapes localCharacterEscapes;
    if (_maximumNonEscapedChar <= 0)
    {
      j = 65535;
      m = Math.min(arrayOfInt.length, j + 1);
      localCharacterEscapes = _characterEscapes;
      label41:
      if (_outputTail >= k) {}
    }
    else
    {
      label170:
      do
      {
        int i = _outputBuffer[_outputTail];
        if (i < m)
        {
          paramInt = arrayOfInt[i];
          if (paramInt == 0) {}
        }
        else
        {
          for (;;)
          {
            int n = _outputTail - _outputHead;
            if (n > 0) {
              _writer.write(_outputBuffer, _outputHead, n);
            }
            _outputTail += 1;
            _prependOrWriteCharacterEscape(i, paramInt);
            break label41;
            j = _maximumNonEscapedChar;
            break;
            if (i > j)
            {
              paramInt = -1;
            }
            else
            {
              SerializableString localSerializableString = localCharacterEscapes.getEscapeSequence(i);
              _currentEscape = localSerializableString;
              if (localSerializableString == null) {
                break label170;
              }
              paramInt = -2;
            }
          }
        }
        paramInt = _outputTail + 1;
        _outputTail = paramInt;
      } while (paramInt < k);
    }
  }
  
  private void _writeStringCustom(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i1 = paramInt2 + paramInt1;
    int[] arrayOfInt = _outputEscapes;
    int k;
    CharacterEscapes localCharacterEscapes;
    int j;
    label48:
    int n;
    label60:
    int i;
    int m;
    if (_maximumNonEscapedChar <= 0)
    {
      k = 65535;
      int i2 = Math.min(arrayOfInt.length, k + 1);
      localCharacterEscapes = _characterEscapes;
      j = 0;
      paramInt2 = paramInt1;
      paramInt1 = j;
      if (paramInt2 >= i1) {
        return;
      }
      j = paramInt2;
      n = paramInt1;
      i = paramArrayOfChar[j];
      if (i >= i2) {
        break label184;
      }
      m = arrayOfInt[i];
      paramInt1 = m;
      if (m == 0) {
        break label225;
      }
      paramInt1 = m;
      label91:
      m = j - paramInt2;
      if (m >= 32) {
        break label252;
      }
      if (_outputTail + m > _outputEnd) {
        _flushBuffer();
      }
      if (m > 0)
      {
        System.arraycopy(paramArrayOfChar, paramInt2, _outputBuffer, _outputTail, m);
        _outputTail += m;
      }
    }
    for (;;)
    {
      if (j >= i1) {
        return;
      }
      paramInt2 = j + 1;
      _appendCharacterEscape(i, paramInt1);
      break label48;
      k = _maximumNonEscapedChar;
      break;
      label184:
      if (i > k)
      {
        paramInt1 = -1;
        break label91;
      }
      SerializableString localSerializableString = localCharacterEscapes.getEscapeSequence(i);
      _currentEscape = localSerializableString;
      paramInt1 = n;
      if (localSerializableString != null)
      {
        paramInt1 = -2;
        break label91;
      }
      label225:
      m = j + 1;
      n = paramInt1;
      j = m;
      if (m < i1) {
        break label60;
      }
      j = m;
      break label91;
      label252:
      _flushBuffer();
      _writer.write(paramArrayOfChar, paramInt2, m);
    }
  }
  
  private void writeRawLong(String paramString)
  {
    int j = _outputEnd - _outputTail;
    paramString.getChars(0, j, _outputBuffer, _outputTail);
    _outputTail += j;
    _flushBuffer();
    int i = paramString.length() - j;
    while (i > _outputEnd)
    {
      int k = _outputEnd;
      paramString.getChars(j, j + k, _outputBuffer, 0);
      _outputHead = 0;
      _outputTail = k;
      _flushBuffer();
      j += k;
      i -= k;
    }
    paramString.getChars(j, j + i, _outputBuffer, 0);
    _outputHead = 0;
    _outputTail = i;
  }
  
  protected final void _flushBuffer()
  {
    int i = _outputTail - _outputHead;
    if (i > 0)
    {
      int j = _outputHead;
      _outputHead = 0;
      _outputTail = 0;
      _writer.write(_outputBuffer, j, i);
    }
  }
  
  protected final void _releaseBuffers()
  {
    char[] arrayOfChar = _outputBuffer;
    if (arrayOfChar != null)
    {
      _outputBuffer = null;
      _ioContext.releaseConcatBuffer(arrayOfChar);
    }
  }
  
  protected final void _verifyPrettyValueWrite(String paramString)
  {
    int i = _writeContext.writeValue();
    if (i == 5) {
      _reportError("Can not " + paramString + ", expecting field name");
    }
    switch (i)
    {
    default: 
      _throwInternal();
    }
    do
    {
      return;
      _cfgPrettyPrinter.writeArrayValueSeparator(this);
      return;
      _cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
      return;
      _cfgPrettyPrinter.writeRootValueSeparator(this);
      return;
      if (_writeContext.inArray())
      {
        _cfgPrettyPrinter.beforeArrayValues(this);
        return;
      }
    } while (!_writeContext.inObject());
    _cfgPrettyPrinter.beforeObjectEntries(this);
  }
  
  protected final void _verifyValueWrite(String paramString)
  {
    if (_cfgPrettyPrinter != null) {
      _verifyPrettyValueWrite(paramString);
    }
    do
    {
      return;
      int j = _writeContext.writeValue();
      if (j == 5) {
        _reportError("Can not " + paramString + ", expecting field name");
      }
      switch (j)
      {
      default: 
        return;
      case 1: 
      case 2: 
        for (int i = 44;; i = 58)
        {
          if (_outputTail >= _outputEnd) {
            _flushBuffer();
          }
          _outputBuffer[_outputTail] = i;
          _outputTail += 1;
          return;
        }
      }
    } while (_rootValueSeparator == null);
    writeRaw(_rootValueSeparator.getValue());
  }
  
  protected final int _writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, byte[] paramArrayOfByte)
  {
    int i2 = -3;
    int i4 = _outputEnd - 6;
    int m = paramBase64Variant.getMaxLineLength() >> 2;
    int j = 0;
    int i1 = 0;
    int i = 0;
    int k;
    for (;;)
    {
      int n = i2;
      int i3 = i;
      k = i1;
      if (i > i2)
      {
        k = _readMore(paramInputStream, paramArrayOfByte, i, i1, paramArrayOfByte.length);
        if (k < 3) {
          break;
        }
        n = k - 3;
        i3 = 0;
      }
      if (_outputTail > i4) {
        _flushBuffer();
      }
      i1 = i3 + 1;
      i = paramArrayOfByte[i3];
      i3 = i1 + 1;
      i2 = paramArrayOfByte[i1];
      i1 = i3 + 1;
      i3 = paramArrayOfByte[i3];
      j += 3;
      _outputTail = paramBase64Variant.encodeBase64Chunk((i2 & 0xFF | i << 8) << 8 | i3 & 0xFF, _outputBuffer, _outputTail);
      m -= 1;
      i = m;
      if (m <= 0)
      {
        char[] arrayOfChar = _outputBuffer;
        i = _outputTail;
        _outputTail = (i + 1);
        arrayOfChar[i] = '\\';
        arrayOfChar = _outputBuffer;
        i = _outputTail;
        _outputTail = (i + 1);
        arrayOfChar[i] = 'n';
        i = paramBase64Variant.getMaxLineLength() >> 2;
      }
      m = i;
      i2 = n;
      i = i1;
      i1 = k;
    }
    if (k > 0)
    {
      if (_outputTail > i4) {
        _flushBuffer();
      }
      i = paramArrayOfByte[0] << 16;
      if (1 < k) {
        i |= (paramArrayOfByte[1] & 0xFF) << 8;
      }
      for (k = 2;; k = 1)
      {
        _outputTail = paramBase64Variant.encodeBase64Partial(i, k, _outputBuffer, _outputTail);
        return j + k;
      }
    }
    return j;
  }
  
  protected final int _writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt)
  {
    int m = 0;
    int j = 0;
    int i1 = -3;
    int i3 = _outputEnd - 6;
    int k = paramBase64Variant.getMaxLineLength() >> 2;
    int i = paramInt;
    paramInt = m;
    int n;
    for (;;)
    {
      m = paramInt;
      n = j;
      if (i <= 2) {
        break;
      }
      n = i1;
      int i2 = paramInt;
      m = j;
      if (paramInt > i1)
      {
        paramInt = _readMore(paramInputStream, paramArrayOfByte, paramInt, j, i);
        m = 0;
        i2 = 0;
        n = paramInt;
        if (paramInt < 3) {
          break;
        }
        n = paramInt - 3;
        m = paramInt;
      }
      if (_outputTail > i3) {
        _flushBuffer();
      }
      j = i2 + 1;
      paramInt = paramArrayOfByte[i2];
      i2 = j + 1;
      i1 = paramArrayOfByte[j];
      j = i2 + 1;
      i2 = paramArrayOfByte[i2];
      i -= 3;
      _outputTail = paramBase64Variant.encodeBase64Chunk((i1 & 0xFF | paramInt << 8) << 8 | i2 & 0xFF, _outputBuffer, _outputTail);
      k -= 1;
      paramInt = k;
      if (k <= 0)
      {
        char[] arrayOfChar = _outputBuffer;
        paramInt = _outputTail;
        _outputTail = (paramInt + 1);
        arrayOfChar[paramInt] = '\\';
        arrayOfChar = _outputBuffer;
        paramInt = _outputTail;
        _outputTail = (paramInt + 1);
        arrayOfChar[paramInt] = 'n';
        paramInt = paramBase64Variant.getMaxLineLength() >> 2;
      }
      k = paramInt;
      i1 = n;
      paramInt = j;
      j = m;
    }
    paramInt = i;
    if (i > 0)
    {
      j = _readMore(paramInputStream, paramArrayOfByte, m, n, i);
      paramInt = i;
      if (j > 0)
      {
        if (_outputTail > i3) {
          _flushBuffer();
        }
        paramInt = paramArrayOfByte[0] << 16;
        if (1 >= j) {
          break label404;
        }
        paramInt |= (paramArrayOfByte[1] & 0xFF) << 8;
      }
    }
    label404:
    for (j = 2;; j = 1)
    {
      _outputTail = paramBase64Variant.encodeBase64Partial(paramInt, j, _outputBuffer, _outputTail);
      paramInt = i - j;
      return paramInt;
    }
  }
  
  protected final void _writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int m = _outputEnd - 6;
    int j = paramBase64Variant.getMaxLineLength() >> 2;
    int i = paramInt1;
    paramInt1 = j;
    while (i <= paramInt2 - 3)
    {
      if (_outputTail > m) {
        _flushBuffer();
      }
      j = i + 1;
      i = paramArrayOfByte[i];
      int k = j + 1;
      int n = paramArrayOfByte[j];
      j = k + 1;
      _outputTail = paramBase64Variant.encodeBase64Chunk((n & 0xFF | i << 8) << 8 | paramArrayOfByte[k] & 0xFF, _outputBuffer, _outputTail);
      k = paramInt1 - 1;
      paramInt1 = k;
      i = j;
      if (k <= 0)
      {
        char[] arrayOfChar = _outputBuffer;
        paramInt1 = _outputTail;
        _outputTail = (paramInt1 + 1);
        arrayOfChar[paramInt1] = '\\';
        arrayOfChar = _outputBuffer;
        paramInt1 = _outputTail;
        _outputTail = (paramInt1 + 1);
        arrayOfChar[paramInt1] = 'n';
        paramInt1 = paramBase64Variant.getMaxLineLength() >> 2;
        i = j;
      }
    }
    j = paramInt2 - i;
    if (j > 0)
    {
      if (_outputTail > m) {
        _flushBuffer();
      }
      paramInt2 = paramArrayOfByte[i] << 16;
      paramInt1 = paramInt2;
      if (j == 2) {
        paramInt1 = paramInt2 | (paramArrayOfByte[(i + 1)] & 0xFF) << 8;
      }
      _outputTail = paramBase64Variant.encodeBase64Partial(paramInt1, j, _outputBuffer, _outputTail);
    }
  }
  
  protected final void _writeFieldName(SerializableString paramSerializableString, boolean paramBoolean)
  {
    if (_cfgPrettyPrinter != null)
    {
      _writePPFieldName(paramSerializableString, paramBoolean);
      return;
    }
    if (_outputTail + 1 >= _outputEnd) {
      _flushBuffer();
    }
    if (paramBoolean)
    {
      arrayOfChar = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = ',';
    }
    paramSerializableString = paramSerializableString.asQuotedChars();
    if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES))
    {
      writeRaw(paramSerializableString, 0, paramSerializableString.length);
      return;
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    i = paramSerializableString.length;
    if (_outputTail + i + 1 >= _outputEnd)
    {
      writeRaw(paramSerializableString, 0, i);
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramSerializableString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramSerializableString[i] = 34;
      return;
    }
    System.arraycopy(paramSerializableString, 0, _outputBuffer, _outputTail, i);
    _outputTail += i;
    paramSerializableString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramSerializableString[i] = 34;
  }
  
  protected final void _writeFieldName(String paramString, boolean paramBoolean)
  {
    if (_cfgPrettyPrinter != null)
    {
      _writePPFieldName(paramString, paramBoolean);
      return;
    }
    if (_outputTail + 1 >= _outputEnd) {
      _flushBuffer();
    }
    if (paramBoolean)
    {
      arrayOfChar = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = ',';
    }
    if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES))
    {
      _writeString(paramString);
      return;
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _writeString(paramString);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramString[i] = 34;
  }
  
  protected final void _writePPFieldName(SerializableString paramSerializableString, boolean paramBoolean)
  {
    if (paramBoolean) {
      _cfgPrettyPrinter.writeObjectEntrySeparator(this);
    }
    for (;;)
    {
      paramSerializableString = paramSerializableString.asQuotedChars();
      if (!isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES)) {
        break;
      }
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      char[] arrayOfChar = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = '"';
      writeRaw(paramSerializableString, 0, paramSerializableString.length);
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramSerializableString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramSerializableString[i] = 34;
      return;
      _cfgPrettyPrinter.beforeObjectEntries(this);
    }
    writeRaw(paramSerializableString, 0, paramSerializableString.length);
  }
  
  protected final void _writePPFieldName(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      _cfgPrettyPrinter.writeObjectEntrySeparator(this);
    }
    while (isEnabled(JsonGenerator.Feature.QUOTE_FIELD_NAMES))
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      char[] arrayOfChar = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = '"';
      _writeString(paramString);
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramString[i] = 34;
      return;
      _cfgPrettyPrinter.beforeObjectEntries(this);
    }
    _writeString(paramString);
  }
  
  public final void close()
  {
    super.close();
    if ((_outputBuffer != null) && (isEnabled(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT))) {
      for (;;)
      {
        JsonWriteContext localJsonWriteContext = getOutputContext();
        if (localJsonWriteContext.inArray())
        {
          writeEndArray();
        }
        else
        {
          if (!localJsonWriteContext.inObject()) {
            break;
          }
          writeEndObject();
        }
      }
    }
    _flushBuffer();
    if (_writer != null)
    {
      if ((!_ioContext.isResourceManaged()) && (!isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET))) {
        break label97;
      }
      _writer.close();
    }
    for (;;)
    {
      _releaseBuffers();
      return;
      label97:
      if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
        _writer.flush();
      }
    }
  }
  
  public final void flush()
  {
    _flushBuffer();
    if ((_writer != null) && (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM))) {
      _writer.flush();
    }
  }
  
  public final Object getOutputTarget()
  {
    return _writer;
  }
  
  public final int writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, int paramInt)
  {
    _verifyValueWrite("write binary value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    localObject = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    localObject[i] = 34;
    localObject = _ioContext.allocBase64Buffer();
    if (paramInt < 0) {}
    for (;;)
    {
      try
      {
        i = _writeBinary(paramBase64Variant, paramInputStream, (byte[])localObject);
        _ioContext.releaseBase64Buffer((byte[])localObject);
        if (_outputTail >= _outputEnd) {
          _flushBuffer();
        }
        paramBase64Variant = _outputBuffer;
        paramInt = _outputTail;
        _outputTail = (paramInt + 1);
        paramBase64Variant[paramInt] = 34;
        return i;
      }
      finally
      {
        int j;
        _ioContext.releaseBase64Buffer((byte[])localObject);
      }
      j = _writeBinary(paramBase64Variant, paramInputStream, (byte[])localObject, paramInt);
      i = paramInt;
      if (j > 0)
      {
        _reportError("Too few bytes available: missing " + j + " bytes (out of " + paramInt + ")");
        i = paramInt;
      }
    }
  }
  
  public final void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write binary value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _writeBinary(paramBase64Variant, paramArrayOfByte, paramInt1, paramInt1 + paramInt2);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramBase64Variant = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    paramBase64Variant[paramInt1] = 34;
  }
  
  public final void writeBoolean(boolean paramBoolean)
  {
    _verifyValueWrite("write boolean value");
    if (_outputTail + 5 >= _outputEnd) {
      _flushBuffer();
    }
    int i = _outputTail;
    char[] arrayOfChar = _outputBuffer;
    if (paramBoolean)
    {
      arrayOfChar[i] = 't';
      i += 1;
      arrayOfChar[i] = 'r';
      i += 1;
      arrayOfChar[i] = 'u';
      i += 1;
      arrayOfChar[i] = 'e';
    }
    for (;;)
    {
      _outputTail = (i + 1);
      return;
      arrayOfChar[i] = 'f';
      i += 1;
      arrayOfChar[i] = 'a';
      i += 1;
      arrayOfChar[i] = 'l';
      i += 1;
      arrayOfChar[i] = 's';
      i += 1;
      arrayOfChar[i] = 'e';
    }
  }
  
  public final void writeEndArray()
  {
    if (!_writeContext.inArray()) {
      _reportError("Current context not an ARRAY but " + _writeContext.getTypeDesc());
    }
    if (_cfgPrettyPrinter != null) {
      _cfgPrettyPrinter.writeEndArray(this, _writeContext.getEntryCount());
    }
    for (;;)
    {
      _writeContext = _writeContext.getParent();
      return;
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      char[] arrayOfChar = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = ']';
    }
  }
  
  public final void writeEndObject()
  {
    if (!_writeContext.inObject()) {
      _reportError("Current context not an object but " + _writeContext.getTypeDesc());
    }
    if (_cfgPrettyPrinter != null) {
      _cfgPrettyPrinter.writeEndObject(this, _writeContext.getEntryCount());
    }
    for (;;)
    {
      _writeContext = _writeContext.getParent();
      return;
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      char[] arrayOfChar = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfChar[i] = '}';
    }
  }
  
  public final void writeFieldName(SerializableString paramSerializableString)
  {
    boolean bool = true;
    int i = _writeContext.writeFieldName(paramSerializableString.getValue());
    if (i == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (i == 1) {}
    for (;;)
    {
      _writeFieldName(paramSerializableString, bool);
      return;
      bool = false;
    }
  }
  
  public final void writeFieldName(String paramString)
  {
    boolean bool = true;
    int i = _writeContext.writeFieldName(paramString);
    if (i == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (i == 1) {}
    for (;;)
    {
      _writeFieldName(paramString, bool);
      return;
      bool = false;
    }
  }
  
  public final void writeNull()
  {
    _verifyValueWrite("write null value");
    _writeNull();
  }
  
  public final void writeNumber(double paramDouble)
  {
    if ((_cfgNumbersAsStrings) || ((isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS)) && ((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble)))))
    {
      writeString(String.valueOf(paramDouble));
      return;
    }
    _verifyValueWrite("write number");
    writeRaw(String.valueOf(paramDouble));
  }
  
  public final void writeNumber(float paramFloat)
  {
    if ((_cfgNumbersAsStrings) || ((isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS)) && ((Float.isNaN(paramFloat)) || (Float.isInfinite(paramFloat)))))
    {
      writeString(String.valueOf(paramFloat));
      return;
    }
    _verifyValueWrite("write number");
    writeRaw(String.valueOf(paramFloat));
  }
  
  public final void writeNumber(int paramInt)
  {
    _verifyValueWrite("write number");
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedInt(paramInt);
      return;
    }
    if (_outputTail + 11 >= _outputEnd) {
      _flushBuffer();
    }
    _outputTail = NumberOutput.outputInt(paramInt, _outputBuffer, _outputTail);
  }
  
  public final void writeNumber(long paramLong)
  {
    _verifyValueWrite("write number");
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedLong(paramLong);
      return;
    }
    if (_outputTail + 21 >= _outputEnd) {
      _flushBuffer();
    }
    _outputTail = NumberOutput.outputLong(paramLong, _outputBuffer, _outputTail);
  }
  
  public final void writeNumber(String paramString)
  {
    _verifyValueWrite("write number");
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedRaw(paramString);
      return;
    }
    writeRaw(paramString);
  }
  
  public final void writeNumber(BigDecimal paramBigDecimal)
  {
    _verifyValueWrite("write number");
    if (paramBigDecimal == null)
    {
      _writeNull();
      return;
    }
    if (_cfgNumbersAsStrings)
    {
      if (isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {}
      for (paramBigDecimal = paramBigDecimal.toPlainString();; paramBigDecimal = paramBigDecimal.toString())
      {
        _writeQuotedRaw(paramBigDecimal);
        return;
      }
    }
    if (isEnabled(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN))
    {
      writeRaw(paramBigDecimal.toPlainString());
      return;
    }
    writeRaw(paramBigDecimal.toString());
  }
  
  public final void writeNumber(BigInteger paramBigInteger)
  {
    _verifyValueWrite("write number");
    if (paramBigInteger == null)
    {
      _writeNull();
      return;
    }
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedRaw(paramBigInteger.toString());
      return;
    }
    writeRaw(paramBigInteger.toString());
  }
  
  public final void writeNumber(short paramShort)
  {
    _verifyValueWrite("write number");
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedShort(paramShort);
      return;
    }
    if (_outputTail + 6 >= _outputEnd) {
      _flushBuffer();
    }
    _outputTail = NumberOutput.outputInt(paramShort, _outputBuffer, _outputTail);
  }
  
  public final void writeRaw(char paramChar)
  {
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = paramChar;
  }
  
  public final void writeRaw(SerializableString paramSerializableString)
  {
    writeRaw(paramSerializableString.getValue());
  }
  
  public final void writeRaw(String paramString)
  {
    int k = paramString.length();
    int j = _outputEnd - _outputTail;
    int i = j;
    if (j == 0)
    {
      _flushBuffer();
      i = _outputEnd - _outputTail;
    }
    if (i >= k)
    {
      paramString.getChars(0, k, _outputBuffer, _outputTail);
      _outputTail += k;
      return;
    }
    writeRawLong(paramString);
  }
  
  public final void writeRaw(String paramString, int paramInt1, int paramInt2)
  {
    int j = _outputEnd - _outputTail;
    int i = j;
    if (j < paramInt2)
    {
      _flushBuffer();
      i = _outputEnd - _outputTail;
    }
    if (i >= paramInt2)
    {
      paramString.getChars(paramInt1, paramInt1 + paramInt2, _outputBuffer, _outputTail);
      _outputTail += paramInt2;
      return;
    }
    writeRawLong(paramString.substring(paramInt1, paramInt1 + paramInt2));
  }
  
  public final void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 32)
    {
      if (paramInt2 > _outputEnd - _outputTail) {
        _flushBuffer();
      }
      System.arraycopy(paramArrayOfChar, paramInt1, _outputBuffer, _outputTail, paramInt2);
      _outputTail += paramInt2;
      return;
    }
    _flushBuffer();
    _writer.write(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public final void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _reportUnsupportedOperation();
  }
  
  public final void writeStartArray()
  {
    _verifyValueWrite("start an array");
    _writeContext = _writeContext.createChildArrayContext();
    if (_cfgPrettyPrinter != null)
    {
      _cfgPrettyPrinter.writeStartArray(this);
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '[';
  }
  
  public final void writeStartObject()
  {
    _verifyValueWrite("start an object");
    _writeContext = _writeContext.createChildObjectContext();
    if (_cfgPrettyPrinter != null)
    {
      _cfgPrettyPrinter.writeStartObject(this);
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '{';
  }
  
  public final void writeString(SerializableString paramSerializableString)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    paramSerializableString = paramSerializableString.asQuotedChars();
    i = paramSerializableString.length;
    if (i < 32)
    {
      if (i > _outputEnd - _outputTail) {
        _flushBuffer();
      }
      System.arraycopy(paramSerializableString, 0, _outputBuffer, _outputTail, i);
      _outputTail += i;
    }
    for (;;)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramSerializableString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramSerializableString[i] = 34;
      return;
      _flushBuffer();
      _writer.write(paramSerializableString, 0, i);
    }
  }
  
  public final void writeString(String paramString)
  {
    _verifyValueWrite("write text value");
    if (paramString == null)
    {
      _writeNull();
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _writeString(paramString);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramString[i] = 34;
  }
  
  public final void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    char[] arrayOfChar = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfChar[i] = '"';
    _writeString(paramArrayOfChar, paramInt1, paramInt2);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramArrayOfChar = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    paramArrayOfChar[paramInt1] = '"';
  }
  
  public final void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _reportUnsupportedOperation();
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.json.WriterBasedJsonGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */