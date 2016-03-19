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
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class UTF8JsonGenerator
  extends JsonGeneratorImpl
{
  private static final byte BYTE_0 = 48;
  private static final byte BYTE_BACKSLASH = 92;
  private static final byte BYTE_COLON = 58;
  private static final byte BYTE_COMMA = 44;
  private static final byte BYTE_LBRACKET = 91;
  private static final byte BYTE_LCURLY = 123;
  private static final byte BYTE_QUOTE = 34;
  private static final byte BYTE_RBRACKET = 93;
  private static final byte BYTE_RCURLY = 125;
  private static final byte BYTE_u = 117;
  private static final byte[] FALSE_BYTES = { 102, 97, 108, 115, 101 };
  static final byte[] HEX_CHARS = ;
  private static final int MAX_BYTES_TO_BUFFER = 512;
  private static final byte[] NULL_BYTES = { 110, 117, 108, 108 };
  private static final byte[] TRUE_BYTES = { 116, 114, 117, 101 };
  protected boolean _bufferRecyclable;
  protected boolean _cfgUnqNames;
  protected char[] _charBuffer;
  protected final int _charBufferLength;
  protected byte[] _entityBuffer;
  protected byte[] _outputBuffer;
  protected final int _outputEnd;
  protected final int _outputMaxContiguous;
  protected final OutputStream _outputStream;
  protected int _outputTail = 0;
  
  public UTF8JsonGenerator(IOContext paramIOContext, int paramInt, ObjectCodec paramObjectCodec, OutputStream paramOutputStream)
  {
    super(paramIOContext, paramInt, paramObjectCodec);
    _outputStream = paramOutputStream;
    _bufferRecyclable = true;
    _outputBuffer = paramIOContext.allocWriteEncodingBuffer();
    _outputEnd = _outputBuffer.length;
    _outputMaxContiguous = (_outputEnd >> 3);
    _charBuffer = paramIOContext.allocConcatBuffer();
    _charBufferLength = _charBuffer.length;
    if (isEnabled(JsonGenerator.Feature.ESCAPE_NON_ASCII)) {
      setHighestNonEscapedChar(127);
    }
    if (!JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(paramInt)) {}
    for (;;)
    {
      _cfgUnqNames = bool;
      return;
      bool = false;
    }
  }
  
  public UTF8JsonGenerator(IOContext paramIOContext, int paramInt1, ObjectCodec paramObjectCodec, OutputStream paramOutputStream, byte[] paramArrayOfByte, int paramInt2, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1, paramObjectCodec);
    _outputStream = paramOutputStream;
    _bufferRecyclable = paramBoolean;
    _outputTail = paramInt2;
    _outputBuffer = paramArrayOfByte;
    _outputEnd = _outputBuffer.length;
    _outputMaxContiguous = (_outputEnd >> 3);
    _charBuffer = paramIOContext.allocConcatBuffer();
    _charBufferLength = _charBuffer.length;
    paramBoolean = bool;
    if (!JsonGenerator.Feature.QUOTE_FIELD_NAMES.enabledIn(paramInt1)) {
      paramBoolean = true;
    }
    _cfgUnqNames = paramBoolean;
  }
  
  private final int _handleLongCustomEscape(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int j = paramArrayOfByte2.length;
    int i;
    if (paramInt1 + j > paramInt2)
    {
      _outputTail = paramInt1;
      _flushBuffer();
      i = _outputTail;
      if (j > paramArrayOfByte1.length)
      {
        _outputStream.write(paramArrayOfByte2, 0, j);
        return i;
      }
      System.arraycopy(paramArrayOfByte2, 0, paramArrayOfByte1, i, j);
      paramInt1 = i + j;
    }
    for (;;)
    {
      i = paramInt1;
      if (paramInt3 * 6 + paramInt1 <= paramInt2) {
        break;
      }
      _flushBuffer();
      return _outputTail;
    }
  }
  
  private final int _outputMultiByteChar(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = _outputBuffer;
    if ((paramInt1 >= 55296) && (paramInt1 <= 57343))
    {
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = 92;
      paramInt2 = i + 1;
      arrayOfByte[i] = 117;
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = HEX_CHARS[(paramInt1 >> 12 & 0xF)];
      paramInt2 = i + 1;
      arrayOfByte[i] = HEX_CHARS[(paramInt1 >> 8 & 0xF)];
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = HEX_CHARS[(paramInt1 >> 4 & 0xF)];
      arrayOfByte[i] = HEX_CHARS[(paramInt1 & 0xF)];
      return i + 1;
    }
    int i = paramInt2 + 1;
    arrayOfByte[paramInt2] = ((byte)(paramInt1 >> 12 | 0xE0));
    paramInt2 = i + 1;
    arrayOfByte[i] = ((byte)(paramInt1 >> 6 & 0x3F | 0x80));
    arrayOfByte[paramInt2] = ((byte)(paramInt1 & 0x3F | 0x80));
    return paramInt2 + 1;
  }
  
  private final int _outputRawMultiByteChar(int paramInt1, char[] paramArrayOfChar, int paramInt2, int paramInt3)
  {
    if ((paramInt1 >= 55296) && (paramInt1 <= 57343))
    {
      if ((paramInt2 >= paramInt3) || (paramArrayOfChar == null)) {
        _reportError("Split surrogate on writeRaw() input (last character)");
      }
      _outputSurrogates(paramInt1, paramArrayOfChar[paramInt2]);
      return paramInt2 + 1;
    }
    paramArrayOfChar = _outputBuffer;
    paramInt3 = _outputTail;
    _outputTail = (paramInt3 + 1);
    paramArrayOfChar[paramInt3] = ((byte)(paramInt1 >> 12 | 0xE0));
    paramInt3 = _outputTail;
    _outputTail = (paramInt3 + 1);
    paramArrayOfChar[paramInt3] = ((byte)(paramInt1 >> 6 & 0x3F | 0x80));
    paramInt3 = _outputTail;
    _outputTail = (paramInt3 + 1);
    paramArrayOfChar[paramInt3] = ((byte)(paramInt1 & 0x3F | 0x80));
    return paramInt2;
  }
  
  private final int _readMore(InputStream paramInputStream, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
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
  
  private final void _writeBytes(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    if (_outputTail + i > _outputEnd)
    {
      _flushBuffer();
      if (i > 512)
      {
        _outputStream.write(paramArrayOfByte, 0, i);
        return;
      }
    }
    System.arraycopy(paramArrayOfByte, 0, _outputBuffer, _outputTail, i);
    _outputTail = (i + _outputTail);
  }
  
  private final void _writeBytes(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (_outputTail + paramInt2 > _outputEnd)
    {
      _flushBuffer();
      if (paramInt2 > 512)
      {
        _outputStream.write(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
    }
    System.arraycopy(paramArrayOfByte, paramInt1, _outputBuffer, _outputTail, paramInt2);
    _outputTail += paramInt2;
  }
  
  private final int _writeCustomEscape(byte[] paramArrayOfByte, int paramInt1, SerializableString paramSerializableString, int paramInt2)
  {
    paramSerializableString = paramSerializableString.asUnquotedUTF8();
    int i = paramSerializableString.length;
    if (i > 6) {
      return _handleLongCustomEscape(paramArrayOfByte, paramInt1, _outputEnd, paramSerializableString, paramInt2);
    }
    System.arraycopy(paramSerializableString, 0, paramArrayOfByte, paramInt1, i);
    return i + paramInt1;
  }
  
  private final void _writeCustomStringSegment2(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (_outputTail + (paramInt2 - paramInt1) * 6 > _outputEnd) {
      _flushBuffer();
    }
    int j = _outputTail;
    byte[] arrayOfByte = _outputBuffer;
    int[] arrayOfInt = _outputEscapes;
    int k;
    CharacterEscapes localCharacterEscapes;
    int i;
    if (_maximumNonEscapedChar <= 0)
    {
      k = 65535;
      localCharacterEscapes = _characterEscapes;
      i = paramInt1;
      paramInt1 = j;
    }
    for (;;)
    {
      if (i >= paramInt2) {
        break label378;
      }
      j = i + 1;
      i = paramArrayOfChar[i];
      int m;
      SerializableString localSerializableString;
      if (i <= 127)
      {
        if (arrayOfInt[i] == 0)
        {
          arrayOfByte[paramInt1] = ((byte)i);
          paramInt1 += 1;
          i = j;
          continue;
          k = _maximumNonEscapedChar;
          break;
        }
        m = arrayOfInt[i];
        if (m > 0)
        {
          i = paramInt1 + 1;
          arrayOfByte[paramInt1] = 92;
          paramInt1 = i + 1;
          arrayOfByte[i] = ((byte)m);
          i = j;
          continue;
        }
        if (m == -2)
        {
          localSerializableString = localCharacterEscapes.getEscapeSequence(i);
          if (localSerializableString == null) {
            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(i) + ", although was supposed to have one");
          }
          paramInt1 = _writeCustomEscape(arrayOfByte, paramInt1, localSerializableString, paramInt2 - j);
          i = j;
          continue;
        }
        paramInt1 = _writeGenericEscape(i, paramInt1);
        i = j;
        continue;
      }
      if (i > k)
      {
        paramInt1 = _writeGenericEscape(i, paramInt1);
        i = j;
      }
      else
      {
        localSerializableString = localCharacterEscapes.getEscapeSequence(i);
        if (localSerializableString != null)
        {
          paramInt1 = _writeCustomEscape(arrayOfByte, paramInt1, localSerializableString, paramInt2 - j);
          i = j;
        }
        else if (i <= 2047)
        {
          m = paramInt1 + 1;
          arrayOfByte[paramInt1] = ((byte)(i >> 6 | 0xC0));
          paramInt1 = m + 1;
          arrayOfByte[m] = ((byte)(i & 0x3F | 0x80));
          i = j;
        }
        else
        {
          paramInt1 = _outputMultiByteChar(i, paramInt1);
          i = j;
        }
      }
    }
    label378:
    _outputTail = paramInt1;
  }
  
  private int _writeGenericEscape(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = _outputBuffer;
    int i = paramInt2 + 1;
    arrayOfByte[paramInt2] = 92;
    paramInt2 = i + 1;
    arrayOfByte[i] = 117;
    if (paramInt1 > 255)
    {
      i = paramInt1 >> 8 & 0xFF;
      int j = paramInt2 + 1;
      arrayOfByte[paramInt2] = HEX_CHARS[(i >> 4)];
      paramInt2 = j + 1;
      arrayOfByte[j] = HEX_CHARS[(i & 0xF)];
      paramInt1 &= 0xFF;
    }
    for (;;)
    {
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = HEX_CHARS[(paramInt1 >> 4)];
      arrayOfByte[i] = HEX_CHARS[(paramInt1 & 0xF)];
      return i + 1;
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = 48;
      paramInt2 = i + 1;
      arrayOfByte[i] = 48;
    }
  }
  
  private void _writeLongString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    arrayOfByte[paramInt1] = 34;
    _writeStringSegments(paramArrayOfChar, 0, paramInt2);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramArrayOfChar = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    paramArrayOfChar[paramInt1] = '"';
  }
  
  private final void _writeNull()
  {
    if (_outputTail + 4 >= _outputEnd) {
      _flushBuffer();
    }
    System.arraycopy(NULL_BYTES, 0, _outputBuffer, _outputTail, 4);
    _outputTail += 4;
  }
  
  private final void _writeQuotedInt(int paramInt)
  {
    if (_outputTail + 13 >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    _outputTail = NumberOutput.outputInt(paramInt, _outputBuffer, _outputTail);
    arrayOfByte = _outputBuffer;
    paramInt = _outputTail;
    _outputTail = (paramInt + 1);
    arrayOfByte[paramInt] = 34;
  }
  
  private final void _writeQuotedLong(long paramLong)
  {
    if (_outputTail + 23 >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    _outputTail = NumberOutput.outputLong(paramLong, _outputBuffer, _outputTail);
    arrayOfByte = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
  }
  
  private final void _writeQuotedRaw(String paramString)
  {
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    writeRaw(paramString);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramString[i] = 34;
  }
  
  private final void _writeQuotedShort(short paramShort)
  {
    if (_outputTail + 8 >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    _outputTail = NumberOutput.outputInt(paramShort, _outputBuffer, _outputTail);
    arrayOfByte = _outputBuffer;
    paramShort = _outputTail;
    _outputTail = (paramShort + 1);
    arrayOfByte[paramShort] = 34;
  }
  
  private final void _writeSegmentedRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int j = _outputEnd;
    byte[] arrayOfByte = _outputBuffer;
    for (;;)
    {
      int k;
      if (paramInt1 < paramInt2) {
        do
        {
          i = paramArrayOfChar[paramInt1];
          if (i >= 128) {
            break;
          }
          if (_outputTail >= j) {
            _flushBuffer();
          }
          k = _outputTail;
          _outputTail = (k + 1);
          arrayOfByte[k] = ((byte)i);
          i = paramInt1 + 1;
          paramInt1 = i;
        } while (i < paramInt2);
      }
      return;
      if (_outputTail + 3 >= _outputEnd) {
        _flushBuffer();
      }
      int i = paramInt1 + 1;
      paramInt1 = paramArrayOfChar[paramInt1];
      if (paramInt1 < 2048)
      {
        k = _outputTail;
        _outputTail = (k + 1);
        arrayOfByte[k] = ((byte)(paramInt1 >> 6 | 0xC0));
        k = _outputTail;
        _outputTail = (k + 1);
        arrayOfByte[k] = ((byte)(paramInt1 & 0x3F | 0x80));
        paramInt1 = i;
      }
      else
      {
        paramInt1 = _outputRawMultiByteChar(paramInt1, paramArrayOfChar, i, paramInt2);
      }
    }
  }
  
  private final void _writeStringSegment(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int j = paramInt2 + paramInt1;
    int i = _outputTail;
    byte[] arrayOfByte = _outputBuffer;
    int[] arrayOfInt = _outputEscapes;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (paramInt2 < j)
    {
      i = paramArrayOfChar[paramInt2];
      if ((i > 127) || (arrayOfInt[i] != 0)) {
        break;
      }
      arrayOfByte[paramInt1] = ((byte)i);
      paramInt2 += 1;
      paramInt1 += 1;
    }
    _outputTail = paramInt1;
    if (paramInt2 < j)
    {
      if (_characterEscapes != null) {
        _writeCustomStringSegment2(paramArrayOfChar, paramInt2, j);
      }
    }
    else {
      return;
    }
    if (_maximumNonEscapedChar == 0)
    {
      _writeStringSegment2(paramArrayOfChar, paramInt2, j);
      return;
    }
    _writeStringSegmentASCII2(paramArrayOfChar, paramInt2, j);
  }
  
  private final void _writeStringSegment2(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (_outputTail + (paramInt2 - paramInt1) * 6 > _outputEnd) {
      _flushBuffer();
    }
    int j = _outputTail;
    byte[] arrayOfByte = _outputBuffer;
    int[] arrayOfInt = _outputEscapes;
    int i = paramInt1;
    paramInt1 = j;
    while (i < paramInt2)
    {
      j = i + 1;
      i = paramArrayOfChar[i];
      int k;
      if (i <= 127)
      {
        if (arrayOfInt[i] == 0)
        {
          arrayOfByte[paramInt1] = ((byte)i);
          paramInt1 += 1;
          i = j;
        }
        else
        {
          k = arrayOfInt[i];
          if (k > 0)
          {
            i = paramInt1 + 1;
            arrayOfByte[paramInt1] = 92;
            paramInt1 = i + 1;
            arrayOfByte[i] = ((byte)k);
            i = j;
          }
          else
          {
            paramInt1 = _writeGenericEscape(i, paramInt1);
            i = j;
          }
        }
      }
      else if (i <= 2047)
      {
        k = paramInt1 + 1;
        arrayOfByte[paramInt1] = ((byte)(i >> 6 | 0xC0));
        paramInt1 = k + 1;
        arrayOfByte[k] = ((byte)(i & 0x3F | 0x80));
        i = j;
      }
      else
      {
        paramInt1 = _outputMultiByteChar(i, paramInt1);
        i = j;
      }
    }
    _outputTail = paramInt1;
  }
  
  private final void _writeStringSegmentASCII2(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (_outputTail + (paramInt2 - paramInt1) * 6 > _outputEnd) {
      _flushBuffer();
    }
    int j = _outputTail;
    byte[] arrayOfByte = _outputBuffer;
    int[] arrayOfInt = _outputEscapes;
    int k = _maximumNonEscapedChar;
    int i = paramInt1;
    paramInt1 = j;
    while (i < paramInt2)
    {
      j = i + 1;
      i = paramArrayOfChar[i];
      int m;
      if (i <= 127)
      {
        if (arrayOfInt[i] == 0)
        {
          arrayOfByte[paramInt1] = ((byte)i);
          paramInt1 += 1;
          i = j;
        }
        else
        {
          m = arrayOfInt[i];
          if (m > 0)
          {
            i = paramInt1 + 1;
            arrayOfByte[paramInt1] = 92;
            paramInt1 = i + 1;
            arrayOfByte[i] = ((byte)m);
            i = j;
          }
          else
          {
            paramInt1 = _writeGenericEscape(i, paramInt1);
            i = j;
          }
        }
      }
      else if (i > k)
      {
        paramInt1 = _writeGenericEscape(i, paramInt1);
        i = j;
      }
      else if (i <= 2047)
      {
        m = paramInt1 + 1;
        arrayOfByte[paramInt1] = ((byte)(i >> 6 | 0xC0));
        paramInt1 = m + 1;
        arrayOfByte[m] = ((byte)(i & 0x3F | 0x80));
        i = j;
      }
      else
      {
        paramInt1 = _outputMultiByteChar(i, paramInt1);
        i = j;
      }
    }
    _outputTail = paramInt1;
  }
  
  private final void _writeStringSegments(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      localObject = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      localObject[i] = 34;
    }
    int i = paramString.length();
    Object localObject = _charBuffer;
    int j = 0;
    while (i > 0)
    {
      int k = Math.min(_outputMaxContiguous, i);
      paramString.getChars(j, j + k, (char[])localObject, 0);
      if (_outputTail + k > _outputEnd) {
        _flushBuffer();
      }
      _writeStringSegment((char[])localObject, 0, k);
      j += k;
      i -= k;
    }
    if (paramBoolean)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramString[i] = 34;
    }
  }
  
  private final void _writeStringSegments(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i;
    do
    {
      i = Math.min(_outputMaxContiguous, paramInt2);
      if (_outputTail + i > _outputEnd) {
        _flushBuffer();
      }
      _writeStringSegment(paramArrayOfChar, paramInt1, i);
      paramInt1 += i;
      i = paramInt2 - i;
      paramInt2 = i;
    } while (i > 0);
  }
  
  private final void _writeUTF8Segment(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = _outputEscapes;
    int i = paramInt1;
    while (i < paramInt1 + paramInt2)
    {
      int j = paramArrayOfByte[i];
      if ((j >= 0) && (arrayOfInt[j] != 0))
      {
        _writeUTF8Segment2(paramArrayOfByte, paramInt1, paramInt2);
        return;
      }
      i += 1;
    }
    if (_outputTail + paramInt2 > _outputEnd) {
      _flushBuffer();
    }
    System.arraycopy(paramArrayOfByte, paramInt1, _outputBuffer, _outputTail, paramInt2);
    _outputTail += paramInt2;
  }
  
  private final void _writeUTF8Segment2(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int j = _outputTail;
    int k = j;
    if (paramInt2 * 6 + j > _outputEnd)
    {
      _flushBuffer();
      k = _outputTail;
    }
    byte[] arrayOfByte = _outputBuffer;
    int[] arrayOfInt = _outputEscapes;
    j = paramInt1;
    for (;;)
    {
      int m = j;
      if (m >= paramInt2 + paramInt1) {
        break;
      }
      j = m + 1;
      int i = paramArrayOfByte[m];
      if ((i < 0) || (arrayOfInt[i] == 0))
      {
        arrayOfByte[k] = i;
        k += 1;
      }
      else
      {
        m = arrayOfInt[i];
        if (m > 0)
        {
          int n = k + 1;
          arrayOfByte[k] = 92;
          k = n + 1;
          arrayOfByte[n] = ((byte)m);
        }
        else
        {
          k = _writeGenericEscape(i, k);
        }
      }
    }
    _outputTail = k;
  }
  
  private final void _writeUTF8Segments(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i;
    do
    {
      i = Math.min(_outputMaxContiguous, paramInt2);
      _writeUTF8Segment(paramArrayOfByte, paramInt1, i);
      paramInt1 += i;
      i = paramInt2 - i;
      paramInt2 = i;
    } while (i > 0);
  }
  
  private final void _writeUnq(SerializableString paramSerializableString)
  {
    int i = paramSerializableString.appendQuotedUTF8(_outputBuffer, _outputTail);
    if (i < 0)
    {
      _writeBytes(paramSerializableString.asQuotedUTF8());
      return;
    }
    _outputTail = (i + _outputTail);
  }
  
  protected final void _flushBuffer()
  {
    int i = _outputTail;
    if (i > 0)
    {
      _outputTail = 0;
      _outputStream.write(_outputBuffer, 0, i);
    }
  }
  
  protected final void _outputSurrogates(int paramInt1, int paramInt2)
  {
    paramInt1 = _decodeSurrogate(paramInt1, paramInt2);
    if (_outputTail + 4 > _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    paramInt2 = _outputTail;
    _outputTail = (paramInt2 + 1);
    arrayOfByte[paramInt2] = ((byte)(paramInt1 >> 18 | 0xF0));
    paramInt2 = _outputTail;
    _outputTail = (paramInt2 + 1);
    arrayOfByte[paramInt2] = ((byte)(paramInt1 >> 12 & 0x3F | 0x80));
    paramInt2 = _outputTail;
    _outputTail = (paramInt2 + 1);
    arrayOfByte[paramInt2] = ((byte)(paramInt1 >> 6 & 0x3F | 0x80));
    paramInt2 = _outputTail;
    _outputTail = (paramInt2 + 1);
    arrayOfByte[paramInt2] = ((byte)(paramInt1 & 0x3F | 0x80));
  }
  
  protected void _releaseBuffers()
  {
    Object localObject = _outputBuffer;
    if ((localObject != null) && (_bufferRecyclable))
    {
      _outputBuffer = null;
      _ioContext.releaseWriteEncodingBuffer((byte[])localObject);
    }
    localObject = _charBuffer;
    if (localObject != null)
    {
      _charBuffer = null;
      _ioContext.releaseConcatBuffer((char[])localObject);
    }
  }
  
  protected final void _verifyPrettyValueWrite(String paramString, int paramInt)
  {
    switch (paramInt)
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
    int j = _writeContext.writeValue();
    if (j == 5) {
      _reportError("Can not " + paramString + ", expecting field name");
    }
    if (_cfgPrettyPrinter == null)
    {
      switch (j)
      {
      }
      do
      {
        do
        {
          return;
          for (int i = 44;; i = 58)
          {
            if (_outputTail >= _outputEnd) {
              _flushBuffer();
            }
            _outputBuffer[_outputTail] = i;
            _outputTail += 1;
            return;
          }
        } while (_rootValueSeparator == null);
        paramString = _rootValueSeparator.asUnquotedUTF8();
      } while (paramString.length <= 0);
      _writeBytes(paramString);
      return;
    }
    _verifyPrettyValueWrite(paramString, j);
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
        byte[] arrayOfByte = _outputBuffer;
        i = _outputTail;
        _outputTail = (i + 1);
        arrayOfByte[i] = 92;
        arrayOfByte = _outputBuffer;
        i = _outputTail;
        _outputTail = (i + 1);
        arrayOfByte[i] = 110;
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
        byte[] arrayOfByte = _outputBuffer;
        paramInt = _outputTail;
        _outputTail = (paramInt + 1);
        arrayOfByte[paramInt] = 92;
        arrayOfByte = _outputBuffer;
        paramInt = _outputTail;
        _outputTail = (paramInt + 1);
        arrayOfByte[paramInt] = 110;
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
        byte[] arrayOfByte = _outputBuffer;
        paramInt1 = _outputTail;
        _outputTail = (paramInt1 + 1);
        arrayOfByte[paramInt1] = 92;
        arrayOfByte = _outputBuffer;
        paramInt1 = _outputTail;
        _outputTail = (paramInt1 + 1);
        arrayOfByte[paramInt1] = 110;
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
  
  protected final void _writePPFieldName(SerializableString paramSerializableString)
  {
    int i = 1;
    int j = _writeContext.writeFieldName(paramSerializableString.getValue());
    if (j == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (j == 1)
    {
      _cfgPrettyPrinter.writeObjectEntrySeparator(this);
      if (_cfgUnqNames) {
        break label158;
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        if (_outputTail >= _outputEnd) {
          _flushBuffer();
        }
        byte[] arrayOfByte = _outputBuffer;
        j = _outputTail;
        _outputTail = (j + 1);
        arrayOfByte[j] = 34;
      }
      _writeBytes(paramSerializableString.asQuotedUTF8());
      if (i != 0)
      {
        if (_outputTail >= _outputEnd) {
          _flushBuffer();
        }
        paramSerializableString = _outputBuffer;
        i = _outputTail;
        _outputTail = (i + 1);
        paramSerializableString[i] = 34;
      }
      return;
      _cfgPrettyPrinter.beforeObjectEntries(this);
      break;
      label158:
      i = 0;
    }
  }
  
  protected final void _writePPFieldName(String paramString)
  {
    int i = _writeContext.writeFieldName(paramString);
    if (i == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (i == 1) {
      _cfgPrettyPrinter.writeObjectEntrySeparator(this);
    }
    while (_cfgUnqNames)
    {
      _writeStringSegments(paramString, false);
      return;
      _cfgPrettyPrinter.beforeObjectEntries(this);
    }
    i = paramString.length();
    if (i > _charBufferLength)
    {
      _writeStringSegments(paramString, true);
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int j = _outputTail;
    _outputTail = (j + 1);
    arrayOfByte[j] = 34;
    paramString.getChars(0, i, _charBuffer, 0);
    if (i <= _outputMaxContiguous)
    {
      if (_outputTail + i > _outputEnd) {
        _flushBuffer();
      }
      _writeStringSegment(_charBuffer, 0, i);
    }
    for (;;)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramString[i] = 34;
      return;
      _writeStringSegments(_charBuffer, 0, i);
    }
  }
  
  public void close()
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
    if (_outputStream != null)
    {
      if ((!_ioContext.isResourceManaged()) && (!isEnabled(JsonGenerator.Feature.AUTO_CLOSE_TARGET))) {
        break label97;
      }
      _outputStream.close();
    }
    for (;;)
    {
      _releaseBuffers();
      return;
      label97:
      if (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM)) {
        _outputStream.flush();
      }
    }
  }
  
  public void flush()
  {
    _flushBuffer();
    if ((_outputStream != null) && (isEnabled(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM))) {
      _outputStream.flush();
    }
  }
  
  public Object getOutputTarget()
  {
    return _outputStream;
  }
  
  public int writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, int paramInt)
  {
    _verifyValueWrite("write binary value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    arrayOfByte = _ioContext.allocBase64Buffer();
    if (paramInt < 0) {}
    for (;;)
    {
      try
      {
        i = _writeBinary(paramBase64Variant, paramInputStream, arrayOfByte);
        _ioContext.releaseBase64Buffer(arrayOfByte);
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
        _ioContext.releaseBase64Buffer(arrayOfByte);
      }
      j = _writeBinary(paramBase64Variant, paramInputStream, arrayOfByte, paramInt);
      i = paramInt;
      if (j > 0)
      {
        _reportError("Too few bytes available: missing " + j + " bytes (out of " + paramInt + ")");
        i = paramInt;
      }
    }
  }
  
  public void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write binary value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    _writeBinary(paramBase64Variant, paramArrayOfByte, paramInt1, paramInt1 + paramInt2);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramBase64Variant = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    paramBase64Variant[paramInt1] = 34;
  }
  
  public void writeBoolean(boolean paramBoolean)
  {
    _verifyValueWrite("write boolean value");
    if (_outputTail + 5 >= _outputEnd) {
      _flushBuffer();
    }
    if (paramBoolean) {}
    for (byte[] arrayOfByte = TRUE_BYTES;; arrayOfByte = FALSE_BYTES)
    {
      int i = arrayOfByte.length;
      System.arraycopy(arrayOfByte, 0, _outputBuffer, _outputTail, i);
      _outputTail += i;
      return;
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
      byte[] arrayOfByte = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = 93;
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
      byte[] arrayOfByte = _outputBuffer;
      int i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = 125;
    }
  }
  
  public void writeFieldName(SerializableString paramSerializableString)
  {
    if (_cfgPrettyPrinter != null)
    {
      _writePPFieldName(paramSerializableString);
      return;
    }
    int i = _writeContext.writeFieldName(paramSerializableString.getValue());
    if (i == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (i == 1)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      arrayOfByte = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = 44;
    }
    if (_cfgUnqNames)
    {
      _writeUnq(paramSerializableString);
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    i = paramSerializableString.appendQuotedUTF8(_outputBuffer, _outputTail);
    if (i < 0) {
      _writeBytes(paramSerializableString.asQuotedUTF8());
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
      _outputTail = (i + _outputTail);
    }
  }
  
  public void writeFieldName(String paramString)
  {
    if (_cfgPrettyPrinter != null)
    {
      _writePPFieldName(paramString);
      return;
    }
    int i = _writeContext.writeFieldName(paramString);
    if (i == 4) {
      _reportError("Can not write a field name, expecting a value");
    }
    if (i == 1)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      arrayOfByte = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = 44;
    }
    if (_cfgUnqNames)
    {
      _writeStringSegments(paramString, false);
      return;
    }
    i = paramString.length();
    if (i > _charBufferLength)
    {
      _writeStringSegments(paramString, true);
      return;
    }
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int j = _outputTail;
    _outputTail = (j + 1);
    arrayOfByte[j] = 34;
    paramString.getChars(0, i, _charBuffer, 0);
    if (i <= _outputMaxContiguous)
    {
      if (_outputTail + i > _outputEnd) {
        _flushBuffer();
      }
      _writeStringSegment(_charBuffer, 0, i);
    }
    for (;;)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramString = _outputBuffer;
      i = _outputTail;
      _outputTail = (i + 1);
      paramString[i] = 34;
      return;
      _writeStringSegments(_charBuffer, 0, i);
    }
  }
  
  public void writeNull()
  {
    _verifyValueWrite("write null value");
    _writeNull();
  }
  
  public void writeNumber(double paramDouble)
  {
    if ((_cfgNumbersAsStrings) || (((Double.isNaN(paramDouble)) || (Double.isInfinite(paramDouble))) && (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))))
    {
      writeString(String.valueOf(paramDouble));
      return;
    }
    _verifyValueWrite("write number");
    writeRaw(String.valueOf(paramDouble));
  }
  
  public void writeNumber(float paramFloat)
  {
    if ((_cfgNumbersAsStrings) || (((Float.isNaN(paramFloat)) || (Float.isInfinite(paramFloat))) && (isEnabled(JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS))))
    {
      writeString(String.valueOf(paramFloat));
      return;
    }
    _verifyValueWrite("write number");
    writeRaw(String.valueOf(paramFloat));
  }
  
  public void writeNumber(int paramInt)
  {
    _verifyValueWrite("write number");
    if (_outputTail + 11 >= _outputEnd) {
      _flushBuffer();
    }
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedInt(paramInt);
      return;
    }
    _outputTail = NumberOutput.outputInt(paramInt, _outputBuffer, _outputTail);
  }
  
  public void writeNumber(long paramLong)
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
  
  public void writeNumber(String paramString)
  {
    _verifyValueWrite("write number");
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedRaw(paramString);
      return;
    }
    writeRaw(paramString);
  }
  
  public void writeNumber(BigDecimal paramBigDecimal)
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
  
  public void writeNumber(BigInteger paramBigInteger)
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
  
  public void writeNumber(short paramShort)
  {
    _verifyValueWrite("write number");
    if (_outputTail + 6 >= _outputEnd) {
      _flushBuffer();
    }
    if (_cfgNumbersAsStrings)
    {
      _writeQuotedShort(paramShort);
      return;
    }
    _outputTail = NumberOutput.outputInt(paramShort, _outputBuffer, _outputTail);
  }
  
  public void writeRaw(char paramChar)
  {
    if (_outputTail + 3 >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i;
    if (paramChar <= '')
    {
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = ((byte)paramChar);
      return;
    }
    if (paramChar < 'ࠀ')
    {
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = ((byte)(paramChar >> '\006' | 0xC0));
      i = _outputTail;
      _outputTail = (i + 1);
      arrayOfByte[i] = ((byte)(paramChar & 0x3F | 0x80));
      return;
    }
    _outputRawMultiByteChar(paramChar, null, 0, 0);
  }
  
  public void writeRaw(SerializableString paramSerializableString)
  {
    paramSerializableString = paramSerializableString.asUnquotedUTF8();
    if (paramSerializableString.length > 0) {
      _writeBytes(paramSerializableString);
    }
  }
  
  public void writeRaw(String paramString)
  {
    int i = paramString.length();
    int j = 0;
    while (i > 0)
    {
      char[] arrayOfChar = _charBuffer;
      int m = arrayOfChar.length;
      int k = m;
      if (i < m) {
        k = i;
      }
      paramString.getChars(j, j + k, arrayOfChar, 0);
      writeRaw(arrayOfChar, 0, k);
      j += k;
      i -= k;
    }
  }
  
  public void writeRaw(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (paramInt1 > 0)
    {
      char[] arrayOfChar = _charBuffer;
      int j = arrayOfChar.length;
      i = j;
      if (paramInt1 < j) {
        i = paramInt1;
      }
      paramString.getChars(paramInt2, paramInt2 + i, arrayOfChar, 0);
      writeRaw(arrayOfChar, 0, i);
      paramInt2 += i;
      paramInt1 -= i;
    }
  }
  
  public final void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramInt2 + paramInt2 + paramInt2;
    if (_outputTail + i > _outputEnd) {
      if (_outputEnd < i) {
        _writeSegmentedRaw(paramArrayOfChar, paramInt1, paramInt2);
      }
    }
    label103:
    label202:
    for (;;)
    {
      return;
      _flushBuffer();
      i = paramInt2 + paramInt1;
      for (;;)
      {
        if (paramInt1 >= i) {
          break label202;
        }
        byte[] arrayOfByte;
        int j;
        for (;;)
        {
          paramInt2 = paramArrayOfChar[paramInt1];
          if (paramInt2 > 127) {
            break label103;
          }
          arrayOfByte = _outputBuffer;
          j = _outputTail;
          _outputTail = (j + 1);
          arrayOfByte[j] = ((byte)paramInt2);
          paramInt1 += 1;
          if (paramInt1 >= i) {
            break;
          }
        }
        paramInt2 = paramInt1 + 1;
        paramInt1 = paramArrayOfChar[paramInt1];
        if (paramInt1 < 2048)
        {
          arrayOfByte = _outputBuffer;
          j = _outputTail;
          _outputTail = (j + 1);
          arrayOfByte[j] = ((byte)(paramInt1 >> 6 | 0xC0));
          arrayOfByte = _outputBuffer;
          j = _outputTail;
          _outputTail = (j + 1);
          arrayOfByte[j] = ((byte)(paramInt1 & 0x3F | 0x80));
          paramInt1 = paramInt2;
        }
        else
        {
          paramInt1 = _outputRawMultiByteChar(paramInt1, paramArrayOfChar, paramInt2, i);
        }
      }
    }
  }
  
  public void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    _writeBytes(paramArrayOfByte, paramInt1, paramInt2);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramArrayOfByte = _outputBuffer;
    paramInt1 = _outputTail;
    _outputTail = (paramInt1 + 1);
    paramArrayOfByte[paramInt1] = 34;
  }
  
  public void writeRawValue(SerializableString paramSerializableString)
  {
    _verifyValueWrite("write raw value");
    paramSerializableString = paramSerializableString.asUnquotedUTF8();
    if (paramSerializableString.length > 0) {
      _writeBytes(paramSerializableString);
    }
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
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 91;
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
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 123;
  }
  
  public final void writeString(SerializableString paramSerializableString)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    i = paramSerializableString.appendQuotedUTF8(_outputBuffer, _outputTail);
    if (i < 0) {
      _writeBytes(paramSerializableString.asQuotedUTF8());
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
      _outputTail = (i + _outputTail);
    }
  }
  
  public void writeString(String paramString)
  {
    _verifyValueWrite("write text value");
    if (paramString == null)
    {
      _writeNull();
      return;
    }
    int i = paramString.length();
    if (i > _charBufferLength)
    {
      _writeStringSegments(paramString, true);
      return;
    }
    paramString.getChars(0, i, _charBuffer, 0);
    if (i > _outputMaxContiguous)
    {
      _writeLongString(_charBuffer, 0, i);
      return;
    }
    if (_outputTail + i >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    int j = _outputTail;
    _outputTail = (j + 1);
    paramString[j] = 34;
    _writeStringSegment(_charBuffer, 0, i);
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    paramString = _outputBuffer;
    i = _outputTail;
    _outputTail = (i + 1);
    paramString[i] = 34;
  }
  
  public void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    if (paramInt2 <= _outputMaxContiguous)
    {
      if (_outputTail + paramInt2 > _outputEnd) {
        _flushBuffer();
      }
      _writeStringSegment(paramArrayOfChar, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramArrayOfChar = _outputBuffer;
      paramInt1 = _outputTail;
      _outputTail = (paramInt1 + 1);
      paramArrayOfChar[paramInt1] = '"';
      return;
      _writeStringSegments(paramArrayOfChar, paramInt1, paramInt2);
    }
  }
  
  public void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    _verifyValueWrite("write text value");
    if (_outputTail >= _outputEnd) {
      _flushBuffer();
    }
    byte[] arrayOfByte = _outputBuffer;
    int i = _outputTail;
    _outputTail = (i + 1);
    arrayOfByte[i] = 34;
    if (paramInt2 <= _outputMaxContiguous) {
      _writeUTF8Segment(paramArrayOfByte, paramInt1, paramInt2);
    }
    for (;;)
    {
      if (_outputTail >= _outputEnd) {
        _flushBuffer();
      }
      paramArrayOfByte = _outputBuffer;
      paramInt1 = _outputTail;
      _outputTail = (paramInt1 + 1);
      paramArrayOfByte[paramInt1] = 34;
      return;
      _writeUTF8Segments(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.json.UTF8JsonGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */