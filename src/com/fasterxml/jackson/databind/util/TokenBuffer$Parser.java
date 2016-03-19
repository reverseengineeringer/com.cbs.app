package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.base.ParserMinimalBase;
import com.fasterxml.jackson.core.json.JsonReadContext;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public final class TokenBuffer$Parser
  extends ParserMinimalBase
{
  protected transient ByteArrayBuilder _byteBuilder;
  protected boolean _closed;
  protected ObjectCodec _codec;
  protected final boolean _hasNativeIds;
  protected final boolean _hasNativeObjectIds;
  protected final boolean _hasNativeTypeIds;
  protected JsonLocation _location = null;
  protected JsonReadContext _parsingContext;
  protected TokenBuffer.Segment _segment;
  protected int _segmentPtr;
  
  public TokenBuffer$Parser(TokenBuffer.Segment paramSegment, ObjectCodec paramObjectCodec, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(0);
    _segment = paramSegment;
    _segmentPtr = -1;
    _codec = paramObjectCodec;
    _parsingContext = JsonReadContext.createRootContext(null);
    _hasNativeTypeIds = paramBoolean1;
    _hasNativeObjectIds = paramBoolean2;
    _hasNativeIds = (paramBoolean1 | paramBoolean2);
  }
  
  protected final void _checkIsNumber()
  {
    if ((_currToken == null) || (!_currToken.isNumeric())) {
      throw _constructError("Current token (" + _currToken + ") not numeric, can not use numeric value accessors");
    }
  }
  
  protected final Object _currentObject()
  {
    return _segment.get(_segmentPtr);
  }
  
  protected final void _handleEOF()
  {
    _throwInternal();
  }
  
  public final boolean canReadObjectId()
  {
    return _hasNativeObjectIds;
  }
  
  public final boolean canReadTypeId()
  {
    return _hasNativeTypeIds;
  }
  
  public final void close()
  {
    if (!_closed) {
      _closed = true;
    }
  }
  
  public final BigInteger getBigIntegerValue()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigInteger)) {
      return (BigInteger)localNumber;
    }
    if (getNumberType() == JsonParser.NumberType.BIG_DECIMAL) {
      return ((BigDecimal)localNumber).toBigInteger();
    }
    return BigInteger.valueOf(localNumber.longValue());
  }
  
  public final byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    if (_currToken == JsonToken.VALUE_EMBEDDED_OBJECT)
    {
      localObject = _currentObject();
      if ((localObject instanceof byte[])) {
        return (byte[])localObject;
      }
    }
    if (_currToken != JsonToken.VALUE_STRING) {
      throw _constructError("Current token (" + _currToken + ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary");
    }
    String str = getText();
    if (str == null) {
      return null;
    }
    Object localObject = _byteBuilder;
    if (localObject == null)
    {
      localObject = new ByteArrayBuilder(100);
      _byteBuilder = ((ByteArrayBuilder)localObject);
    }
    for (;;)
    {
      _decodeBase64(str, (ByteArrayBuilder)localObject, paramBase64Variant);
      return ((ByteArrayBuilder)localObject).toByteArray();
      _byteBuilder.reset();
    }
  }
  
  public final ObjectCodec getCodec()
  {
    return _codec;
  }
  
  public final JsonLocation getCurrentLocation()
  {
    if (_location == null) {
      return JsonLocation.NA;
    }
    return _location;
  }
  
  public final String getCurrentName()
  {
    return _parsingContext.getCurrentName();
  }
  
  public final BigDecimal getDecimalValue()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof BigDecimal)) {
      return (BigDecimal)localNumber;
    }
    switch (TokenBuffer.1.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[getNumberType().ordinal()])
    {
    case 3: 
    case 4: 
    default: 
      return BigDecimal.valueOf(localNumber.doubleValue());
    case 1: 
    case 5: 
      return BigDecimal.valueOf(localNumber.longValue());
    }
    return new BigDecimal((BigInteger)localNumber);
  }
  
  public final double getDoubleValue()
  {
    return getNumberValue().doubleValue();
  }
  
  public final Object getEmbeddedObject()
  {
    if (_currToken == JsonToken.VALUE_EMBEDDED_OBJECT) {
      return _currentObject();
    }
    return null;
  }
  
  public final float getFloatValue()
  {
    return getNumberValue().floatValue();
  }
  
  public final int getIntValue()
  {
    if (_currToken == JsonToken.VALUE_NUMBER_INT) {
      return ((Number)_currentObject()).intValue();
    }
    return getNumberValue().intValue();
  }
  
  public final long getLongValue()
  {
    return getNumberValue().longValue();
  }
  
  public final JsonParser.NumberType getNumberType()
  {
    Number localNumber = getNumberValue();
    if ((localNumber instanceof Integer)) {
      return JsonParser.NumberType.INT;
    }
    if ((localNumber instanceof Long)) {
      return JsonParser.NumberType.LONG;
    }
    if ((localNumber instanceof Double)) {
      return JsonParser.NumberType.DOUBLE;
    }
    if ((localNumber instanceof BigDecimal)) {
      return JsonParser.NumberType.BIG_DECIMAL;
    }
    if ((localNumber instanceof BigInteger)) {
      return JsonParser.NumberType.BIG_INTEGER;
    }
    if ((localNumber instanceof Float)) {
      return JsonParser.NumberType.FLOAT;
    }
    if ((localNumber instanceof Short)) {
      return JsonParser.NumberType.INT;
    }
    return null;
  }
  
  public final Number getNumberValue()
  {
    _checkIsNumber();
    Object localObject = _currentObject();
    if ((localObject instanceof Number)) {
      return (Number)localObject;
    }
    if ((localObject instanceof String))
    {
      localObject = (String)localObject;
      if (((String)localObject).indexOf('.') >= 0) {
        return Double.valueOf(Double.parseDouble((String)localObject));
      }
      return Long.valueOf(Long.parseLong((String)localObject));
    }
    if (localObject == null) {
      return null;
    }
    throw new IllegalStateException("Internal error: entry should be a Number, but is of type " + localObject.getClass().getName());
  }
  
  public final Object getObjectId()
  {
    return _segment.findObjectId(_segmentPtr);
  }
  
  public final JsonStreamContext getParsingContext()
  {
    return _parsingContext;
  }
  
  public final String getText()
  {
    if ((_currToken == JsonToken.VALUE_STRING) || (_currToken == JsonToken.FIELD_NAME))
    {
      localObject = _currentObject();
      if ((localObject instanceof String)) {
        return (String)localObject;
      }
      if (localObject == null) {
        return null;
      }
      return localObject.toString();
    }
    if (_currToken == null) {
      return null;
    }
    switch (TokenBuffer.1.$SwitchMap$com$fasterxml$jackson$core$JsonToken[_currToken.ordinal()])
    {
    default: 
      return _currToken.asString();
    }
    Object localObject = _currentObject();
    if (localObject == null) {
      return null;
    }
    return localObject.toString();
  }
  
  public final char[] getTextCharacters()
  {
    String str = getText();
    if (str == null) {
      return null;
    }
    return str.toCharArray();
  }
  
  public final int getTextLength()
  {
    String str = getText();
    if (str == null) {
      return 0;
    }
    return str.length();
  }
  
  public final int getTextOffset()
  {
    return 0;
  }
  
  public final JsonLocation getTokenLocation()
  {
    return getCurrentLocation();
  }
  
  public final Object getTypeId()
  {
    return _segment.findTypeId(_segmentPtr);
  }
  
  public final boolean hasTextCharacters()
  {
    return false;
  }
  
  public final boolean isClosed()
  {
    return _closed;
  }
  
  public final JsonToken nextToken()
  {
    if ((_closed) || (_segment == null)) {}
    do
    {
      return null;
      int i = _segmentPtr + 1;
      _segmentPtr = i;
      if (i < 16) {
        break;
      }
      _segmentPtr = 0;
      _segment = _segment.next();
    } while (_segment == null);
    _currToken = _segment.type(_segmentPtr);
    Object localObject;
    if (_currToken == JsonToken.FIELD_NAME)
    {
      localObject = _currentObject();
      if ((localObject instanceof String))
      {
        localObject = (String)localObject;
        _parsingContext.setCurrentName((String)localObject);
      }
    }
    for (;;)
    {
      return _currToken;
      localObject = localObject.toString();
      break;
      if (_currToken == JsonToken.START_OBJECT)
      {
        _parsingContext = _parsingContext.createChildObjectContext(-1, -1);
      }
      else if (_currToken == JsonToken.START_ARRAY)
      {
        _parsingContext = _parsingContext.createChildArrayContext(-1, -1);
      }
      else if ((_currToken == JsonToken.END_OBJECT) || (_currToken == JsonToken.END_ARRAY))
      {
        _parsingContext = _parsingContext.getParent();
        if (_parsingContext == null) {
          _parsingContext = JsonReadContext.createRootContext(null);
        }
      }
    }
  }
  
  public final void overrideCurrentName(String paramString)
  {
    JsonReadContext localJsonReadContext2 = _parsingContext;
    JsonReadContext localJsonReadContext1;
    if (_currToken != JsonToken.START_OBJECT)
    {
      localJsonReadContext1 = localJsonReadContext2;
      if (_currToken != JsonToken.START_ARRAY) {}
    }
    else
    {
      localJsonReadContext1 = localJsonReadContext2.getParent();
    }
    try
    {
      localJsonReadContext1.setCurrentName(paramString);
      return;
    }
    catch (IOException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  public final JsonToken peekNextToken()
  {
    if (_closed) {}
    label54:
    for (;;)
    {
      return null;
      TokenBuffer.Segment localSegment = _segment;
      int i = _segmentPtr + 1;
      if (i >= 16) {
        if (localSegment == null)
        {
          localSegment = null;
          i = 0;
        }
      }
      for (;;)
      {
        if (localSegment == null) {
          break label54;
        }
        return localSegment.type(i);
        localSegment = localSegment.next();
        break;
      }
    }
  }
  
  public final int readBinaryValue(Base64Variant paramBase64Variant, OutputStream paramOutputStream)
  {
    int i = 0;
    paramBase64Variant = getBinaryValue(paramBase64Variant);
    if (paramBase64Variant != null)
    {
      paramOutputStream.write(paramBase64Variant, 0, paramBase64Variant.length);
      i = paramBase64Variant.length;
    }
    return i;
  }
  
  public final void setCodec(ObjectCodec paramObjectCodec)
  {
    _codec = paramObjectCodec;
  }
  
  public final void setLocation(JsonLocation paramJsonLocation)
  {
    _location = paramJsonLocation;
  }
  
  public final Version version()
  {
    return PackageVersion.VERSION;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.TokenBuffer.Parser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */