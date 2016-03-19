package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.base.ParserBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.sym.CharsToNameCanonicalizer;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

public class ReaderBasedJsonParser
  extends ParserBase
{
  protected static final int[] _icLatin1 = ;
  protected boolean _bufferRecyclable;
  protected final int _hashSeed;
  protected char[] _inputBuffer;
  protected ObjectCodec _objectCodec;
  protected Reader _reader;
  protected final CharsToNameCanonicalizer _symbols;
  protected boolean _tokenIncomplete = false;
  
  public ReaderBasedJsonParser(IOContext paramIOContext, int paramInt, Reader paramReader, ObjectCodec paramObjectCodec, CharsToNameCanonicalizer paramCharsToNameCanonicalizer)
  {
    super(paramIOContext, paramInt);
    _reader = paramReader;
    _inputBuffer = paramIOContext.allocTokenBuffer();
    _inputPtr = 0;
    _inputEnd = 0;
    _objectCodec = paramObjectCodec;
    _symbols = paramCharsToNameCanonicalizer;
    _hashSeed = paramCharsToNameCanonicalizer.hashSeed();
    _bufferRecyclable = true;
  }
  
  public ReaderBasedJsonParser(IOContext paramIOContext, int paramInt1, Reader paramReader, ObjectCodec paramObjectCodec, CharsToNameCanonicalizer paramCharsToNameCanonicalizer, char[] paramArrayOfChar, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    super(paramIOContext, paramInt1);
    _reader = paramReader;
    _inputBuffer = paramArrayOfChar;
    _inputPtr = paramInt2;
    _inputEnd = paramInt3;
    _objectCodec = paramObjectCodec;
    _symbols = paramCharsToNameCanonicalizer;
    _hashSeed = paramCharsToNameCanonicalizer.hashSeed();
    _bufferRecyclable = paramBoolean;
  }
  
  private String _handleOddName2(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    char[] arrayOfChar = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    int k = paramArrayOfInt.length;
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        i = _inputBuffer[_inputPtr];
        if (i > k) {
          break label126;
        }
        if (paramArrayOfInt[i] == 0) {
          break label134;
        }
      }
      label126:
      while (!Character.isJavaIdentifierPart(i))
      {
        _textBuffer.setCurrentLength(paramInt1);
        paramArrayOfInt = _textBuffer;
        arrayOfChar = paramArrayOfInt.getTextBuffer();
        paramInt1 = paramArrayOfInt.getTextOffset();
        j = paramArrayOfInt.size();
        return _symbols.findSymbol(arrayOfChar, paramInt1, j, paramInt2);
      }
      label134:
      _inputPtr += 1;
      paramInt2 = paramInt2 * 33 + i;
      int j = paramInt1 + 1;
      arrayOfChar[paramInt1] = i;
      if (j >= arrayOfChar.length)
      {
        arrayOfChar = _textBuffer.finishCurrentSegment();
        paramInt1 = 0;
      }
      else
      {
        paramInt1 = j;
      }
    }
  }
  
  private final void _matchFalse()
  {
    int i = _inputPtr;
    if (i + 4 < _inputEnd)
    {
      char[] arrayOfChar = _inputBuffer;
      if (arrayOfChar[i] == 'a')
      {
        i += 1;
        if (arrayOfChar[i] == 'l')
        {
          i += 1;
          if (arrayOfChar[i] == 's')
          {
            i += 1;
            if (arrayOfChar[i] == 'e')
            {
              i += 1;
              int j = arrayOfChar[i];
              if ((j < 48) || (j == 93) || (j == 125))
              {
                _inputPtr = i;
                return;
              }
            }
          }
        }
      }
    }
    _matchToken("false", 1);
  }
  
  private final void _matchNull()
  {
    int i = _inputPtr;
    if (i + 3 < _inputEnd)
    {
      char[] arrayOfChar = _inputBuffer;
      if (arrayOfChar[i] == 'u')
      {
        i += 1;
        if (arrayOfChar[i] == 'l')
        {
          i += 1;
          if (arrayOfChar[i] == 'l')
          {
            i += 1;
            int j = arrayOfChar[i];
            if ((j < 48) || (j == 93) || (j == 125))
            {
              _inputPtr = i;
              return;
            }
          }
        }
      }
    }
    _matchToken("null", 1);
  }
  
  private final void _matchTrue()
  {
    int i = _inputPtr;
    if (i + 3 < _inputEnd)
    {
      char[] arrayOfChar = _inputBuffer;
      if (arrayOfChar[i] == 'r')
      {
        i += 1;
        if (arrayOfChar[i] == 'u')
        {
          i += 1;
          if (arrayOfChar[i] == 'e')
          {
            i += 1;
            int j = arrayOfChar[i];
            if ((j < 48) || (j == 93) || (j == 125))
            {
              _inputPtr = i;
              return;
            }
          }
        }
      }
    }
    _matchToken("true", 1);
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
  
  private final JsonToken _parseFloat(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4)
  {
    int k = 0;
    int i1 = 0;
    int i2 = _inputEnd;
    int i;
    char[] arrayOfChar;
    int j;
    if (paramInt1 == 46)
    {
      paramInt1 = 0;
      for (i = paramInt3;; i = paramInt3)
      {
        if (i >= i2) {
          return _parseNumber2(paramBoolean, paramInt2);
        }
        arrayOfChar = _inputBuffer;
        paramInt3 = i + 1;
        i = arrayOfChar[i];
        if ((i < 48) || (i > 57)) {
          break;
        }
        paramInt1 += 1;
      }
      if (paramInt1 == 0) {
        reportUnexpectedNumberChar(i, "Decimal point not followed by a digit");
      }
      j = paramInt1;
      paramInt1 = paramInt3;
    }
    for (paramInt3 = i;; paramInt3 = i)
    {
      int n;
      int m;
      if (paramInt3 != 101)
      {
        n = paramInt1;
        m = paramInt3;
        if (paramInt3 != 69) {}
      }
      else
      {
        if (paramInt1 >= i2)
        {
          _inputPtr = paramInt2;
          return _parseNumber2(paramBoolean, paramInt2);
        }
        arrayOfChar = _inputBuffer;
        i = paramInt1 + 1;
        paramInt3 = arrayOfChar[paramInt1];
        if ((paramInt3 != 45) && (paramInt3 != 43)) {
          break label343;
        }
        if (i >= i2)
        {
          _inputPtr = paramInt2;
          return _parseNumber2(paramBoolean, paramInt2);
        }
        arrayOfChar = _inputBuffer;
        paramInt1 = i + 1;
        paramInt3 = arrayOfChar[i];
        i = i1;
      }
      for (;;)
      {
        if ((paramInt3 <= 57) && (paramInt3 >= 48))
        {
          i += 1;
          if (paramInt1 >= i2)
          {
            _inputPtr = paramInt2;
            return _parseNumber2(paramBoolean, paramInt2);
          }
          paramInt3 = _inputBuffer[paramInt1];
          paramInt1 += 1;
        }
        else
        {
          k = i;
          n = paramInt1;
          m = paramInt3;
          if (i == 0)
          {
            reportUnexpectedNumberChar(paramInt3, "Exponent indicator not followed by a digit");
            m = paramInt3;
            n = paramInt1;
            k = i;
          }
          paramInt1 = n - 1;
          _inputPtr = paramInt1;
          if (_parsingContext.inRoot()) {
            _verifyRootSpace(m);
          }
          _textBuffer.resetWithShared(_inputBuffer, paramInt2, paramInt1 - paramInt2);
          return resetFloat(paramBoolean, paramInt4, j, k);
          label343:
          paramInt1 = i;
          i = i1;
        }
      }
      j = 0;
      i = paramInt1;
      paramInt1 = paramInt3;
    }
  }
  
  private String _parseName2(int paramInt1, int paramInt2, int paramInt3)
  {
    _textBuffer.resetWithShared(_inputBuffer, paramInt1, _inputPtr - paramInt1);
    Object localObject = _textBuffer.getCurrentSegment();
    paramInt1 = _textBuffer.getCurrentSegmentSize();
    for (;;)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(": was expecting closing '" + (char)paramInt3 + "' for name");
      }
      char[] arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      int j = arrayOfChar[k];
      int i = j;
      if (j <= 92)
      {
        if (j != 92) {
          break label171;
        }
        i = _decodeEscaped();
      }
      for (;;)
      {
        paramInt2 = paramInt2 * 33 + i;
        k = paramInt1 + 1;
        localObject[paramInt1] = i;
        if (k < localObject.length) {
          break label259;
        }
        localObject = _textBuffer.finishCurrentSegment();
        paramInt1 = 0;
        break;
        label171:
        i = j;
        if (j <= paramInt3)
        {
          if (j == paramInt3) {
            break label213;
          }
          i = j;
          if (j < 32)
          {
            _throwUnquotedSpace(j, "name");
            i = j;
          }
        }
      }
      label213:
      _textBuffer.setCurrentLength(paramInt1);
      localObject = _textBuffer;
      arrayOfChar = ((TextBuffer)localObject).getTextBuffer();
      paramInt1 = ((TextBuffer)localObject).getTextOffset();
      paramInt3 = ((TextBuffer)localObject).size();
      return _symbols.findSymbol(arrayOfChar, paramInt1, paramInt3, paramInt2);
      label259:
      paramInt1 = k;
    }
  }
  
  private final JsonToken _parseNumber2(boolean paramBoolean, int paramInt)
  {
    int k = paramInt;
    if (paramBoolean) {
      k = paramInt + 1;
    }
    _inputPtr = k;
    Object localObject2 = _textBuffer.emptyAndGetCurrentSegment();
    paramInt = 0;
    if (paramBoolean)
    {
      paramInt = 1;
      localObject2[0] = 45;
    }
    k = 0;
    Object localObject1;
    int m;
    int i;
    int i1;
    label102:
    int n;
    if (_inputPtr < _inputEnd)
    {
      localObject1 = _inputBuffer;
      m = _inputPtr;
      _inputPtr = (m + 1);
      i = localObject1[m];
      int j = i;
      if (i == 48) {
        j = _verifyNoLeadingZeroes();
      }
      i1 = 0;
      i = j;
      if ((i < 48) || (i > 57)) {
        break label878;
      }
      k += 1;
      n = paramInt;
      localObject1 = localObject2;
      if (paramInt >= localObject2.length)
      {
        localObject1 = _textBuffer.finishCurrentSegment();
        n = 0;
      }
      m = n + 1;
      localObject1[n] = i;
      if ((_inputPtr < _inputEnd) || (loadMore())) {
        break label209;
      }
      n = 1;
      paramInt = k;
      i = 0;
      k = n;
    }
    for (;;)
    {
      if (paramInt == 0)
      {
        return _handleInvalidNumberStart(i, paramBoolean);
        i = getNextChar("No digit following minus sign");
        break;
        label209:
        localObject2 = _inputBuffer;
        paramInt = _inputPtr;
        _inputPtr = (paramInt + 1);
        i = localObject2[paramInt];
        paramInt = m;
        localObject2 = localObject1;
        break label102;
      }
      n = 0;
      if (i == 46)
      {
        i1 = m + 1;
        localObject1[m] = i;
        m = i1;
        if ((_inputPtr >= _inputEnd) && (!loadMore()))
        {
          i1 = 1;
          label288:
          if (n == 0) {
            reportUnexpectedNumberChar(i, "Decimal point not followed by a digit");
          }
          k = n;
          n = m;
          m = i1;
          localObject2 = localObject1;
        }
      }
      for (;;)
      {
        int i2 = 0;
        label408:
        label440:
        label492:
        label508:
        int i3;
        if ((i == 101) || (i == 69))
        {
          i1 = n;
          localObject1 = localObject2;
          if (n >= localObject2.length)
          {
            localObject1 = _textBuffer.finishCurrentSegment();
            i1 = 0;
          }
          n = i1 + 1;
          localObject1[i1] = i;
          if (_inputPtr < _inputEnd)
          {
            localObject2 = _inputBuffer;
            i1 = _inputPtr;
            _inputPtr = (i1 + 1);
            i = localObject2[i1];
            if ((i != 45) && (i != 43)) {
              break label822;
            }
            if (n < localObject1.length) {
              break label819;
            }
            localObject1 = _textBuffer.finishCurrentSegment();
            n = 0;
            i1 = n + 1;
            localObject1[n] = i;
            if (_inputPtr >= _inputEnd) {
              break label758;
            }
            localObject2 = _inputBuffer;
            n = _inputPtr;
            _inputPtr = (n + 1);
            i = localObject2[n];
            n = 0;
            i2 = i1;
            localObject2 = localObject1;
            i1 = n;
            n = i2;
            if ((i > 57) || (i < 48)) {
              break label804;
            }
            i2 = i1 + 1;
            i3 = n;
            localObject1 = localObject2;
            if (n >= localObject2.length)
            {
              localObject1 = _textBuffer.finishCurrentSegment();
              i3 = 0;
            }
            i1 = i3 + 1;
            localObject1[i3] = i;
            if ((_inputPtr < _inputEnd) || (loadMore())) {
              break label771;
            }
            n = i2;
            m = 1;
            label591:
            if (n == 0) {
              reportUnexpectedNumberChar(i, "Exponent indicator not followed by a digit");
            }
            i3 = i;
            i2 = n;
            n = i3;
            label614:
            if (m == 0)
            {
              _inputPtr -= 1;
              if (_parsingContext.inRoot()) {
                _verifyRootSpace(n);
              }
            }
            _textBuffer.setCurrentLength(i1);
            return reset(paramBoolean, paramInt, k, i2);
            localObject2 = _inputBuffer;
            i1 = _inputPtr;
            _inputPtr = (i1 + 1);
            i = localObject2[i1];
            if ((i < 48) || (i > 57)) {
              break label849;
            }
            n += 1;
            if (m < localObject1.length) {
              break label846;
            }
            localObject1 = _textBuffer.finishCurrentSegment();
            m = 0;
          }
        }
        label758:
        label771:
        label804:
        label819:
        label822:
        label846:
        for (;;)
        {
          i1 = m + 1;
          localObject1[m] = i;
          m = i1;
          break;
          i = getNextChar("expected a digit for number exponent");
          break label408;
          i = getNextChar("expected a digit for number exponent");
          n = 0;
          break label492;
          localObject2 = _inputBuffer;
          n = _inputPtr;
          _inputPtr = (n + 1);
          i = localObject2[n];
          n = i2;
          break label492;
          i2 = i1;
          i1 = n;
          n = i2;
          break label591;
          break label440;
          i1 = 0;
          localObject2 = localObject1;
          break label508;
          i3 = i;
          i1 = n;
          n = i3;
          break label614;
        }
        label849:
        i1 = k;
        break label288;
        i1 = 0;
        n = m;
        localObject2 = localObject1;
        m = k;
        k = i1;
      }
      label878:
      n = k;
      localObject1 = localObject2;
      m = paramInt;
      k = i1;
      paramInt = n;
    }
  }
  
  private final int _skipAfterComma2()
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
      if (i > 32)
      {
        if (i == 47) {
          _skipComment();
        } else if ((i != 35) || (!_skipYAMLComment())) {
          return i;
        }
      }
      else if (i < 32) {
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
  
  private void _skipCComment()
  {
    while ((_inputPtr < _inputEnd) || (loadMore()))
    {
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
      if (i <= 42) {
        if (i == 42)
        {
          if ((_inputPtr >= _inputEnd) && (!loadMore())) {
            break;
          }
          if (_inputBuffer[_inputPtr] == '/') {
            _inputPtr += 1;
          }
        }
        else if (i < 32)
        {
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
    }
    _reportInvalidEOF(" in a comment");
  }
  
  private final int _skipColon()
  {
    if (_inputPtr + 4 >= _inputEnd) {
      return _skipColon2(false);
    }
    int j = _inputBuffer[_inputPtr];
    char[] arrayOfChar;
    int i;
    if (j == 58)
    {
      arrayOfChar = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfChar[i];
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
        arrayOfChar = _inputBuffer;
        i = _inputPtr + 1;
        _inputPtr = i;
        i = arrayOfChar[i];
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
      arrayOfChar = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfChar[i];
    }
    if (i == 58)
    {
      arrayOfChar = _inputBuffer;
      i = _inputPtr + 1;
      _inputPtr = i;
      i = arrayOfChar[i];
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
        arrayOfChar = _inputBuffer;
        i = _inputPtr + 1;
        _inputPtr = i;
        i = arrayOfChar[i];
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
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      i = arrayOfChar[i];
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
      else if (i < 32) {
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
  }
  
  private final int _skipComma(int paramInt)
  {
    if (paramInt != 44) {
      _reportUnexpectedChar(paramInt, "was expecting comma to separate " + _parsingContext.getTypeDesc() + " entries");
    }
    while (_inputPtr < _inputEnd)
    {
      char[] arrayOfChar = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      int i = arrayOfChar[paramInt];
      if (i > 32)
      {
        if (i != 47)
        {
          paramInt = i;
          if (i != 35) {}
        }
        else
        {
          _inputPtr -= 1;
          paramInt = _skipAfterComma2();
        }
        return paramInt;
      }
      if (i < 32) {
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
    return _skipAfterComma2();
  }
  
  private void _skipComment()
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_COMMENTS)) {
      _reportUnexpectedChar(47, "maybe a (non-standard) comment? (not recognized as one since Feature 'ALLOW_COMMENTS' not enabled for parser)");
    }
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in a comment");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    i = arrayOfChar[i];
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
  
  private void _skipLine()
  {
    for (;;)
    {
      int i;
      if ((_inputPtr < _inputEnd) || (loadMore()))
      {
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        i = arrayOfChar[i];
        if (i >= 32) {
          continue;
        }
        if (i == 10)
        {
          _currInputRow += 1;
          _currInputRowStart = _inputPtr;
        }
      }
      else
      {
        return;
      }
      if (i == 13)
      {
        _skipCR();
        return;
      }
      if (i != 9) {
        _throwInvalidSpace(i);
      }
    }
  }
  
  private final int _skipWSOrEnd()
  {
    int i;
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      i = _eofAsNextChar();
    }
    char[] arrayOfChar;
    int j;
    do
    {
      return i;
      arrayOfChar = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      j = arrayOfChar[i];
      if (j <= 32) {
        break label81;
      }
      if (j == 47) {
        break;
      }
      i = j;
    } while (j != 35);
    _inputPtr -= 1;
    return _skipWSOrEnd2();
    label81:
    if (j != 32)
    {
      if (j != 10) {
        break label178;
      }
      _currInputRow += 1;
      _currInputRowStart = _inputPtr;
    }
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        break label265;
      }
      arrayOfChar = _inputBuffer;
      i = _inputPtr;
      _inputPtr = (i + 1);
      j = arrayOfChar[i];
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
        label178:
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
    label265:
    return _skipWSOrEnd2();
  }
  
  private int _skipWSOrEnd2()
  {
    for (;;)
    {
      int i;
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        i = _eofAsNextChar();
      }
      int j;
      do
      {
        return i;
        char[] arrayOfChar = _inputBuffer;
        i = _inputPtr;
        _inputPtr = (i + 1);
        j = arrayOfChar[i];
        if (j <= 32) {
          break label82;
        }
        if (j == 47)
        {
          _skipComment();
          break;
        }
        i = j;
      } while (j != 35);
      if (!_skipYAMLComment())
      {
        return j;
        label82:
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
    }
  }
  
  private boolean _skipYAMLComment()
  {
    if (!isEnabled(JsonParser.Feature.ALLOW_YAML_COMMENTS)) {
      return false;
    }
    _skipLine();
    return true;
  }
  
  private char _verifyNLZ2()
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    char c2;
    do
    {
      for (char c1 = '0'; (_inputPtr >= _inputEnd) && (!loadMore()); c1 = c2) {
        do
        {
          return c1;
          c2 = _inputBuffer[_inputPtr];
          if ((c2 < '0') || (c2 > '9')) {
            return '0';
          }
          if (!isEnabled(JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS)) {
            reportInvalidNumber("Leading zeroes not allowed");
          }
          _inputPtr += 1;
          c1 = c2;
        } while (c2 != '0');
      }
      c2 = _inputBuffer[_inputPtr];
      if ((c2 < '0') || (c2 > '9')) {
        return '0';
      }
      _inputPtr += 1;
      c1 = c2;
    } while (c2 == '0');
    return c2;
  }
  
  private final char _verifyNoLeadingZeroes()
  {
    if (_inputPtr < _inputEnd)
    {
      int i = _inputBuffer[_inputPtr];
      if ((i < 48) || (i > 57)) {
        return '0';
      }
    }
    return _verifyNLZ2();
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
  
  protected void _closeInput()
  {
    if (_reader != null)
    {
      if ((_ioContext.isResourceManaged()) || (isEnabled(JsonParser.Feature.AUTO_CLOSE_SOURCE))) {
        _reader.close();
      }
      _reader = null;
    }
  }
  
  protected byte[] _decodeBase64(Base64Variant paramBase64Variant)
  {
    ByteArrayBuilder localByteArrayBuilder = _getByteArrayBuilder();
    for (;;)
    {
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      char[] arrayOfChar = _inputBuffer;
      int i = _inputPtr;
      _inputPtr = (i + 1);
      char c = arrayOfChar[i];
      if (c > ' ')
      {
        int j = paramBase64Variant.decodeBase64Char(c);
        i = j;
        if (j < 0)
        {
          if (c == '"') {
            return localByteArrayBuilder.toByteArray();
          }
          i = _decodeBase64Escape(paramBase64Variant, c, 0);
          if (i < 0) {}
        }
        else
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          c = arrayOfChar[j];
          int k = paramBase64Variant.decodeBase64Char(c);
          j = k;
          if (k < 0) {
            j = _decodeBase64Escape(paramBase64Variant, c, 1);
          }
          int m = j | i << 6;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((c == '"') && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.append(m >> 4);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, c, 2);
            }
            k = i;
            if (i == -2)
            {
              if (_inputPtr >= _inputEnd) {
                loadMoreGuaranteed();
              }
              arrayOfChar = _inputBuffer;
              i = _inputPtr;
              _inputPtr = (i + 1);
              c = arrayOfChar[i];
              if (!paramBase64Variant.usesPaddingChar(c)) {
                throw reportInvalidBase64Char(paramBase64Variant, c, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
              }
              localByteArrayBuilder.append(m >> 4);
              continue;
            }
          }
          m = m << 6 | k;
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          i = _inputPtr;
          _inputPtr = (i + 1);
          c = arrayOfChar[i];
          j = paramBase64Variant.decodeBase64Char(c);
          k = j;
          if (j < 0)
          {
            i = j;
            if (j != -2)
            {
              if ((c == '"') && (!paramBase64Variant.usesPadding()))
              {
                localByteArrayBuilder.appendTwoBytes(m >> 2);
                return localByteArrayBuilder.toByteArray();
              }
              i = _decodeBase64Escape(paramBase64Variant, c, 3);
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
  
  protected char _decodeEscaped()
  {
    int j = 0;
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(" in character escape sequence");
    }
    char[] arrayOfChar = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    char c2 = arrayOfChar[i];
    char c1 = c2;
    switch (c2)
    {
    default: 
      c1 = _handleUnrecognizedCharacterEscape(c2);
    case '"': 
    case '/': 
    case '\\': 
      return c1;
    case 'b': 
      return '\b';
    case 't': 
      return '\t';
    case 'n': 
      return '\n';
    case 'f': 
      return '\f';
    case 'r': 
      return '\r';
    }
    i = 0;
    while (i < 4)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOF(" in character escape sequence");
      }
      arrayOfChar = _inputBuffer;
      int k = _inputPtr;
      _inputPtr = (k + 1);
      k = arrayOfChar[k];
      int m = CharTypes.charToHex(k);
      if (m < 0) {
        _reportUnexpectedChar(k, "expected a hex-digit for character escape sequence");
      }
      j = j << 4 | m;
      i += 1;
    }
    return (char)j;
  }
  
  protected final void _finishString()
  {
    int i = _inputPtr;
    int k = _inputEnd;
    int j = i;
    if (i < k)
    {
      int[] arrayOfInt = _icLatin1;
      int m = arrayOfInt.length;
      do
      {
        int n = _inputBuffer[i];
        if ((n < m) && (arrayOfInt[n] != 0))
        {
          j = i;
          if (n != 34) {
            break;
          }
          _textBuffer.resetWithShared(_inputBuffer, _inputPtr, i - _inputPtr);
          _inputPtr = (i + 1);
          return;
        }
        j = i + 1;
        i = j;
      } while (j < k);
    }
    _textBuffer.resetWithCopy(_inputBuffer, _inputPtr, j - _inputPtr);
    _inputPtr = j;
    _finishString2();
  }
  
  protected void _finishString2()
  {
    char[] arrayOfChar1 = _textBuffer.getCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    int[] arrayOfInt = _icLatin1;
    int n = arrayOfInt.length;
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    char[] arrayOfChar2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = arrayOfChar2[m];
    int i = j;
    if (j < n)
    {
      i = j;
      if (arrayOfInt[j] != 0)
      {
        if (j == 34) {
          break label167;
        }
        if (j != 92) {
          break label146;
        }
        i = _decodeEscaped();
      }
    }
    label112:
    if (k >= arrayOfChar1.length)
    {
      arrayOfChar1 = _textBuffer.finishCurrentSegment();
      k = 0;
    }
    for (;;)
    {
      m = k + 1;
      arrayOfChar1[k] = i;
      k = m;
      break;
      label146:
      i = j;
      if (j >= 32) {
        break label112;
      }
      _throwUnquotedSpace(j, "string value");
      i = j;
      break label112;
      label167:
      _textBuffer.setCurrentLength(k);
      return;
    }
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
    char[] arrayOfChar1 = _textBuffer.emptyAndGetCurrentSegment();
    int k = _textBuffer.getCurrentSegmentSize();
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(": was expecting closing quote for a string value");
    }
    char[] arrayOfChar2 = _inputBuffer;
    int m = _inputPtr;
    _inputPtr = (m + 1);
    int j = arrayOfChar2[m];
    int i = j;
    if (j <= 92)
    {
      if (j == 92) {
        i = _decodeEscaped();
      }
    }
    else
    {
      label87:
      if (k < arrayOfChar1.length) {
        break label168;
      }
      arrayOfChar1 = _textBuffer.finishCurrentSegment();
      k = 0;
    }
    label168:
    for (;;)
    {
      m = k + 1;
      arrayOfChar1[k] = i;
      k = m;
      break;
      i = j;
      if (j > 39) {
        break label87;
      }
      if (j != 39)
      {
        i = j;
        if (j >= 32) {
          break label87;
        }
        _throwUnquotedSpace(j, "string value");
        i = j;
        break label87;
      }
      _textBuffer.setCurrentLength(k);
      return JsonToken.VALUE_STRING;
    }
  }
  
  protected JsonToken _handleInvalidNumberStart(int paramInt, boolean paramBoolean)
  {
    double d = Double.NEGATIVE_INFINITY;
    int i = paramInt;
    Object localObject;
    if (paramInt == 73)
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidEOFInValue();
      }
      localObject = _inputBuffer;
      paramInt = _inputPtr;
      _inputPtr = (paramInt + 1);
      paramInt = localObject[paramInt];
      if (paramInt != 78) {
        break label159;
      }
      if (paramBoolean)
      {
        localObject = "-INF";
        _matchToken((String)localObject, 3);
        if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
          break label117;
        }
        if (!paramBoolean) {
          break label110;
        }
      }
      for (;;)
      {
        return resetAsNaN((String)localObject, d);
        localObject = "+INF";
        break;
        label110:
        d = Double.POSITIVE_INFINITY;
      }
      label117:
      _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
      i = paramInt;
    }
    for (;;)
    {
      reportUnexpectedNumberChar(i, "expected digit (0-9) to follow minus sign, for valid numeric value");
      return null;
      label159:
      i = paramInt;
      if (paramInt == 110)
      {
        if (paramBoolean)
        {
          localObject = "-Infinity";
          _matchToken((String)localObject, 3);
          if (!isEnabled(JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS)) {
            break label221;
          }
          if (!paramBoolean) {
            break label214;
          }
        }
        for (;;)
        {
          return resetAsNaN((String)localObject, d);
          localObject = "+Infinity";
          break;
          label214:
          d = Double.POSITIVE_INFINITY;
        }
        label221:
        _reportError("Non-standard token '" + (String)localObject + "': enable JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS to allow");
        i = paramInt;
      }
    }
  }
  
  protected String _handleOddName(int paramInt)
  {
    if ((paramInt == 39) && (isEnabled(JsonParser.Feature.ALLOW_SINGLE_QUOTES))) {
      return _parseAposName();
    }
    if (!isEnabled(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES)) {
      _reportUnexpectedChar(paramInt, "was expecting double-quote to start field name");
    }
    int[] arrayOfInt = CharTypes.getInputCodeLatin1JsNames();
    int m = arrayOfInt.length;
    boolean bool;
    int k;
    int n;
    int j;
    if (paramInt < m) {
      if (arrayOfInt[paramInt] == 0)
      {
        bool = true;
        if (!bool) {
          _reportUnexpectedChar(paramInt, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name");
        }
        k = _inputPtr;
        i = _hashSeed;
        n = _inputEnd;
        j = i;
        paramInt = k;
        if (k >= n) {
          break label239;
        }
        paramInt = k;
      }
    }
    label212:
    do
    {
      j = _inputBuffer[paramInt];
      if (j < m)
      {
        if (arrayOfInt[j] == 0) {
          break label212;
        }
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
        bool = false;
        break;
        bool = Character.isJavaIdentifierPart((char)paramInt);
        break;
      }
      if (!Character.isJavaIdentifierPart((char)j))
      {
        j = _inputPtr - 1;
        _inputPtr = paramInt;
        return _symbols.findSymbol(_inputBuffer, j, paramInt - j, i);
      }
      j = i * 33 + j;
      k = paramInt + 1;
      i = j;
      paramInt = k;
    } while (k < n);
    paramInt = k;
    label239:
    int i = _inputPtr;
    _inputPtr = paramInt;
    return _handleOddName2(i - 1, j, arrayOfInt);
  }
  
  protected JsonToken _handleOddValue(int paramInt)
  {
    switch (paramInt)
    {
    default: 
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
    char[] arrayOfChar = _inputBuffer;
    paramInt = _inputPtr;
    _inputPtr = (paramInt + 1);
    return _handleInvalidNumberStart(arrayOfChar[paramInt], false);
  }
  
  protected final void _matchToken(String paramString, int paramInt)
  {
    int j = paramString.length();
    int i;
    do
    {
      if ((_inputPtr >= _inputEnd) && (!loadMore())) {
        _reportInvalidToken(paramString.substring(0, paramInt));
      }
      if (_inputBuffer[_inputPtr] != paramString.charAt(paramInt)) {
        _reportInvalidToken(paramString.substring(0, paramInt));
      }
      _inputPtr += 1;
      i = paramInt + 1;
      paramInt = i;
    } while (i < j);
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {}
    char c;
    do
    {
      return;
      c = _inputBuffer[_inputPtr];
    } while ((c < '0') || (c == ']') || (c == '}') || (!Character.isJavaIdentifierPart(c)));
    _reportInvalidToken(paramString.substring(0, i));
  }
  
  protected String _parseAposName()
  {
    int i = _inputPtr;
    int k = _hashSeed;
    int n = _inputEnd;
    int m = k;
    int j = i;
    if (i < n)
    {
      int[] arrayOfInt = _icLatin1;
      int i1 = arrayOfInt.length;
      do
      {
        int i2 = _inputBuffer[i];
        if (i2 == 39)
        {
          j = _inputPtr;
          _inputPtr = (i + 1);
          return _symbols.findSymbol(_inputBuffer, j, i - j, k);
        }
        if (i2 < i1)
        {
          m = k;
          j = i;
          if (arrayOfInt[i2] != 0) {
            break;
          }
        }
        m = k * 33 + i2;
        j = i + 1;
        k = m;
        i = j;
      } while (j < n);
    }
    i = _inputPtr;
    _inputPtr = j;
    return _parseName2(i, m, 39);
  }
  
  protected final String _parseName()
  {
    int i = _inputPtr;
    int j = _hashSeed;
    int[] arrayOfInt = _icLatin1;
    while (i < _inputEnd)
    {
      k = _inputBuffer[i];
      if ((k < arrayOfInt.length) && (arrayOfInt[k] != 0))
      {
        if (k != 34) {
          break;
        }
        k = _inputPtr;
        _inputPtr = (i + 1);
        return _symbols.findSymbol(_inputBuffer, k, i - k, j);
      }
      j = j * 33 + k;
      i += 1;
    }
    int k = _inputPtr;
    _inputPtr = i;
    return _parseName2(k, j, 34);
  }
  
  protected final JsonToken _parseNegNumber()
  {
    int i = _inputPtr;
    int m = i - 1;
    int n = _inputEnd;
    if (i >= n) {
      return _parseNumber2(true, m);
    }
    char[] arrayOfChar = _inputBuffer;
    int j = i + 1;
    i = arrayOfChar[i];
    if ((i > 57) || (i < 48))
    {
      _inputPtr = j;
      return _handleInvalidNumberStart(i, true);
    }
    if (i == 48) {
      return _parseNumber2(true, m);
    }
    i = 1;
    int k;
    for (;;)
    {
      if (j >= n) {
        return _parseNumber2(true, m);
      }
      arrayOfChar = _inputBuffer;
      k = j + 1;
      j = arrayOfChar[j];
      if ((j < 48) || (j > 57)) {
        break;
      }
      i += 1;
      j = k;
    }
    if ((j == 46) || (j == 101) || (j == 69))
    {
      _inputPtr = k;
      return _parseFloat(j, m, k, true, i);
    }
    k -= 1;
    _inputPtr = k;
    if (_parsingContext.inRoot()) {
      _verifyRootSpace(j);
    }
    _textBuffer.resetWithShared(_inputBuffer, m, k - m);
    return resetInt(true, i);
  }
  
  protected final JsonToken _parsePosNumber(int paramInt)
  {
    int i = _inputPtr;
    int k = i - 1;
    int m = _inputEnd;
    if (paramInt == 48) {
      return _parseNumber2(false, k);
    }
    paramInt = 1;
    int j;
    for (;;)
    {
      if (i >= m)
      {
        _inputPtr = k;
        return _parseNumber2(false, k);
      }
      char[] arrayOfChar = _inputBuffer;
      j = i + 1;
      i = arrayOfChar[i];
      if ((i < 48) || (i > 57)) {
        break;
      }
      paramInt += 1;
      i = j;
    }
    if ((i == 46) || (i == 101) || (i == 69))
    {
      _inputPtr = j;
      return _parseFloat(i, k, j, false, paramInt);
    }
    j -= 1;
    _inputPtr = j;
    if (_parsingContext.inRoot()) {
      _verifyRootSpace(i);
    }
    _textBuffer.resetWithShared(_inputBuffer, k, j - k);
    return resetInt(false, paramInt);
  }
  
  protected int _readBinary(Base64Variant paramBase64Variant, OutputStream paramOutputStream, byte[] paramArrayOfByte)
  {
    int i1 = paramArrayOfByte.length;
    int j = 0;
    int i = 0;
    char[] arrayOfChar;
    int k;
    char c;
    int m;
    do
    {
      do
      {
        if (_inputPtr >= _inputEnd) {
          loadMoreGuaranteed();
        }
        arrayOfChar = _inputBuffer;
        k = _inputPtr;
        _inputPtr = (k + 1);
        c = arrayOfChar[k];
      } while (c <= ' ');
      k = paramBase64Variant.decodeBase64Char(c);
      m = k;
      if (k >= 0) {
        break;
      }
      m = j;
      k = i;
      if (c == '"') {
        break label323;
      }
      m = _decodeBase64Escape(paramBase64Variant, c, 0);
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
      arrayOfChar = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      c = arrayOfChar[j];
      int n = paramBase64Variant.decodeBase64Char(c);
      j = n;
      if (n < 0) {
        j = _decodeBase64Escape(paramBase64Variant, c, 1);
      }
      int i2 = m << 6 | j;
      if (_inputPtr >= _inputEnd) {
        loadMoreGuaranteed();
      }
      arrayOfChar = _inputBuffer;
      j = _inputPtr;
      _inputPtr = (j + 1);
      c = arrayOfChar[j];
      m = paramBase64Variant.decodeBase64Char(c);
      n = m;
      if (m < 0)
      {
        j = m;
        if (m != -2) {
          if ((c == '"') && (!paramBase64Variant.usesPadding()))
          {
            j = k + 1;
            paramArrayOfByte[k] = ((byte)(i2 >> 4));
            k = j;
          }
        }
      }
      for (m = i;; m = i)
      {
        label323:
        _tokenIncomplete = false;
        i = m;
        if (k > 0)
        {
          i = m + k;
          paramOutputStream.write(paramArrayOfByte, 0, k);
        }
        return i;
        j = _decodeBase64Escape(paramBase64Variant, c, 2);
        n = j;
        if (j == -2)
        {
          if (_inputPtr >= _inputEnd) {
            loadMoreGuaranteed();
          }
          arrayOfChar = _inputBuffer;
          j = _inputPtr;
          _inputPtr = (j + 1);
          c = arrayOfChar[j];
          if (!paramBase64Variant.usesPaddingChar(c)) {
            throw reportInvalidBase64Char(paramBase64Variant, c, 3, "expected padding character '" + paramBase64Variant.getPaddingChar() + "'");
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
        arrayOfChar = _inputBuffer;
        j = _inputPtr;
        _inputPtr = (j + 1);
        c = arrayOfChar[j];
        m = paramBase64Variant.decodeBase64Char(c);
        n = m;
        if (m >= 0) {
          break label691;
        }
        j = m;
        if (m == -2) {
          break label634;
        }
        if ((c != '"') || (paramBase64Variant.usesPadding())) {
          break label624;
        }
        j = i2 >> 2;
        m = k + 1;
        paramArrayOfByte[k] = ((byte)(j >> 8));
        k = m + 1;
        paramArrayOfByte[m] = ((byte)j);
      }
      label624:
      j = _decodeBase64Escape(paramBase64Variant, c, 3);
      label634:
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
      label691:
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
      char[] arrayOfChar = _inputBuffer;
      if (arrayOfChar != null)
      {
        _inputBuffer = null;
        _ioContext.releaseTokenBuffer(arrayOfChar);
      }
    }
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
      char c = _inputBuffer[_inputPtr];
      if (!Character.isJavaIdentifierPart(c)) {
        break;
      }
      _inputPtr += 1;
      paramString1.append(c);
    }
    _reportError("Unrecognized token '" + paramString1.toString() + "': was expecting " + paramString2);
  }
  
  protected final void _skipCR()
  {
    if (((_inputPtr < _inputEnd) || (loadMore())) && (_inputBuffer[_inputPtr] == '\n')) {
      _inputPtr += 1;
    }
    _currInputRow += 1;
    _currInputRowStart = _inputPtr;
  }
  
  protected final void _skipString()
  {
    _tokenIncomplete = false;
    int i = _inputPtr;
    int j = _inputEnd;
    char[] arrayOfChar = _inputBuffer;
    for (;;)
    {
      int k = j;
      int m = i;
      if (i >= j)
      {
        _inputPtr = i;
        if (!loadMore()) {
          _reportInvalidEOF(": was expecting closing quote for a string value");
        }
        m = _inputPtr;
        k = _inputEnd;
      }
      i = m + 1;
      j = arrayOfChar[m];
      if (j <= 92)
      {
        if (j == 92)
        {
          _inputPtr = i;
          _decodeEscaped();
          i = _inputPtr;
          j = _inputEnd;
          continue;
        }
        if (j <= 34)
        {
          if (j == 34)
          {
            _inputPtr = i;
            return;
          }
          if (j < 32)
          {
            _inputPtr = i;
            _throwUnquotedSpace(j, "string value");
          }
        }
      }
      j = k;
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
  
  public Object getInputSource()
  {
    return _reader;
  }
  
  protected char getNextChar(String paramString)
  {
    if ((_inputPtr >= _inputEnd) && (!loadMore())) {
      _reportInvalidEOF(paramString);
    }
    paramString = _inputBuffer;
    int i = _inputPtr;
    _inputPtr = (i + 1);
    return paramString[i];
  }
  
  public final String getText()
  {
    JsonToken localJsonToken = _currToken;
    if (localJsonToken == JsonToken.VALUE_STRING)
    {
      if (_tokenIncomplete)
      {
        _tokenIncomplete = false;
        _finishString();
      }
      return _textBuffer.contentsAsString();
    }
    return _getText2(localJsonToken);
  }
  
  public final char[] getTextCharacters()
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
  
  public final int getTextLength()
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
  
  public final int getTextOffset()
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
  
  public final String getValueAsString()
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
  
  public final String getValueAsString(String paramString)
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
  
  protected boolean loadMore()
  {
    boolean bool2 = false;
    _currInputProcessed += _inputEnd;
    _currInputRowStart -= _inputEnd;
    boolean bool1 = bool2;
    int i;
    if (_reader != null)
    {
      i = _reader.read(_inputBuffer, 0, _inputBuffer.length);
      if (i <= 0) {
        break label74;
      }
      _inputPtr = 0;
      _inputEnd = i;
      bool1 = true;
    }
    label74:
    do
    {
      return bool1;
      _closeInput();
      bool1 = bool2;
    } while (i != 0);
    throw new IOException("Reader returned 0 characters when trying to read " + _inputEnd);
  }
  
  public final Boolean nextBooleanValue()
  {
    Object localObject2 = null;
    JsonToken localJsonToken;
    Object localObject1;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      _nameCopied = false;
      localJsonToken = _nextToken;
      _nextToken = null;
      _currToken = localJsonToken;
      if (localJsonToken == JsonToken.VALUE_TRUE) {
        localObject1 = Boolean.TRUE;
      }
    }
    int i;
    do
    {
      do
      {
        do
        {
          return (Boolean)localObject1;
          if (localJsonToken == JsonToken.VALUE_FALSE) {
            return Boolean.FALSE;
          }
          if (localJsonToken == JsonToken.START_ARRAY)
          {
            _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
            return null;
          }
          localObject1 = localObject2;
        } while (localJsonToken != JsonToken.START_OBJECT);
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
        return null;
        localJsonToken = nextToken();
        localObject1 = localObject2;
      } while (localJsonToken == null);
      i = localJsonToken.id();
      if (i == 9) {
        return Boolean.TRUE;
      }
      localObject1 = localObject2;
    } while (i != 10);
    return Boolean.FALSE;
  }
  
  public final int nextIntValue(int paramInt)
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
  
  public final long nextLongValue(long paramLong)
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
  
  public final String nextTextValue()
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
  
  public final JsonToken nextToken()
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
    Object localObject;
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
    if (_parsingContext.expectComma()) {
      i = _skipComma(j);
    }
    boolean bool = _parsingContext.inObject();
    j = i;
    if (bool)
    {
      if (i == 34)
      {
        localObject = _parseName();
        _parsingContext.setCurrentName((String)localObject);
        _currToken = JsonToken.FIELD_NAME;
        j = _skipColon();
      }
    }
    else {
      switch (j)
      {
      default: 
        localObject = _handleOddValue(j);
      }
    }
    for (;;)
    {
      if (!bool) {
        break label590;
      }
      _nextToken = ((JsonToken)localObject);
      return _currToken;
      localObject = _handleOddName(i);
      break;
      _tokenIncomplete = true;
      localObject = JsonToken.VALUE_STRING;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildArrayContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_ARRAY;
      continue;
      if (!bool) {
        _parsingContext = _parsingContext.createChildObjectContext(_tokenInputRow, _tokenInputCol);
      }
      localObject = JsonToken.START_OBJECT;
      continue;
      _reportUnexpectedChar(j, "expected a value");
      _matchTrue();
      localObject = JsonToken.VALUE_TRUE;
      continue;
      _matchFalse();
      localObject = JsonToken.VALUE_FALSE;
      continue;
      _matchNull();
      localObject = JsonToken.VALUE_NULL;
      continue;
      localObject = _parseNegNumber();
      continue;
      localObject = _parsePosNumber(j);
    }
    label590:
    _currToken = ((JsonToken)localObject);
    return (JsonToken)localObject;
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
  
  public int releaseBuffered(Writer paramWriter)
  {
    int i = _inputEnd - _inputPtr;
    if (i <= 0) {
      return 0;
    }
    int j = _inputPtr;
    paramWriter.write(_inputBuffer, j, i);
    return i;
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    _objectCodec = paramObjectCodec;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.json.ReaderBasedJsonParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */