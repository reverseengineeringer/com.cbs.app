package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.BytesToNameCanonicalizer;
import com.fasterxml.jackson.core.sym.Name;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Arrays;

public class UTF8StreamJsonParser
  extends ParserBase
{
  static final byte BYTE_LF = 10;
  protected static final int[] _icLatin1 = CharTypes.getInputCodeLatin1();
  private static final int[] _icUTF8 = ;
  protected boolean _bufferRecyclable;
  protected byte[] _inputBuffer;
  protected InputStream _inputStream;
  protected ObjectCodec _objectCodec;
  private int _quad1;
  protected int[] _quadBuffer = new int[16];
  protected final BytesToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  
  public UTF8StreamJsonParser(IOContext paramIOContext, int paramInt1, InputStream paramInputStream, ObjectCodec paramObjectCodec, BytesToNameCanonicalizer paramBytesToNameCanonicalizer, byte[] paramArrayOfByte, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1);
    _inputStream = paramInputStream;
    _objectCodec = paramObjectCodec;
    _symbols = paramBytesToNameCanonicalizer;
    _inputBuffer = paramArrayOfByte;
    _inputPtr = paramInt2;
    _inputEnd = paramInt3;
    _currInputRowStart = paramInt2;
    _currInputProcessed = (-paramInt2);
    _bufferRecyclable = paramBoolean;
  }
  
  private final void _checkMatchEnd(String paramString, int paramInt1, int paramInt2)
  {
    if (Character.isJavaIdentifierPart((char)_decodeCharForError(paramInt2))) {
      _reportInvalidToken(paramString.substring(0, paramInt1));
    }
  }
  
  private final int _decodeUtf8_2(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    return i & 0x3F | (paramInt & 0x1F) << 6;
  }
  
  private final int _decodeUtf8_3(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_3fast(int paramInt)
  {
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    return ((paramInt & 0xF) << 6 | i & 0x3F) << 6 | j & 0x3F;
  }
  
  private final int _decodeUtf8_4(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i];
    if ((i & 0xC0) != 128) {
      _reportInvalidOther(i & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    if ((j & 0xC0) != 128) {
      _reportInvalidOther(j & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    _inputPtr = (k + 1);
    k = arrayOfByte[k];
    if ((k & 0xC0) != 128) {
      _reportInvalidOther(k & 0xFF, _inputPtr);
    }
    return (((i & 0x3F | (paramInt & 0x7) << 6) << 6 | j & 0x3F) << 6 | k & 0x3F) - 65536;
  }
  
  private final void _finishString2(char[] paramArrayOfChar, int paramInt)
  {
    int[] arrayOfInt = _icUTF8;
    byte[] arrayOfByte = _inputBuffer;
    char[] arrayOfChar = paramArrayOfChar;
    int i = _inputPtr;
    int j = i;
    if (i >= _inputEnd)
    {
      loadMoreGuaranteed();
      j = _inputPtr;
    }
    paramArrayOfChar = arrayOfChar;
    i = paramInt;
    if (paramInt >= arrayOfChar.length)
    {
      paramArrayOfChar = _textBuffer.finishCurrentSegment();
      i = 0;
    }
    int k = Math.min(_inputEnd, paramArrayOfChar.length - i + j);
    label78:
    if (j < k)
    {
      paramInt = j + 1;
      j = arrayOfByte[j] & 0xFF;
      if (arrayOfInt[j] != 0)
      {
        _inputPtr = paramInt;
        if (j == 34) {
          break label369;
        }
        switch (arrayOfInt[j])
        {
        default: 
          if (j < 32)
          {
            _throwUnquotedSpace(j, "string value");
            paramInt = j;
            label174:
            if (i < paramArrayOfChar.length) {
              break label378;
            }
            paramArrayOfChar = _textBuffer.finishCurrentSegment();
            i = 0;
          }
          break;
        }
      }
    }
    label369:
    label378:
    for (;;)
    {
      j = i + 1;
      paramArrayOfChar[i] = ((char)paramInt);
      arrayOfChar = paramArrayOfChar;
      paramInt = j;
      break;
      paramArrayOfChar[i] = ((char)j);
      j = paramInt;
      i += 1;
      break label78;
      _inputPtr = j;
      arrayOfChar = paramArrayOfChar;
      paramInt = i;
      break;
      paramInt = _decodeEscaped();
      break label174;
      paramInt = _decodeUtf8_2(j);
      break label174;
      if (_inputEnd - _inputPtr >= 2)
      {
        paramInt = _decodeUtf8_3fast(j);
        break label174;
      }
      paramInt = _decodeUtf8_3(j);
      break label174;
      k = _decodeUtf8_4(j);
      j = i + 1;
      paramArrayOfChar[i] = ((char)(0xD800 | k >> 10));
      paramInt = j;
      arrayOfChar = paramArrayOfChar;
      if (j >= paramArrayOfChar.length)
      {
        arrayOfChar = _textBuffer.finishCurrentSegment();
        paramInt = 0;
      }
      i = paramInt;
      paramInt = k & 0x3FF | 0xDC00;
      paramArrayOfChar = arrayOfChar;
      break label174;
      _reportInvalidChar(j);
      paramInt = j;
      break label174;
      _textBuffer.setCurrentLength(i);
      return;
    }
  }
  
  private final boolean _isNextTokenNameMaybe(int paramInt, SerializableString paramSerializableString)
  {
    String str = _parseName(paramInt).getName();
    _parsingContext.setCurrentName(str);
    boolean bool = str.equals(paramSerializableString.getValue());
    _currToken = JsonToken.FIELD_NAME;
    paramInt = _skipColon();
    if (paramInt == 34)
    {
      _tokenIncomplete = true;
      _nextToken = JsonToken.VALUE_STRING;
      return bool;
    }
    switch (paramInt)
    {
    default: 
      paramSerializableString = _handleUnexpectedValue(paramInt);
    }
    for (;;)
    {
      _nextToken = paramSerializableString;
      return bool;
      paramSerializableString = JsonToken.START_ARRAY;
      continue;
      paramSerializableString = JsonToken.START_OBJECT;
      continue;
      _matchToken("true", 1);
      paramSerializableString = JsonToken.VALUE_TRUE;
      continue;
      _matchToken("false", 1);
      paramSerializableString = JsonToken.VALUE_FALSE;
      continue;
      _matchToken("null", 1);
      paramSerializableString = JsonToken.VALUE_NULL;
      continue;
      paramSerializableString = _parseNegNumber();
      continue;
      paramSerializableString = _parsePosNumber(paramInt);
    }
  }
  
  private final void _isNextTokenNameYes(int paramInt)
  {
    _currToken = JsonToken.FIELD_NAME;
    switch (paramInt)
    {
    default: 
      _nextToken = _handleUnexpectedValue(paramInt);
      return;
    case 34: 
      _tokenIncomplete = true;
      _nextToken = JsonToken.VALUE_STRING;
      return;
    case 91: 
      _nextToken = JsonToken.START_ARRAY;
      return;
    case 123: 
      _nextToken = JsonToken.START_OBJECT;
      return;
    case 116: 
      _matchToken("true", 1);
      _nextToken = JsonToken.VALUE_TRUE;
      return;
    case 102: 
      _matchToken("false", 1);
      _nextToken = JsonToken.VALUE_FALSE;
      return;
    case 110: 
      _matchToken("null", 1);
      _nextToken = JsonToken.VALUE_NULL;
      return;
    case 45: 
      _nextToken = _parseNegNumber();
      return;
    }
    _nextToken = _parsePosNumber(paramInt);
  }
  
  private final void _matchToken2(String paramString, int paramInt)
  {
    int j = paramString.length();
    int i;
    do
    {
      if (((_inputPtr >= _inputEnd) && (!loadMore())) || (_inputBuffer[_inputPtr] != paramString.charAt(paramInt))) {
        _reportInvalidToken(paramString.substring(0, paramInt));
      }
      _inputPtr += 1;
      i = paramInt + 1;
      paramInt = i;
    } while (i < j);
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    do
    {
      return;
      paramInt = _inputBuffer[_inputPtr] & 0xFF;
    } while ((paramInt < 48) || (paramInt == 93) || (paramInt == 125));
    _checkMatchEnd(paramString, i, paramInt);
  }
  
  private final JsonToken _nextAfterName()
  {
    _nameCopied = false;
    JsonToken localJsonToken = _nextToken;
    _nextToken = null;
    if (localJsonToken == JsonToken.START_ARRAY) {
      _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
    }
    for (;;)
    {
      _currToken = localJsonToken;
      return localJsonToken;
      if (localJsonToken == JsonToken.START_OBJECT) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
    }
  }
  
  private final JsonToken _nextTokenNotInObject(int paramInt)
  {
    if (paramInt == 34)
    {
      _tokenIncomplete = true;
      localJsonToken = JsonToken.VALUE_STRING;
      _currToken = localJsonToken;
      return localJsonToken;
    }
    switch (paramInt)
    {
    default: 
      localJsonToken = _handleUnexpectedValue(paramInt);
      _currToken = localJsonToken;
      return localJsonToken;
    case 91: 
      _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
      localJsonToken = JsonToken.START_ARRAY;
      _currToken = localJsonToken;
      return localJsonToken;
    case 123: 
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      localJsonToken = JsonToken.START_OBJECT;
      _currToken = localJsonToken;
      return localJsonToken;
    case 116: 
      _matchToken("true", 1);
      localJsonToken = JsonToken.VALUE_TRUE;
      _currToken = localJsonToken;
      return localJsonToken;
    case 102: 
      _matchToken("false", 1);
      localJsonToken = JsonToken.VALUE_FALSE;
      _currToken = localJsonToken;
      return localJsonToken;
    case 110: 
      _matchToken("null", 1);
      localJsonToken = JsonToken.VALUE_NULL;
      _currToken = localJsonToken;
      return localJsonToken;
    case 45: 
      localJsonToken = _parseNegNumber();
      _currToken = localJsonToken;
      return localJsonToken;
    }
    JsonToken localJsonToken = _parsePosNumber(paramInt);
    _currToken = localJsonToken;
    return localJsonToken;
  }
  
  private final JsonToken _parseFloat(char[] paramArrayOfChar, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    int k = 0;
    int m = 0;
    int j = 0;
    int i;
    label55:
    Object localObject;
    if (paramInt2 == 46)
    {
      m = paramInt1 + 1;
      paramArrayOfChar[paramInt1] = ((char)paramInt2);
      i = paramInt2;
      paramInt1 = m;
      paramInt2 = k;
      if ((_inputPtr >= _inputEnd) && (!loadMore()))
      {
        j = 1;
        if (paramInt2 == 0) {
          reportUnexpectedNumberChar(i, "Decimal point not followed by a digit");
        }
        k = paramInt2;
        paramInt2 = j;
        localObject = paramArrayOfChar;
      }
    }
    for (;;)
    {
      m = 0;
      label206:
      label266:
      label353:
      int n;
      int i1;
      int i2;
      if ((i == 101) || (i == 69))
      {
        j = paramInt1;
        paramArrayOfChar = (char[])localObject;
        if (paramInt1 >= localObject.length)
        {
          paramArrayOfChar = _textBuffer.finishCurrentSegment();
          j = 0;
        }
        paramInt1 = j + 1;
        paramArrayOfChar[j] = ((char)i);
        if (_inputPtr >= _inputEnd) {
          loadMoreGuaranteed();
        }
        localObject = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = localObject[i] & 0xFF;
        if ((i == 45) || (i == 43)) {
          if (paramInt1 >= paramArrayOfChar.length)
          {
            paramArrayOfChar = _textBuffer.finishCurrentSegment();
            paramInt1 = 0;
            paramArrayOfChar[paramInt1] = ((char)i);
            if (_inputPtr >= _inputEnd) {
              loadMoreGuaranteed();
            }
            localObject = _inputBuffer;
            i = _inputPtr;
            _inputPtr = (i + 1);
            i = localObject[i] & 0xFF;
            paramInt1 += 1;
            j = m;
            if ((i <= 57) && (i >= 48))
            {
              j += 1;
              m = paramInt1;
              localObject = paramArrayOfChar;
              if (paramInt1 >= paramArrayOfChar.length)
              {
                localObject = _textBuffer.finishCurrentSegment();
                m = 0;
              }
              paramInt1 = m + 1;
              localObject[m] = ((char)i);
              if ((_inputPtr >= _inputEnd) && (!loadMore()))
              {
                m = j;
                paramInt2 = 1;
                j = paramInt1;
                paramInt1 = m;
                m = paramInt1;
                n = paramInt2;
                i1 = i;
                i2 = j;
                if (paramInt1 == 0)
                {
                  reportUnexpectedNumberChar(i, "Exponent indicator not followed by a digit");
                  i2 = j;
                  i1 = i;
                  n = paramInt2;
                  m = paramInt1;
                }
                label394:
                if (n == 0)
                {
                  _inputPtr -= 1;
                  if (_parsingContext.inRoot()) {
                    _verifyRootSpace(i1);
                  }
                }
                _textBuffer.setCurrentLength(i2);
                return resetFloat(paramBoolean, paramInt3, k, m);
                localObject = _inputBuffer;
                i = _inputPtr;
                _inputPtr = (i + 1);
                i = localObject[i] & 0xFF;
                if ((i < 48) || (i > 57)) {
                  break label606;
                }
                paramInt2 += 1;
                if (paramInt1 < paramArrayOfChar.length) {
                  break label603;
                }
                paramArrayOfChar = _textBuffer.finishCurrentSegment();
                paramInt1 = 0;
              }
            }
          }
        }
      }
      label603:
      for (;;)
      {
        k = paramInt1 + 1;
        paramArrayOfChar[paramInt1] = ((char)i);
        paramInt1 = k;
        break;
        paramArrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = paramArrayOfChar[i] & 0xFF;
        paramArrayOfChar = (char[])localObject;
        break label266;
        m = paramInt1;
        paramInt1 = j;
        j = m;
        break label353;
        break label206;
        j = m;
        break label266;
        m = 0;
        n = paramInt2;
        i1 = i;
        i2 = paramInt1;
        break label394;
      }
      label606:
      break label55;
      k = 0;
      i = paramInt2;
      localObject = paramArrayOfChar;
      paramInt2 = m;
    }
  }
  
  private final JsonToken _parseNumber2(char[] paramArrayOfChar, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore()))
    {
      _textBuffer.setCurrentLength(paramInt1);
      return resetInt(paramBoolean, paramInt2);
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    int j = arrayOfByte[i] & 0xFF;
    if ((j > 57) || (j < 48))
    {
      if ((j == 46) || (j == 101) || (j == 69)) {
        return _parseFloat(paramArrayOfChar, paramInt1, j, paramBoolean, paramInt2);
      }
    }
    else
    {
      if (paramInt1 < paramArrayOfChar.length) {
        break label215;
      }
      paramArrayOfChar = _textBuffer.finishCurrentSegment();
      paramInt1 = 0;
    }
    label215:
    for (;;)
    {
      i = paramInt1 + 1;
      paramArrayOfChar[paramInt1] = ((char)j);
      paramInt2 += 1;
      paramInt1 = i;
      break;
      _inputPtr -= 1;
      _textBuffer.setCurrentLength(paramInt1);
      if (_parsingContext.inRoot())
      {
        paramArrayOfChar = _inputBuffer;
        paramInt1 = _inputPtr;
        _inputPtr = (paramInt1 + 1);
        _verifyRootSpace(paramArrayOfChar[paramInt1] & 0xFF);
      }
      return resetInt(paramBoolean, paramInt2);
    }
  }
  
  private final void _skipCComment()
  {
    int[] arrayOfInt = CharTypes.getInputCodeComment();
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      int j = arrayOfInt[i];
      if (j != 0) {
        switch (j)
        {
        default: 
          _reportInvalidChar(i);
          break;
        case 42: 
          if ((_inputPtr >= _inputEnd) && (!loadMore())) {
            break label219;
          }
          if (_inputBuffer[_inputPtr] == 47)
          {
            _inputPtr += 1;
            return;
          }
          break;
        case 10: 
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
          break;
        case 13: 
          _skipCR();
          break;
        case 2: 
          _skipUtf8_2(i);
          break;
        case 3: 
          _skipUtf8_3(i);
          break;
        case 4: 
          _skipUtf8_4(i);
        }
      }
    }
    label219:
    _reportInvalidEOF(" in a comment");
  }
  
  private final int _skipColon()
  {
    if (_inputPtr + 4 >= _inputEnd) {
      return _skipColon2(false);
    }
    int j = _inputBuffer[_inputPtr];
    byte[] arrayOfByte;
    int i;
    if (j == 58)
    {
      arrayOfByte = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfByte[i];
      if (i > 32)
      {
        if ((i == 47) || (i == 35)) {
          return _skipColon2(true);
        }
        _inputPtr += 1;
        return i;
      }
      if ((i == 32) || (i == 9))
      {
        arrayOfByte = _inputBuffer;
        i = _inputPtr + 1;
        _inputPtr = i;
        i = arrayOfByte[i];
        if (i > 32)
        {
          if ((i == 47) || (i == 35)) {
            return _skipColon2(true);
          }
          _inputPtr += 1;
          return i;
        }
      }
      return _skipColon2(true);
    }
    if (j != 32)
    {
      i = j;
      if (j != 9) {}
    }
    else
    {
      arrayOfByte = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfByte[i];
    }
    if (i == 58)
    {
      arrayOfByte = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfByte[i];
      if (i > 32)
      {
        if ((i == 47) || (i == 35)) {
          return _skipColon2(true);
        }
        _inputPtr += 1;
        return i;
      }
      if ((i == 32) || (i == 9))
      {
        arrayOfByte = _inputBuffer;
        i = _inputPtr + 1;
        _inputPtr = i;
        i = arrayOfByte[i];
        if (i > 32)
        {
          if ((i == 47) || (i == 35)) {
            return _skipColon2(true);
          }
          _inputPtr += 1;
          return i;
        }
      }
      return _skipColon2(true);
    }
    return _skipColon2(false);
  }
  
  private final int _skipColon2(boolean paramBoolean)
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (i > 32)
      {
        if (i == 47)
        {
          _skipComment();
        }
        else if ((i != 35) || (!_skipYAMLComment()))
        {
          if (paramBoolean) {
            return i;
          }
          if (i != 58)
          {
            if (i < 32) {
              _throwInvalidSpace(i);
            }
            _reportUnexpectedChar(i, "was expecting a colon to separate field name and value");
          }
          paramBoolean = true;
        }
      }
      else if (i != 32) {
        if (i == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
        else if (i == 13)
        {
          _skipCR();
        }
        else if (i != 9)
        {
          _throwInvalidSpace(i);
        }
      }
    }
    throw _constructError("Unexpected end-of-input within/between " + _parsingContext.getTypeDesc() + " entries");
  }
  
  private final int _skipColonFast(int paramInt)
  {
    byte[] arrayOfByte = _inputBuffer;
    int i = paramInt + 1;
    int k = arrayOfByte[paramInt];
    int j;
    if (k == 58)
    {
      arrayOfByte = _inputBuffer;
      j = i + 1;
      i = arrayOfByte[i];
      if (i > 32)
      {
        paramInt = j;
        if (i != 47)
        {
          paramInt = j;
          if (i != 35)
          {
            _inputPtr = j;
            return i;
          }
        }
      }
      else if (i != 32)
      {
        paramInt = j;
        if (i != 9) {}
      }
      else
      {
        arrayOfByte = _inputBuffer;
        paramInt = j + 1;
        i = arrayOfByte[j];
        if ((i > 32) && (i != 47) && (i != 35))
        {
          _inputPtr = paramInt;
          return i;
        }
      }
      _inputPtr = (paramInt - 1);
      return _skipColon2(true);
    }
    if (k != 32)
    {
      j = k;
      paramInt = i;
      if (k != 9) {}
    }
    else
    {
      j = _inputBuffer[i];
      paramInt = i + 1;
    }
    i = paramInt;
    if (j == 58)
    {
      arrayOfByte = _inputBuffer;
      i = paramInt + 1;
      j = arrayOfByte[paramInt];
      if (j > 32)
      {
        paramInt = i;
        if (j == 47) {
          break label278;
        }
        paramInt = i;
        if (j == 35) {
          break label278;
        }
        _inputPtr = i;
        return j;
      }
      if (j != 32)
      {
        paramInt = i;
        if (j != 9) {
          break label278;
        }
      }
      arrayOfByte = _inputBuffer;
      paramInt = i + 1;
      j = arrayOfByte[i];
      i = paramInt;
      if (j > 32)
      {
        i = paramInt;
        if (j != 47)
        {
          i = paramInt;
          if (j != 35)
          {
            _inputPtr = paramInt;
            return j;
          }
        }
      }
    }
    paramInt = i;
    label278:
    _inputPtr = (paramInt - 1);
    return _skipColon2(false);
  }
  
  private final void _skipComment()
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
      _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in a comment");
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (i == 47)
    {
      _skipLine();
      return;
    }
    if (i == 42)
    {
      _skipCComment();
      return;
    }
    _reportUnexpectedChar(i, "was expecting either '*' or '/' for a comment");
  }
  
  private final void _skipLine()
  {
    int[] arrayOfInt = CharTypes.getInputCodeComment();
    for (;;)
    {
      int i;
      int j;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        byte[] arrayOfByte = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfByte[i] & 0xFF;
        j = arrayOfInt[i];
        if (j == 0) {}
      }
      else
      {
        switch (j)
        {
        case 42: 
        default: 
          if (j < 0) {
            _reportInvalidChar(i);
          }
          break;
        case 10: 
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
          return;
        case 13: 
          _skipCR();
          return;
        case 2: 
          _skipUtf8_2(i);
          break;
        case 3: 
          _skipUtf8_3(i);
          break;
        case 4: 
          _skipUtf8_4(i);
        }
      }
    }
  }
  
  private final void _skipUtf8_2(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final void _skipUtf8_3(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final void _skipUtf8_4(int paramInt)
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt];
    if ((paramInt & 0xC0) != 128) {
      _reportInvalidOther(paramInt & 0xFF, _inputPtr);
    }
  }
  
  private final int _skipWS()
  {
    while (_inputPtr < _inputEnd)
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      int j = arrayOfByte[i] & 0xFF;
      if (j > 32)
      {
        if (j != 47)
        {
          i = j;
          if (j != 35) {}
        }
        else
        {
          _inputPtr -= 1;
          i = _skipWS2();
        }
        return i;
      }
      if (j != 32) {
        if (j == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
        else if (j == 13)
        {
          _skipCR();
        }
        else if (j != 9)
        {
          _throwInvalidSpace(j);
        }
      }
    }
    return _skipWS2();
  }
  
  private final int _skipWS2()
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (i > 32)
      {
        if (i == 47) {
          _skipComment();
        } else if ((i != 35) || (!_skipYAMLComment())) {
          return i;
        }
      }
      else if (i != 32) {
        if (i == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
        else if (i == 13)
        {
          _skipCR();
        }
        else if (i != 9)
        {
          _throwInvalidSpace(i);
        }
      }
    }
    throw _constructError("Unexpected end-of-input within/between " + _parsingContext.getTypeDesc() + " entries");
  }
  
  private final int _skipWSOrEnd()
  {
    int i;
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      i = _eofAsNextChar();
    }
    byte[] arrayOfByte;
    int j;
    do
    {
      return i;
      arrayOfByte = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      j = arrayOfByte[i] & 0xFF;
      if (j <= 32) {
        break label85;
      }
      if (j == 47) {
        break;
      }
      i = j;
    } while (j != 35);
    _inputPtr -= 1;
    return _skipWSOrEnd2();
    label85:
    if (j != 32)
    {
      if (j != 10) {
        break label186;
      }
      _currInputRow += 1;
      _currInputRowStart = _inputPtr;
    }
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        break label273;
      }
      arrayOfByte = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      j = arrayOfByte[i] & 0xFF;
      if (j > 32)
      {
        if (j != 47)
        {
          i = j;
          if (j != 35) {
            break;
          }
        }
        _inputPtr -= 1;
        return _skipWSOrEnd2();
        label186:
        if (j == 13)
        {
          _skipCR();
          continue;
        }
        if (j == 9) {
          continue;
        }
        _throwInvalidSpace(j);
        continue;
      }
      if (j != 32) {
        if (j == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
        else if (j == 13)
        {
          _skipCR();
        }
        else if (j != 9)
        {
          _throwInvalidSpace(j);
        }
      }
    }
    label273:
    return _skipWSOrEnd2();
  }
  
  private final int _skipWSOrEnd2()
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (i > 32)
      {
        if (i == 47) {
          _skipComment();
        } else if ((i != 35) || (!_skipYAMLComment())) {
          return i;
        }
      }
      else if (i != 32) {
        if (i == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
        else if (i == 13)
        {
          _skipCR();
        }
        else if (i != 9)
        {
          _throwInvalidSpace(i);
        }
      }
    }
    return _eofAsNextChar();
  }
  
  private final boolean _skipYAMLComment()
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
      return false;
    }
    _skipLine();
    return true;
  }
  
  private final int _verifyNoLeadingZeroes()
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    int j;
    do
    {
      for (int i = 48; (_inputPtr >= _inputEnd) && (!loadMore()); i = j) {
        do
        {
          return i;
          j = _inputBuffer[_inputPtr] & 0xFF;
          if ((j < 48) || (j > 57)) {
            return 48;
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
          }
          _inputPtr += 1;
          i = j;
        } while (j != 48);
      }
      j = _inputBuffer[_inputPtr] & 0xFF;
      if ((j < 48) || (j > 57)) {
        return 48;
      }
      _inputPtr += 1;
      i = j;
    } while (j == 48);
    return j;
  }
  
  private final void _verifyRootSpace(int paramInt)
  {
    _inputPtr += 1;
    switch (paramInt)
    {
    default: 
      _reportMissingRootWS(paramInt);
    case 9: 
    case 32: 
      return;
    case 13: 
      _skipCR();
      return;
    }
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  private final Name addName(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i3 = (paramInt1 << 2) - 4 + paramInt2;
    int i2;
    Object localObject1;
    int m;
    int i;
    label49:
    int j;
    int k;
    int i1;
    int n;
    label120:
    Object localObject2;
    if (paramInt2 < 4)
    {
      i2 = paramArrayOfInt[(paramInt1 - 1)];
      paramArrayOfInt[(paramInt1 - 1)] = (i2 << (4 - paramInt2 << 3));
      localObject1 = _textBuffer.emptyAndGetCurrentSegment();
      m = 0;
      i = 0;
      if (i >= i3) {
        break label521;
      }
      j = paramArrayOfInt[(i >> 2)] >> (3 - (i & 0x3) << 3) & 0xFF;
      k = i + 1;
      i1 = j;
      n = k;
      if (j <= 127) {
        break label559;
      }
      if ((j & 0xE0) != 192) {
        break label456;
      }
      i = j & 0x1F;
      j = 1;
      if (k + j > i3) {
        _reportInvalidEOF(" in field name");
      }
      i1 = paramArrayOfInt[(k >> 2)] >> (3 - (k & 0x3) << 3);
      n = k + 1;
      if ((i1 & 0xC0) != 128) {
        _reportInvalidOther(i1);
      }
      i1 = i << 6 | i1 & 0x3F;
      k = i1;
      i = n;
      if (j > 1)
      {
        i = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
        n += 1;
        if ((i & 0xC0) != 128) {
          _reportInvalidOther(i);
        }
        i1 = i1 << 6 | i & 0x3F;
        k = i1;
        i = n;
        if (j > 2)
        {
          k = paramArrayOfInt[(n >> 2)] >> (3 - (n & 0x3) << 3);
          i = n + 1;
          if ((k & 0xC0) != 128) {
            _reportInvalidOther(k & 0xFF);
          }
          k = i1 << 6 | k & 0x3F;
        }
      }
      i1 = k;
      n = i;
      if (j <= 2) {
        break label559;
      }
      j = k - 65536;
      localObject2 = localObject1;
      if (m >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      localObject2[m] = ((char)(55296 + (j >> 10)));
      k = m + 1;
      localObject1 = localObject2;
      j = j & 0x3FF | 0xDC00;
    }
    for (;;)
    {
      localObject2 = localObject1;
      if (k >= localObject1.length) {
        localObject2 = _textBuffer.expandCurrentSegment();
      }
      m = k + 1;
      localObject2[k] = ((char)j);
      localObject1 = localObject2;
      break label49;
      i2 = 0;
      break;
      label456:
      if ((j & 0xF0) == 224)
      {
        i = j & 0xF;
        j = 2;
        break label120;
      }
      if ((j & 0xF8) == 240)
      {
        i = j & 0x7;
        j = 3;
        break label120;
      }
      _reportInvalidInitial(j);
      i = 1;
      j = 1;
      break label120;
      label521:
      localObject1 = new String((char[])localObject1, 0, m);
      if (paramInt2 < 4) {
        paramArrayOfInt[(paramInt1 - 1)] = i2;
      }
      return _symbols.addName((String)localObject1, paramArrayOfInt, paramInt1);
      label559:
      j = i1;
      i = n;
      k = m;
    }
  }
  
  private final Name findName(int paramInt1, int paramInt2)
  {
    paramInt1 = pad(paramInt1, paramInt2);
    Name localName = _symbols.findName(paramInt1);
    if (localName != null) {
      return localName;
    }
    _quadBuffer[0] = paramInt1;
    return addName(_quadBuffer, 1, paramInt2);
  }
  
  private final Name findName(int paramInt1, int paramInt2, int paramInt3)
  {
    paramInt2 = pad(paramInt2, paramInt3);
    Name localName = _symbols.findName(paramInt1, paramInt2);
    if (localName != null) {
      return localName;
    }
    _quadBuffer[0] = paramInt1;
    _quadBuffer[1] = paramInt2;
    return addName(_quadBuffer, 2, paramInt3);
  }
  
  private final Name findName(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    int[] arrayOfInt = paramArrayOfInt;
    if (paramInt1 >= paramArrayOfInt.length)
    {
      arrayOfInt = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
      _quadBuffer = arrayOfInt;
    }
    int i = paramInt1 + 1;
    arrayOfInt[paramInt1] = pad(paramInt2, paramInt3);
    Name localName = _symbols.findName(arrayOfInt, i);
    paramArrayOfInt = localName;
    if (localName == null) {
      paramArrayOfInt = addName(arrayOfInt, i, paramInt3);
    }
    return paramArrayOfInt;
  }
  
  public static int[] growArrayBy(int[] paramArrayOfInt, int paramInt)
  {
    if (paramArrayOfInt == null) {
      return new int[paramInt];
    }
    return Arrays.copyOf(paramArrayOfInt, paramArrayOfInt.length + paramInt);
  }
  
  private int nextByte()
  {
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    return arrayOfByte[i] & 0xFF;
  }
  
  private static final int pad(int paramInt1, int paramInt2)
  {
    if (paramInt2 == 4) {
      return paramInt1;
    }
    return paramInt1 | -1 << (paramInt2 << 3);
  }
  
  private final Name parseName(int paramInt1, int paramInt2, int paramInt3)
  {
    return parseEscapedName(_quadBuffer, 0, paramInt1, paramInt2, paramInt3);
  }
  
  private final Name parseName(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    _quadBuffer[0] = paramInt1;
    return parseEscapedName(_quadBuffer, 1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void _closeInput()
  {
    if (_inputStream != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _inputStream.close();
      }
      _inputStream = null;
    }
  }
  
  protected final byte[] _decodeBase64(Base64Variant paramBase64Variant)
  {
    ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      int k = arrayOfByte[i] & 0xFF;
      if (k > 32)
      {
        int j = paramBase64Variant.decodeBase64Char(k);
        i = j;
        if (j < 0)
        {
          if (k == 34) {
            return localByteArrayBuilder.toByteArray();
          }
          i = _decodeBase64Escape(paramBase64Variant, k, 0);
          if (i < 0) {}
        }
        else
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          int m = arrayOfByte[j] & 0xFF;
          k = paramBase64Variant.decodeBase64Char(m);
          j = k;
          if (k < 0) {
            j = _decodeBase64Escape(paramBase64Variant, m, 1);
          }
          m = j | i << 6;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          int n = arrayOfByte[i] & 0xFF;
          j = paramBase64Variant.decodeBase64Char(n);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((n == 34) && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.append(m >> 4);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, n, 2);
            }
            k = i;
            if (i == -2)
            {
              if (_inputPtr >= _inputEnd) {
                loadMoreGuaranteed();
              }
              arrayOfByte = _inputBuffer;
              i = _inputPtr;
              _inputPtr = (i + 1);
              i = arrayOfByte[i] & 0xFF;
              if (!paramBase64Variant.usesPaddingChar(i)) {
                throw reportInvalidBase64Char(paramBase64Variant, i, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              }
              localByteArrayBuilder.append(m >> 4);
              continue;
            }
          }
          m = m << 6 | k;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          n = arrayOfByte[i] & 0xFF;
          j = paramBase64Variant.decodeBase64Char(n);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((n == 34) && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.appendTwoBytes(m >> 2);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, n, 3);
            }
            k = i;
            if (i == -2)
            {
              localByteArrayBuilder.appendTwoBytes(m >> 2);
              continue;
            }
          }
          localByteArrayBuilder.appendThreeBytes(k | m << 6);
        }
      }
    }
  }
  
  protected int _decodeCharForError(int paramInt)
  {
    int i = paramInt & 0xFF;
    paramInt = i;
    if (i > 127)
    {
      if ((i & 0xE0) != 192) {
        break label149;
      }
      i &= 0x1F;
      paramInt = 1;
    }
    for (;;)
    {
      int j = nextByte();
      if ((j & 0xC0) != 128) {
        _reportInvalidOther(j & 0xFF);
      }
      i = i << 6 | j & 0x3F;
      if (paramInt <= 1) {
        return i;
      }
      j = nextByte();
      if ((j & 0xC0) != 128) {
        _reportInvalidOther(j & 0xFF);
      }
      i = j & 0x3F | i << 6;
      if (paramInt <= 2) {
        break;
      }
      paramInt = nextByte();
      if ((paramInt & 0xC0) != 128) {
        _reportInvalidOther(paramInt & 0xFF);
      }
      paramInt = paramInt & 0x3F | i << 6;
      return paramInt;
      label149:
      if ((i & 0xF0) == 224)
      {
        i &= 0xF;
        paramInt = 2;
      }
      else if ((i & 0xF8) == 240)
      {
        i &= 0x7;
        paramInt = 3;
      }
      else
      {
        _reportInvalidInitial(i & 0xFF);
        paramInt = 1;
      }
    }
    return i;
    return i;
  }
  
  protected char _decodeEscaped()
  {
    int i = 0;
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in character escape sequence");
    }
    byte[] arrayOfByte = _inputBuffer;
    int j = _inputPtr;
    _inputPtr = (j + 1);
    j = arrayOfByte[j];
    switch (j)
    {
    default: 
      return _handleUnrecognizedCharacterEscape((char)_decodeCharForError(j));
    case 98: 
      return '\b';
    case 116: 
      return '\t';
    case 110: 
      return '\n';
    case 102: 
      return '\f';
    case 114: 
      return '\r';
    case 34: 
    case 47: 
    case 92: 
      return (char)j;
    }
    j = 0;
    while (i < 4)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in character escape sequence");
      }
      arrayOfByte = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfByte[k];
      int m = CharTypes.charToHex(k);
      if (m < 0) {
        _reportUnexpectedChar(k, "expected a hex-digit for character escape sequence");
      }
      j = j << 4 | m;
      i += 1;
    }
    return (char)j;
  }
  
  protected void _finishString()
  {
    int j = _inputPtr;
    int i = j;
    if (j >= _inputEnd)
    {
      loadMoreGuaranteed();
      i = _inputPtr;
    }
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = _icUTF8;
    int k = Math.min(_inputEnd, arrayOfChar.length + i);
    byte[] arrayOfByte = _inputBuffer;
    j = 0;
    while (i < k)
    {
      int m = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[m] != 0)
      {
        if (m != 34) {
          break;
        }
        _inputPtr = (i + 1);
        _textBuffer.setCurrentLength(j);
        return;
      }
      arrayOfChar[j] = ((char)m);
      j += 1;
      i += 1;
    }
    _inputPtr = i;
    _finishString2(arrayOfChar, j);
  }
  
  protected final String _getText2(JsonToken paramJsonToken)
  {
    if (paramJsonToken == null) {
      return null;
    }
    switch (paramJsonToken.id())
    {
    default: 
      return paramJsonToken.asString();
    case 5: 
      return _parsingContext.getCurrentName();
    }
    return _textBuffer.contentsAsString();
  }
  
  protected JsonToken _handleApos()
  {
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    int[] arrayOfInt = _icUTF8;
    byte[] arrayOfByte = _inputBuffer;
    int i = 0;
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    Object localObject1 = localObject2;
    int j = i;
    if (i >= localObject2.length)
    {
      localObject1 = _textBuffer.finishCurrentSegment();
      j = 0;
    }
    int k = _inputEnd;
    i = _inputPtr + (localObject1.length - j);
    if (i < k) {
      k = i;
    }
    for (;;)
    {
      localObject2 = localObject1;
      i = j;
      if (_inputPtr >= k) {
        break;
      }
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if ((i != 39) && (arrayOfInt[i] == 0))
      {
        localObject1[j] = ((char)i);
        j += 1;
      }
      else
      {
        if (i != 39)
        {
          switch (arrayOfInt[i])
          {
          default: 
            if (i < 32) {
              _throwUnquotedSpace(i, "string value");
            }
            _reportInvalidChar(i);
          }
          for (;;)
          {
            if (j >= localObject1.length)
            {
              localObject1 = _textBuffer.finishCurrentSegment();
              j = 0;
              label220:
              k = j + 1;
              localObject1[j] = ((char)i);
              localObject2 = localObject1;
              i = k;
              break;
              if (i != 39)
              {
                i = _decodeEscaped();
                continue;
                i = _decodeUtf8_2(i);
                continue;
                if (_inputEnd - _inputPtr >= 2)
                {
                  i = _decodeUtf8_3fast(i);
                }
                else
                {
                  i = _decodeUtf8_3(i);
                  continue;
                  k = _decodeUtf8_4(i);
                  i = j + 1;
                  localObject1[j] = ((char)(0xD800 | k >> 10));
                  if (i < localObject1.length) {
                    break label360;
                  }
                  localObject1 = _textBuffer.finishCurrentSegment();
                }
              }
            }
          }
        }
        label360:
        for (j = 0;; j = i)
        {
          i = 0xDC00 | k & 0x3FF;
          break;
          _textBuffer.setCurrentLength(j);
          return JsonToken.VALUE_STRING;
          break label220;
        }
      }
    }
  }
  
  protected JsonToken _handleInvalidNumberStart(int paramInt, boolean paramBoolean)
  {
    for (;;)
    {
      i = paramInt;
      if (paramInt != 73) {
        break label177;
      }
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      Object localObject = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      paramInt = localObject[paramInt];
      if (paramInt == 78) {
        if (paramBoolean)
        {
          localObject = "-INF";
          _matchToken((String)localObject, 3);
          if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            break label143;
          }
          if (!paramBoolean) {
            break label136;
          }
        }
      }
      label136:
      for (double d = Double.NEGATIVE_INFINITY;; d = Double.POSITIVE_INFINITY)
      {
        return resetAsNaN((String)localObject, d);
        localObject = "+INF";
        break;
        if (paramInt != 110) {
          break label174;
        }
        if (paramBoolean)
        {
          localObject = "-Infinity";
          break;
        }
        localObject = "+Infinity";
        break;
      }
      label143:
      _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
    }
    label174:
    int i = paramInt;
    label177:
    reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
    return null;
  }
  
  protected Name _handleOddName(int paramInt)
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))) {
      return _parseAposName();
    }
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
      _reportUnexpectedChar((char)_decodeCharForError(paramInt), "was expecting double-quote to start field name");
    }
    int[] arrayOfInt = CharTypes.getInputCodeUtf8JsNames();
    if (arrayOfInt[paramInt] != 0) {
      _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
    }
    Object localObject1 = _quadBuffer;
    int k = 0;
    int j = 0;
    int i = paramInt;
    paramInt = 0;
    if (k < 4) {
      j = i | j << 8;
    }
    for (i = k + 1;; i = k)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in field name");
      }
      int m = _inputBuffer[_inputPtr] & 0xFF;
      if (arrayOfInt[m] != 0) {
        break label215;
      }
      _inputPtr += 1;
      k = i;
      i = m;
      break;
      localObject2 = localObject1;
      if (paramInt >= localObject1.length)
      {
        localObject2 = growArrayBy((int[])localObject1, localObject1.length);
        _quadBuffer = ((int[])localObject2);
      }
      localObject2[paramInt] = j;
      localObject1 = localObject2;
      k = 1;
      j = i;
      paramInt += 1;
    }
    label215:
    k = paramInt;
    Object localObject2 = localObject1;
    if (i > 0)
    {
      localObject2 = localObject1;
      if (paramInt >= localObject1.length)
      {
        localObject2 = growArrayBy((int[])localObject1, localObject1.length);
        _quadBuffer = ((int[])localObject2);
      }
      localObject2[paramInt] = j;
      k = paramInt + 1;
    }
    localObject1 = _symbols.findName((int[])localObject2, k);
    if (localObject1 == null) {
      return addName((int[])localObject2, k, i);
    }
    return (Name)localObject1;
  }
  
  protected JsonToken _handleUnexpectedValue(int paramInt)
  {
    switch (paramInt)
    {
    default: 
    case 93: 
    case 125: 
    case 39: 
    case 78: 
    case 73: 
      for (;;)
      {
        if (Character.isJavaIdentifierStart(paramInt)) {
          _reportInvalidToken((char)paramInt, "('true', 'false' or 'null')");
        }
        _reportUnexpectedChar(paramInt, "expected a valid value (number, String, array, object, 'true', 'false' or 'null')");
        return null;
        _reportUnexpectedChar(paramInt, "expected a value");
        if (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))
        {
          return _handleApos();
          _matchToken("NaN", 1);
          if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            return resetAsNaN("NaN", NaN.0D);
          }
          _reportError("Non-standard token 'NaN': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
          continue;
          _matchToken("Infinity", 1);
          if (isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            return resetAsNaN("Infinity", Double.POSITIVE_INFINITY);
          }
          _reportError("Non-standard token 'Infinity': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        }
      }
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOFInValue();
    }
    byte[] arrayOfByte = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    return _handleInvalidNumberStart(arrayOfByte[paramInt] & 0xFF, false);
  }
  
  protected final boolean _loadToHaveAtLeast(int paramInt)
  {
    if (_inputStream == null) {
      return false;
    }
    int i = _inputEnd - _inputPtr;
    if ((i > 0) && (_inputPtr > 0))
    {
      _currInputProcessed += _inputPtr;
      _currInputRowStart -= _inputPtr;
      System.arraycopy(_inputBuffer, _inputPtr, _inputBuffer, 0, i);
      _inputEnd = i;
      label79:
      _inputPtr = 0;
    }
    for (;;)
    {
      if (_inputEnd >= paramInt) {
        break label182;
      }
      int j = _inputStream.read(_inputBuffer, _inputEnd, _inputBuffer.length - _inputEnd);
      if (j <= 0)
      {
        _closeInput();
        if (j != 0) {
          break;
        }
        throw new IOException("InputStream.read() returned 0 characters when trying to read " + i + " bytes");
        _inputEnd = 0;
        break label79;
      }
      _inputEnd = (j + _inputEnd);
    }
    label182:
    return true;
  }
  
  protected final void _matchToken(String paramString, int paramInt)
  {
    int j = paramString.length();
    int i = paramInt;
    if (_inputPtr + j >= _inputEnd) {
      _matchToken2(paramString, paramInt);
    }
    do
    {
      return;
      do
      {
        if (_inputBuffer[_inputPtr] != paramString.charAt(i)) {
          _reportInvalidToken(paramString.substring(0, i));
        }
        _inputPtr += 1;
        paramInt = i + 1;
        i = paramInt;
      } while (paramInt < j);
      i = _inputBuffer[_inputPtr] & 0xFF;
    } while ((i < 48) || (i == 93) || (i == 125));
    _checkMatchEnd(paramString, paramInt, i);
  }
  
  protected Name _parseAposName()
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing ''' for name");
    }
    Object localObject1 = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    int m = localObject1[i] & 0xFF;
    if (m == 39) {
      return BytesToNameCanonicalizer.getEmptyName();
    }
    localObject1 = _quadBuffer;
    int[] arrayOfInt = _icLatin1;
    int j = 0;
    int k = 0;
    i = 0;
    int n;
    label127:
    Object localObject2;
    if (m != 39)
    {
      n = m;
      if (m == 34) {
        break label570;
      }
      n = m;
      if (arrayOfInt[m] == 0) {
        break label570;
      }
      if (m != 92)
      {
        _throwUnquotedSpace(m, "name");
        n = m;
        if (m <= 127) {
          break label570;
        }
        if (j < 4) {
          break label567;
        }
        localObject2 = localObject1;
        if (i >= localObject1.length)
        {
          localObject2 = growArrayBy((int[])localObject1, localObject1.length);
          _quadBuffer = ((int[])localObject2);
        }
        localObject2[i] = k;
        j = 0;
        i += 1;
        k = 0;
        localObject1 = localObject2;
        label187:
        if (m >= 2048) {
          break label337;
        }
        k = k << 8 | m >> 6 | 0xC0;
        j += 1;
        n = k;
        k = j;
        j = m & 0x3F | 0x80;
        m = k;
      }
    }
    for (;;)
    {
      if (m < 4)
      {
        k = j | n << 8;
        m += 1;
        j = i;
        i = m;
        label257:
        if ((_inputPtr >= _inputEnd) && (!loadMore())) {
          _reportInvalidEOF(" in field name");
        }
        localObject2 = _inputBuffer;
        m = _inputPtr;
        _inputPtr = (m + 1);
        n = localObject2[m] & 0xFF;
        m = i;
        i = j;
        j = m;
        m = n;
        break;
        m = _decodeEscaped();
        break label127;
        label337:
        k = k << 8 | m >> 12 | 0xE0;
        j += 1;
        if (j < 4) {
          break label564;
        }
        localObject2 = localObject1;
        if (i >= localObject1.length)
        {
          localObject2 = growArrayBy((int[])localObject1, localObject1.length);
          _quadBuffer = ((int[])localObject2);
        }
        localObject2[i] = k;
        i += 1;
        localObject1 = localObject2;
        j = 0;
        k = 0;
      }
      label564:
      for (;;)
      {
        k = k << 8 | m >> 6 & 0x3F | 0x80;
        j += 1;
        break;
        localObject2 = localObject1;
        if (i >= localObject1.length)
        {
          localObject2 = growArrayBy((int[])localObject1, localObject1.length);
          _quadBuffer = ((int[])localObject2);
        }
        localObject2[i] = n;
        localObject1 = localObject2;
        k = 1;
        m = i + 1;
        i = k;
        k = j;
        j = m;
        break label257;
        if (j > 0)
        {
          localObject2 = localObject1;
          if (i >= localObject1.length)
          {
            localObject2 = growArrayBy((int[])localObject1, localObject1.length);
            _quadBuffer = ((int[])localObject2);
          }
          localObject2[i] = pad(k, j);
          localObject1 = localObject2;
          i += 1;
        }
        for (;;)
        {
          localObject2 = _symbols.findName((int[])localObject1, i);
          if (localObject2 == null) {
            return addName((int[])localObject1, i, j);
          }
          return (Name)localObject2;
        }
      }
      label567:
      break label187;
      label570:
      m = j;
      j = n;
      n = k;
    }
  }
  
  protected final Name _parseName(int paramInt)
  {
    if (paramInt != 34) {
      return _handleOddName(paramInt);
    }
    if (_inputPtr + 9 > _inputEnd) {
      return slowParseName();
    }
    byte[] arrayOfByte = _inputBuffer;
    int[] arrayOfInt = _icLatin1;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    paramInt = arrayOfByte[paramInt] & 0xFF;
    if (arrayOfInt[paramInt] == 0)
    {
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] == 0)
      {
        paramInt = paramInt << 8 | i;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfByte[i] & 0xFF;
        if (arrayOfInt[i] == 0)
        {
          paramInt = paramInt << 8 | i;
          i = _inputPtr;
          _inputPtr = (i + 1);
          i = arrayOfByte[i] & 0xFF;
          if (arrayOfInt[i] == 0)
          {
            paramInt = paramInt << 8 | i;
            i = _inputPtr;
            _inputPtr = (i + 1);
            i = arrayOfByte[i] & 0xFF;
            if (arrayOfInt[i] == 0)
            {
              _quad1 = paramInt;
              return parseMediumName(i);
            }
            if (i == 34) {
              return findName(paramInt, 4);
            }
            return parseName(paramInt, i, 4);
          }
          if (i == 34) {
            return findName(paramInt, 3);
          }
          return parseName(paramInt, i, 3);
        }
        if (i == 34) {
          return findName(paramInt, 2);
        }
        return parseName(paramInt, i, 2);
      }
      if (i == 34) {
        return findName(paramInt, 1);
      }
      return parseName(paramInt, i, 1);
    }
    if (paramInt == 34) {
      return BytesToNameCanonicalizer.getEmptyName();
    }
    return parseName(0, paramInt, 0);
  }
  
  protected JsonToken _parseNegNumber()
  {
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    arrayOfChar[0] = '-';
    if (_inputPtr >= _inputEnd) {
      loadMoreGuaranteed();
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    int j = arrayOfByte[i] & 0xFF;
    if ((j < 48) || (j > 57)) {
      return _handleInvalidNumberStart(j, true);
    }
    i = j;
    if (j == 48) {
      i = _verifyNoLeadingZeroes();
    }
    int k = 2;
    arrayOfChar[1] = ((char)i);
    j = _inputPtr + arrayOfChar.length - 2;
    if (j > _inputEnd)
    {
      j = _inputEnd;
      i = 1;
    }
    for (;;)
    {
      if (_inputPtr >= j) {
        return _parseNumber2(arrayOfChar, k, true, i);
      }
      arrayOfByte = _inputBuffer;
      int m = _inputPtr;
      _inputPtr = (m + 1);
      m = arrayOfByte[m] & 0xFF;
      if ((m >= 48) && (m <= 57))
      {
        i += 1;
        arrayOfChar[k] = ((char)m);
        k += 1;
      }
      else
      {
        if ((m == 46) || (m == 101) || (m == 69)) {
          return _parseFloat(arrayOfChar, k, m, true, i);
        }
        _inputPtr -= 1;
        _textBuffer.setCurrentLength(k);
        if (_parsingContext.inRoot()) {
          _verifyRootSpace(m);
        }
        return resetInt(true, i);
        i = 1;
      }
    }
  }
  
  protected JsonToken _parsePosNumber(int paramInt)
  {
    int j = 1;
    char[] arrayOfChar = _textBuffer.emptyAndGetCurrentSegment();
    int i = paramInt;
    if (paramInt == 48) {
      i = _verifyNoLeadingZeroes();
    }
    arrayOfChar[0] = ((char)i);
    i = _inputPtr + arrayOfChar.length - 1;
    if (i > _inputEnd)
    {
      i = _inputEnd;
      paramInt = 1;
    }
    for (;;)
    {
      if (_inputPtr >= i) {
        return _parseNumber2(arrayOfChar, j, false, paramInt);
      }
      byte[] arrayOfByte = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfByte[k] & 0xFF;
      if ((k >= 48) && (k <= 57))
      {
        arrayOfChar[j] = ((char)k);
        j += 1;
        paramInt += 1;
      }
      else
      {
        if ((k == 46) || (k == 101) || (k == 69)) {
          return _parseFloat(arrayOfChar, j, k, false, paramInt);
        }
        _inputPtr -= 1;
        _textBuffer.setCurrentLength(j);
        if (_parsingContext.inRoot()) {
          _verifyRootSpace(k);
        }
        return resetInt(false, paramInt);
        paramInt = 1;
      }
    }
  }
  
  protected int _readBinary(Base64Variant paramBase64Variant, OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    int i1 = paramArrayOfByte.length;
    int j = 0;
    int i = 0;
    byte[] arrayOfByte;
    int k;
    int n;
    int m;
    do
    {
      do
      {
        if (_inputPtr >= _inputEnd) {
          loadMoreGuaranteed();
        }
        arrayOfByte = _inputBuffer;
        k = _inputPtr;
        _inputPtr = (k + 1);
        n = arrayOfByte[k] & 0xFF;
      } while (n <= 32);
      k = paramBase64Variant.decodeBase64Char(n);
      m = k;
      if (k >= 0) {
        break;
      }
      m = j;
      k = i;
      if (n == 34) {
        break label335;
      }
      m = _decodeBase64Escape(paramBase64Variant, n, 0);
    } while (m < 0);
    if (i > i1 - 3)
    {
      j += i;
      paramOutputStream.write(paramArrayOfByte, 0, i);
      k = 0;
    }
    for (i = j;; i = j)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      int i2 = arrayOfByte[j] & 0xFF;
      n = paramBase64Variant.decodeBase64Char(i2);
      j = n;
      if (n < 0) {
        j = _decodeBase64Escape(paramBase64Variant, i2, 1);
      }
      i2 = m << 6 | j;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      arrayOfByte = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      int i3 = arrayOfByte[j] & 0xFF;
      m = paramBase64Variant.decodeBase64Char(i3);
      n = m;
      if (m < 0)
      {
        j = m;
        if (m != -2) {
          if ((i3 == 34) && (!paramBase64Variant.usesPadding()))
          {
            j = k + 1;
            paramArrayOfByte[k] = ((byte)(i2 >> 4));
            k = j;
          }
        }
      }
      for (m = i;; m = i)
      {
        label335:
        _tokenIncomplete = false;
        i = m;
        if (k > 0)
        {
          i = m + k;
          paramOutputStream.write(paramArrayOfByte, 0, k);
        }
        return i;
        j = _decodeBase64Escape(paramBase64Variant, i3, 2);
        n = j;
        if (j == -2)
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfByte = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          j = arrayOfByte[j] & 0xFF;
          if (!paramBase64Variant.usesPaddingChar(j)) {
            throw reportInvalidBase64Char(paramBase64Variant, j, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
          }
          m = k + 1;
          paramArrayOfByte[k] = ((byte)(i2 >> 4));
          j = i;
          i = m;
          break;
        }
        i2 = i2 << 6 | n;
        if (_inputPtr >= _inputEnd) {
          loadMoreGuaranteed();
        }
        arrayOfByte = _inputBuffer;
        j = _inputPtr;
        _inputPtr = (j + 1);
        i3 = arrayOfByte[j] & 0xFF;
        m = paramBase64Variant.decodeBase64Char(i3);
        n = m;
        if (m >= 0) {
          break label711;
        }
        j = m;
        if (m == -2) {
          break label654;
        }
        if ((i3 != 34) || (paramBase64Variant.usesPadding())) {
          break label644;
        }
        j = i2 >> 2;
        m = k + 1;
        paramArrayOfByte[k] = ((byte)(j >> 8));
        k = m + 1;
        paramArrayOfByte[m] = ((byte)j);
      }
      label644:
      j = _decodeBase64Escape(paramBase64Variant, i3, 3);
      label654:
      n = j;
      if (j == -2)
      {
        j = i2 >> 2;
        m = k + 1;
        paramArrayOfByte[k] = ((byte)(j >> 8));
        k = m + 1;
        paramArrayOfByte[m] = ((byte)j);
        j = i;
        i = k;
        break;
      }
      label711:
      j = i2 << 6 | n;
      m = k + 1;
      paramArrayOfByte[k] = ((byte)(j >> 16));
      n = m + 1;
      paramArrayOfByte[m] = ((byte)(j >> 8));
      k = n + 1;
      paramArrayOfByte[n] = ((byte)j);
      j = i;
      i = k;
      break;
      k = i;
    }
  }
  
  protected void _releaseBuffers()
  {
    super._releaseBuffers();
    _symbols.release();
    if (_bufferRecyclable)
    {
      byte[] arrayOfByte = _inputBuffer;
      if (arrayOfByte != null)
      {
        _inputBuffer = ByteArrayBuilder.NO_BYTES;
        _ioContext.releaseReadIOBuffer(arrayOfByte);
      }
    }
  }
  
  protected void _reportInvalidChar(int paramInt)
  {
    if (paramInt < 32) {
      _throwInvalidSpace(paramInt);
    }
    _reportInvalidInitial(paramInt);
  }
  
  protected void _reportInvalidInitial(int paramInt)
  {
    _reportError("Invalid UTF-8 start byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt)
  {
    _reportError("Invalid UTF-8 middle byte 0x" + Integer.toHexString(paramInt));
  }
  
  protected void _reportInvalidOther(int paramInt1, int paramInt2)
  {
    _inputPtr = paramInt2;
    _reportInvalidOther(paramInt1);
  }
  
  protected void _reportInvalidToken(String paramString)
  {
    _reportInvalidToken(paramString, "'null', 'true', 'false' or NaN");
  }
  
  protected void _reportInvalidToken(String paramString1, String paramString2)
  {
    paramString1 = new StringBuilder(paramString1);
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      byte[] arrayOfByte = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      char c = (char)_decodeCharForError(arrayOfByte[i]);
      if (!Character.isJavaIdentifierPart(c)) {
        break;
      }
      paramString1.append(c);
    }
    _reportError("Unrecognized token '" + paramString1.toString() + "': was expecting " + paramString2);
  }
  
  protected final void _skipCR()
  {
    if (((_inputPtr < _inputEnd) || (loadMore())) && (_inputBuffer[_inputPtr] == 10)) {
      _inputPtr += 1;
    }
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected void _skipString()
  {
    _tokenIncomplete = false;
    int[] arrayOfInt = _icUTF8;
    byte[] arrayOfByte = _inputBuffer;
    int k = _inputPtr;
    int m = _inputEnd;
    int j = m;
    int i = k;
    if (k >= m)
    {
      loadMoreGuaranteed();
      i = _inputPtr;
      j = _inputEnd;
    }
    for (;;)
    {
      if (i < j)
      {
        k = i + 1;
        i = arrayOfByte[i] & 0xFF;
        if (arrayOfInt[i] == 0) {
          break label189;
        }
        _inputPtr = k;
        if (i == 34) {}
      }
      else
      {
        switch (arrayOfInt[i])
        {
        default: 
          if (i < 32)
          {
            _throwUnquotedSpace(i, "string value");
            break;
            _inputPtr = i;
          }
          break;
        case 1: 
          _decodeEscaped();
          break;
        case 2: 
          _skipUtf8_2(i);
          break;
        case 3: 
          _skipUtf8_3(i);
          break;
        case 4: 
          _skipUtf8_4(i);
          break;
          _reportInvalidChar(i);
          break;
        }
      }
      return;
      label189:
      i = k;
    }
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    if ((_currToken != JsonToken.VALUE_STRING) && ((_currToken != JsonToken.VALUE_EMBEDDED_OBJECT) || (_binaryValue == null))) {
      _reportError("Current token (" + _currToken + ") not VALUE_STRING or VALUE_EMBEDDED_OBJECT, can not access as binary");
    }
    if (_tokenIncomplete) {}
    for (;;)
    {
      try
      {
        _binaryValue = _decodeBase64(paramBase64Variant);
        _tokenIncomplete = false;
        return _binaryValue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        throw _constructError("Failed to decode VALUE_STRING as base64 (" + paramBase64Variant + "): " + localIllegalArgumentException.getMessage());
      }
      if (_binaryValue == null)
      {
        ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
        _decodeBase64(getText(), localByteArrayBuilder, paramBase64Variant);
        _binaryValue = localByteArrayBuilder.toByteArray();
      }
    }
  }
  
  public ObjectCodec getCodec()
  {
    return _objectCodec;
  }
  
  public JsonLocation getCurrentLocation()
  {
    int i = _inputPtr;
    int j = _currInputRowStart;
    return new JsonLocation(_ioContext.getSourceReference(), _currInputProcessed + _inputPtr, -1L, _currInputRow, i - j + 1);
  }
  
  public Object getInputSource()
  {
    return _inputStream;
  }
  
  public String getText()
  {
    if (_currToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return _getText2(_currToken);
  }
  
  public char[] getTextCharacters()
  {
    if (_currToken != null)
    {
      switch (_currToken.id())
      {
      default: 
        return _currToken.asCharArray();
      case 5: 
        String str;
        int i;
        if (!_nameCopied)
        {
          str = _parsingContext.getCurrentName();
          i = str.length();
          if (_nameCopyBuffer != null) {
            break label112;
          }
          _nameCopyBuffer = _ioContext.allocNameCopyBuffer(i);
        }
        for (;;)
        {
          str.getChars(0, i, _nameCopyBuffer, 0);
          _nameCopied = true;
          return _nameCopyBuffer;
          if (_nameCopyBuffer.length < i) {
            _nameCopyBuffer = new char[i];
          }
        }
      case 6: 
        label112:
        if (_tokenIncomplete)
        {
          _tokenIncomplete = false;
          _finishString();
        }
        break;
      }
      return _textBuffer.getTextBuffer();
    }
    return null;
  }
  
  public int getTextLength()
  {
    int i = 0;
    if (_currToken != null) {}
    switch (_currToken.id())
    {
    default: 
      i = _currToken.asCharArray().length;
      return i;
    case 5: 
      return _parsingContext.getCurrentName().length();
    case 6: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.size();
  }
  
  public int getTextOffset()
  {
    if (_currToken != null) {}
    switch (_currToken.id())
    {
    case 5: 
    default: 
      return 0;
    case 6: 
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      break;
    }
    return _textBuffer.getTextOffset();
  }
  
  public JsonLocation getTokenLocation()
  {
    return new JsonLocation(_ioContext.getSourceReference(), getTokenCharacterOffset(), -1L, getTokenLineNr(), getTokenColumnNr());
  }
  
  public String getValueAsString()
  {
    if (_currToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return super.getValueAsString(null);
  }
  
  public String getValueAsString(String paramString)
  {
    if (_currToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return super.getValueAsString(paramString);
  }
  
  protected final boolean loadMore()
  {
    _currInputProcessed += _inputEnd;
    _currInputRowStart -= _inputEnd;
    int i;
    if (_inputStream != null)
    {
      i = _inputBuffer.length;
      if (i != 0) {
        break label46;
      }
    }
    label46:
    do
    {
      return false;
      i = _inputStream.read(_inputBuffer, 0, i);
      if (i > 0)
      {
        _inputPtr = 0;
        _inputEnd = i;
        return true;
      }
      _closeInput();
    } while (i != 0);
    throw new IOException("InputStream.read() returned 0 characters when trying to read " + _inputBuffer.length + " bytes");
  }
  
  public Boolean nextBooleanValue()
  {
    Boolean localBoolean = null;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      JsonToken localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_TRUE) {
        localBoolean = Boolean.TRUE;
      }
      do
      {
        return localBoolean;
        if (localJsonToken == JsonToken.VALUE_FALSE) {
          return Boolean.FALSE;
        }
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return null;
        }
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return null;
    }
    switch (nextToken().id())
    {
    default: 
      return null;
    case 9: 
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
  
  public String nextFieldName()
  {
    _numTypesValid = 0;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nextAfterName();
      return null;
    }
    if (_tokenIncomplete) {
      _skipString();
    }
    int j = _skipWSOrEnd();
    if (j < 0)
    {
      close();
      _currToken = null;
      return null;
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr - 1L);
    _tokenInputRow = _currInputRow;
    _tokenInputCol = (_inputPtr - _currInputRowStart - 1);
    _binaryValue = null;
    if (j == 93)
    {
      if (!_parsingContext.inArray()) {
        _reportMismatchedEndMarker(j, '}');
      }
      _parsingContext = _parsingContext.getParent();
      _currToken = JsonToken.END_ARRAY;
      return null;
    }
    if (j == 125)
    {
      if (!_parsingContext.inObject()) {
        _reportMismatchedEndMarker(j, ']');
      }
      _parsingContext = _parsingContext.getParent();
      _currToken = JsonToken.END_OBJECT;
      return null;
    }
    int i = j;
    if (_parsingContext.expectComma())
    {
      if (j != 44) {
        _reportUnexpectedChar(j, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
      }
      i = _skipWS();
    }
    if (!_parsingContext.inObject())
    {
      _nextTokenNotInObject(i);
      return null;
    }
    String str = _parseName(i).getName();
    _parsingContext.setCurrentName(str);
    _currToken = JsonToken.FIELD_NAME;
    i = _skipColon();
    if (i == 34)
    {
      _tokenIncomplete = true;
      _nextToken = JsonToken.VALUE_STRING;
      return str;
    }
    JsonToken localJsonToken;
    switch (i)
    {
    default: 
      localJsonToken = _handleUnexpectedValue(i);
    }
    for (;;)
    {
      _nextToken = localJsonToken;
      return str;
      localJsonToken = _parseNegNumber();
      continue;
      localJsonToken = _parsePosNumber(i);
      continue;
      _matchToken("false", 1);
      localJsonToken = JsonToken.VALUE_FALSE;
      continue;
      _matchToken("null", 1);
      localJsonToken = JsonToken.VALUE_NULL;
      continue;
      _matchToken("true", 1);
      localJsonToken = JsonToken.VALUE_TRUE;
      continue;
      localJsonToken = JsonToken.START_ARRAY;
      continue;
      localJsonToken = JsonToken.START_OBJECT;
    }
  }
  
  public boolean nextFieldName(SerializableString paramSerializableString)
  {
    _numTypesValid = 0;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nextAfterName();
      return false;
    }
    if (_tokenIncomplete) {
      _skipString();
    }
    int j = _skipWSOrEnd();
    if (j < 0)
    {
      close();
      _currToken = null;
      return false;
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr - 1L);
    _tokenInputRow = _currInputRow;
    _tokenInputCol = (_inputPtr - _currInputRowStart - 1);
    _binaryValue = null;
    if (j == 93)
    {
      if (!_parsingContext.inArray()) {
        _reportMismatchedEndMarker(j, '}');
      }
      _parsingContext = _parsingContext.getParent();
      _currToken = JsonToken.END_ARRAY;
      return false;
    }
    if (j == 125)
    {
      if (!_parsingContext.inObject()) {
        _reportMismatchedEndMarker(j, ']');
      }
      _parsingContext = _parsingContext.getParent();
      _currToken = JsonToken.END_OBJECT;
      return false;
    }
    int i = j;
    if (_parsingContext.expectComma())
    {
      if (j != 44) {
        _reportUnexpectedChar(j, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
      }
      i = _skipWS();
    }
    if (!_parsingContext.inObject())
    {
      _nextTokenNotInObject(i);
      return false;
    }
    if (i == 34)
    {
      byte[] arrayOfByte = paramSerializableString.asQuotedUTF8();
      j = arrayOfByte.length;
      if (_inputPtr + j + 4 < _inputEnd)
      {
        int m = _inputPtr + j;
        if (_inputBuffer[m] == 34)
        {
          j = _inputPtr;
          int k = 0;
          for (;;)
          {
            if (j == m)
            {
              _parsingContext.setCurrentName(paramSerializableString.getValue());
              _isNextTokenNameYes(_skipColonFast(j + 1));
              return true;
            }
            if (arrayOfByte[k] != _inputBuffer[j]) {
              break;
            }
            k += 1;
            j += 1;
          }
        }
      }
    }
    return _isNextTokenNameMaybe(i, paramSerializableString);
  }
  
  public int nextIntValue(int paramInt)
  {
    JsonToken localJsonToken;
    int i;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        i = getIntValue();
      }
    }
    do
    {
      do
      {
        return i;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return paramInt;
        }
        i = paramInt;
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return paramInt;
      i = paramInt;
    } while (nextToken() != JsonToken.VALUE_NUMBER_INT);
    return getIntValue();
  }
  
  public long nextLongValue(long paramLong)
  {
    JsonToken localJsonToken;
    long l;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_NUMBER_INT) {
        l = getLongValue();
      }
    }
    do
    {
      do
      {
        return l;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return paramLong;
        }
        l = paramLong;
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return paramLong;
      l = paramLong;
    } while (nextToken() != JsonToken.VALUE_NUMBER_INT);
    return getLongValue();
  }
  
  public String nextTextValue()
  {
    String str = null;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_STRING)
      {
        if (_tokenIncomplete)
        {
          _tokenIncomplete = false;
          _finishString();
        }
        str = _textBuffer.contentsAsString();
      }
    }
    while (nextToken() != JsonToken.VALUE_STRING)
    {
      JsonToken localJsonToken;
      do
      {
        return str;
        if (localJsonToken == JsonToken.START_ARRAY)
        {
          _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
          return null;
        }
      } while (localJsonToken != JsonToken.START_OBJECT);
      _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      return null;
    }
    return getText();
  }
  
  public JsonToken nextToken()
  {
    _numTypesValid = 0;
    if (_currToken == JsonToken.FIELD_NAME) {
      return _nextAfterName();
    }
    if (_tokenIncomplete) {
      _skipString();
    }
    int j = _skipWSOrEnd();
    if (j < 0)
    {
      close();
      _currToken = null;
      return null;
    }
    _tokenInputTotal = (_currInputProcessed + _inputPtr - 1L);
    _tokenInputRow = _currInputRow;
    _tokenInputCol = (_inputPtr - _currInputRowStart - 1);
    _binaryValue = null;
    if (j == 93)
    {
      if (!_parsingContext.inArray()) {
        _reportMismatchedEndMarker(j, '}');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_ARRAY;
      _currToken = ((JsonToken)localObject);
      return (JsonToken)localObject;
    }
    if (j == 125)
    {
      if (!_parsingContext.inObject()) {
        _reportMismatchedEndMarker(j, ']');
      }
      _parsingContext = _parsingContext.getParent();
      localObject = JsonToken.END_OBJECT;
      _currToken = ((JsonToken)localObject);
      return (JsonToken)localObject;
    }
    int i = j;
    if (_parsingContext.expectComma())
    {
      if (j != 44) {
        _reportUnexpectedChar(j, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
      }
      i = _skipWS();
    }
    if (!_parsingContext.inObject()) {
      return _nextTokenNotInObject(i);
    }
    Object localObject = _parseName(i);
    _parsingContext.setCurrentName(((Name)localObject).getName());
    _currToken = JsonToken.FIELD_NAME;
    i = _skipColon();
    if (i == 34)
    {
      _tokenIncomplete = true;
      _nextToken = JsonToken.VALUE_STRING;
      return _currToken;
    }
    switch (i)
    {
    default: 
      localObject = _handleUnexpectedValue(i);
    }
    for (;;)
    {
      _nextToken = ((JsonToken)localObject);
      return _currToken;
      localObject = _parseNegNumber();
      continue;
      localObject = _parsePosNumber(i);
      continue;
      _matchToken("false", 1);
      localObject = JsonToken.VALUE_FALSE;
      continue;
      _matchToken("null", 1);
      localObject = JsonToken.VALUE_NULL;
      continue;
      _matchToken("true", 1);
      localObject = JsonToken.VALUE_TRUE;
      continue;
      localObject = JsonToken.START_ARRAY;
      continue;
      localObject = JsonToken.START_OBJECT;
    }
  }
  
  protected final Name parseEscapedName(int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject2 = _icLatin1;
    int i = paramInt3;
    label40:
    Object localObject1;
    if (localObject2[paramInt3] != 0) {
      if (paramInt3 != 34) {
        if (paramInt3 != 92)
        {
          _throwUnquotedSpace(paramInt3, "name");
          i = paramInt3;
          if (paramInt3 <= 127) {
            break label490;
          }
          if (paramInt4 < 4) {
            break label487;
          }
          localObject1 = paramArrayOfInt;
          if (paramInt1 >= paramArrayOfInt.length)
          {
            localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
            _quadBuffer = ((int[])localObject1);
          }
          i = paramInt1 + 1;
          localObject1[paramInt1] = paramInt2;
          paramInt4 = 0;
          paramInt2 = 0;
          paramArrayOfInt = (int[])localObject1;
          paramInt1 = i;
          label101:
          if (paramInt3 >= 2048) {
            break label255;
          }
          i = paramInt3 >> 6 | 0xC0 | paramInt2 << 8;
          paramInt4 += 1;
          paramInt2 = paramInt1;
          paramInt1 = i;
          int j = paramInt3 & 0x3F | 0x80;
          i = paramInt4;
          paramInt3 = paramInt2;
          paramInt4 = paramInt1;
          paramInt2 = j;
          paramInt1 = paramInt3;
          paramInt3 = paramInt4;
        }
      }
    }
    for (;;)
    {
      if (i < 4)
      {
        paramInt4 = i + 1;
        paramInt2 |= paramInt3 << 8;
        label187:
        if ((_inputPtr >= _inputEnd) && (!loadMore())) {
          _reportInvalidEOF(" in field name");
        }
        localObject1 = _inputBuffer;
        paramInt3 = _inputPtr;
        _inputPtr = (paramInt3 + 1);
        paramInt3 = localObject1[paramInt3] & 0xFF;
        break;
        paramInt3 = _decodeEscaped();
        break label40;
        label255:
        i = paramInt3 >> 12 | 0xE0 | paramInt2 << 8;
        paramInt2 = paramInt4 + 1;
        if (paramInt2 < 4) {
          break label480;
        }
        localObject1 = paramArrayOfInt;
        if (paramInt1 >= paramArrayOfInt.length)
        {
          localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
          _quadBuffer = ((int[])localObject1);
        }
        localObject1[paramInt1] = i;
        paramInt1 += 1;
        paramArrayOfInt = (int[])localObject1;
        paramInt2 = 0;
      }
      label480:
      for (paramInt4 = 0;; paramInt4 = i)
      {
        i = paramInt4 << 8 | paramInt3 >> 6 & 0x3F | 0x80;
        paramInt4 = paramInt2 + 1;
        paramInt2 = paramInt1;
        paramInt1 = i;
        break;
        localObject1 = paramArrayOfInt;
        if (paramInt1 >= paramArrayOfInt.length)
        {
          localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
          _quadBuffer = ((int[])localObject1);
        }
        localObject1[paramInt1] = paramInt3;
        paramInt4 = 1;
        paramInt1 += 1;
        paramArrayOfInt = (int[])localObject1;
        break label187;
        localObject1 = paramArrayOfInt;
        paramInt3 = paramInt1;
        if (paramInt4 > 0)
        {
          localObject1 = paramArrayOfInt;
          if (paramInt1 >= paramArrayOfInt.length)
          {
            localObject1 = growArrayBy(paramArrayOfInt, paramArrayOfInt.length);
            _quadBuffer = ((int[])localObject1);
          }
          localObject1[paramInt1] = pad(paramInt2, paramInt4);
          paramInt3 = paramInt1 + 1;
        }
        localObject2 = _symbols.findName((int[])localObject1, paramInt3);
        paramArrayOfInt = (int[])localObject2;
        if (localObject2 == null) {
          paramArrayOfInt = addName((int[])localObject1, paramInt3, paramInt4);
        }
        return paramArrayOfInt;
      }
      label487:
      break label101;
      label490:
      paramInt3 = paramInt2;
      paramInt2 = i;
      i = paramInt4;
    }
  }
  
  protected final Name parseLongName(int paramInt1, int paramInt2)
  {
    _quadBuffer[0] = _quad1;
    _quadBuffer[1] = paramInt2;
    byte[] arrayOfByte = _inputBuffer;
    int[] arrayOfInt = _icLatin1;
    int i = 2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    while (_inputPtr + 4 <= _inputEnd)
    {
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] != 0)
      {
        if (i == 34) {
          return findName(_quadBuffer, paramInt1, paramInt2, 1);
        }
        return parseEscapedName(_quadBuffer, paramInt1, paramInt2, i, 1);
      }
      paramInt2 = paramInt2 << 8 | i;
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] != 0)
      {
        if (i == 34) {
          return findName(_quadBuffer, paramInt1, paramInt2, 2);
        }
        return parseEscapedName(_quadBuffer, paramInt1, paramInt2, i, 2);
      }
      paramInt2 = paramInt2 << 8 | i;
      i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfByte[i] & 0xFF;
      if (arrayOfInt[i] != 0)
      {
        if (i == 34) {
          return findName(_quadBuffer, paramInt1, paramInt2, 3);
        }
        return parseEscapedName(_quadBuffer, paramInt1, paramInt2, i, 3);
      }
      i = paramInt2 << 8 | i;
      paramInt2 = _inputPtr;
      _inputPtr = (paramInt2 + 1);
      paramInt2 = arrayOfByte[paramInt2] & 0xFF;
      if (arrayOfInt[paramInt2] != 0)
      {
        if (paramInt2 == 34) {
          return findName(_quadBuffer, paramInt1, i, 4);
        }
        return parseEscapedName(_quadBuffer, paramInt1, i, paramInt2, 4);
      }
      if (paramInt1 >= _quadBuffer.length) {
        _quadBuffer = growArrayBy(_quadBuffer, paramInt1);
      }
      _quadBuffer[paramInt1] = i;
      paramInt1 += 1;
    }
    return parseEscapedName(_quadBuffer, paramInt1, 0, paramInt2, 0);
  }
  
  protected final Name parseMediumName(int paramInt)
  {
    byte[] arrayOfByte = _inputBuffer;
    int[] arrayOfInt = _icLatin1;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (arrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 1);
      }
      return parseName(_quad1, paramInt, i, 1);
    }
    paramInt = i | paramInt << 8;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (arrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 2);
      }
      return parseName(_quad1, paramInt, i, 2);
    }
    paramInt = paramInt << 8 | i;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (arrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 3);
      }
      return parseName(_quad1, paramInt, i, 3);
    }
    paramInt = paramInt << 8 | i;
    i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (arrayOfInt[i] != 0)
    {
      if (i == 34) {
        return findName(_quad1, paramInt, 4);
      }
      return parseName(_quad1, paramInt, i, 4);
    }
    return parseLongName(i, paramInt);
  }
  
  public int readBinaryValue(Base64Variant paramBase64Variant, OutputStream paramOutputStream)
  {
    if ((!_tokenIncomplete) || (_currToken != JsonToken.VALUE_STRING))
    {
      paramBase64Variant = getBinaryValue(paramBase64Variant);
      paramOutputStream.write(paramBase64Variant);
      return paramBase64Variant.length;
    }
    byte[] arrayOfByte = _ioContext.allocBase64Buffer();
    try
    {
      int i = _readBinary(paramBase64Variant, paramOutputStream, arrayOfByte);
      return i;
    }
    finally
    {
      _ioContext.releaseBase64Buffer(arrayOfByte);
    }
  }
  
  public int releaseBuffered(OutputStream paramOutputStream)
  {
    int i = _inputEnd - _inputPtr;
    if (i <= 0) {
      return 0;
    }
    int j = _inputPtr;
    paramOutputStream.write(_inputBuffer, j, i);
    return i;
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
  
  protected Name slowParseName()
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing '\"' for name");
    }
    byte[] arrayOfByte = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfByte[i] & 0xFF;
    if (i == 34) {
      return BytesToNameCanonicalizer.getEmptyName();
    }
    return parseEscapedName(_quadBuffer, 0, 0, i, 0);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.json.UTF8StreamJsonParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */