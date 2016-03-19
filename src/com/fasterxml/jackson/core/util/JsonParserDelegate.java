package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.Feature;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.Version;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class JsonParserDelegate
  extends JsonParser
{
  protected JsonParser delegate;
  
  public JsonParserDelegate(JsonParser paramJsonParser)
  {
    delegate = paramJsonParser;
  }
  
  public boolean canReadObjectId()
  {
    return delegate.canReadObjectId();
  }
  
  public boolean canReadTypeId()
  {
    return delegate.canReadTypeId();
  }
  
  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    return delegate.canUseSchema(paramFormatSchema);
  }
  
  public void clearCurrentToken()
  {
    delegate.clearCurrentToken();
  }
  
  public void close()
  {
    delegate.close();
  }
  
  public JsonParser disable(JsonParser.Feature paramFeature)
  {
    delegate.disable(paramFeature);
    return this;
  }
  
  public JsonParser enable(JsonParser.Feature paramFeature)
  {
    delegate.enable(paramFeature);
    return this;
  }
  
  public BigInteger getBigIntegerValue()
  {
    return delegate.getBigIntegerValue();
  }
  
  public byte[] getBinaryValue(Base64Variant paramBase64Variant)
  {
    return delegate.getBinaryValue(paramBase64Variant);
  }
  
  public boolean getBooleanValue()
  {
    return delegate.getBooleanValue();
  }
  
  public byte getByteValue()
  {
    return delegate.getByteValue();
  }
  
  public ObjectCodec getCodec()
  {
    return delegate.getCodec();
  }
  
  public JsonLocation getCurrentLocation()
  {
    return delegate.getCurrentLocation();
  }
  
  public String getCurrentName()
  {
    return delegate.getCurrentName();
  }
  
  public JsonToken getCurrentToken()
  {
    return delegate.getCurrentToken();
  }
  
  public int getCurrentTokenId()
  {
    return delegate.getCurrentTokenId();
  }
  
  public Object getCurrentValue()
  {
    return delegate.getCurrentValue();
  }
  
  public BigDecimal getDecimalValue()
  {
    return delegate.getDecimalValue();
  }
  
  public double getDoubleValue()
  {
    return delegate.getDoubleValue();
  }
  
  public Object getEmbeddedObject()
  {
    return delegate.getEmbeddedObject();
  }
  
  public int getFeatureMask()
  {
    return delegate.getFeatureMask();
  }
  
  public float getFloatValue()
  {
    return delegate.getFloatValue();
  }
  
  public Object getInputSource()
  {
    return delegate.getInputSource();
  }
  
  public int getIntValue()
  {
    return delegate.getIntValue();
  }
  
  public JsonToken getLastClearedToken()
  {
    return delegate.getLastClearedToken();
  }
  
  public long getLongValue()
  {
    return delegate.getLongValue();
  }
  
  public JsonParser.NumberType getNumberType()
  {
    return delegate.getNumberType();
  }
  
  public Number getNumberValue()
  {
    return delegate.getNumberValue();
  }
  
  public Object getObjectId()
  {
    return delegate.getObjectId();
  }
  
  public JsonStreamContext getParsingContext()
  {
    return delegate.getParsingContext();
  }
  
  public FormatSchema getSchema()
  {
    return delegate.getSchema();
  }
  
  public short getShortValue()
  {
    return delegate.getShortValue();
  }
  
  public String getText()
  {
    return delegate.getText();
  }
  
  public char[] getTextCharacters()
  {
    return delegate.getTextCharacters();
  }
  
  public int getTextLength()
  {
    return delegate.getTextLength();
  }
  
  public int getTextOffset()
  {
    return delegate.getTextOffset();
  }
  
  public JsonLocation getTokenLocation()
  {
    return delegate.getTokenLocation();
  }
  
  public Object getTypeId()
  {
    return delegate.getTypeId();
  }
  
  public boolean getValueAsBoolean()
  {
    return delegate.getValueAsBoolean();
  }
  
  public boolean getValueAsBoolean(boolean paramBoolean)
  {
    return delegate.getValueAsBoolean(paramBoolean);
  }
  
  public double getValueAsDouble()
  {
    return delegate.getValueAsDouble();
  }
  
  public double getValueAsDouble(double paramDouble)
  {
    return delegate.getValueAsDouble(paramDouble);
  }
  
  public int getValueAsInt()
  {
    return delegate.getValueAsInt();
  }
  
  public int getValueAsInt(int paramInt)
  {
    return delegate.getValueAsInt(paramInt);
  }
  
  public long getValueAsLong()
  {
    return delegate.getValueAsLong();
  }
  
  public long getValueAsLong(long paramLong)
  {
    return delegate.getValueAsLong(paramLong);
  }
  
  public String getValueAsString()
  {
    return delegate.getValueAsString();
  }
  
  public String getValueAsString(String paramString)
  {
    return delegate.getValueAsString(paramString);
  }
  
  public boolean hasCurrentToken()
  {
    return delegate.hasCurrentToken();
  }
  
  public boolean hasTextCharacters()
  {
    return delegate.hasTextCharacters();
  }
  
  public boolean hasTokenId(int paramInt)
  {
    return delegate.hasTokenId(paramInt);
  }
  
  public boolean isClosed()
  {
    return delegate.isClosed();
  }
  
  public boolean isEnabled(JsonParser.Feature paramFeature)
  {
    return delegate.isEnabled(paramFeature);
  }
  
  public boolean isExpectedStartArrayToken()
  {
    return delegate.isExpectedStartArrayToken();
  }
  
  public boolean isExpectedStartObjectToken()
  {
    return delegate.isExpectedStartObjectToken();
  }
  
  public JsonToken nextToken()
  {
    return delegate.nextToken();
  }
  
  public JsonToken nextValue()
  {
    return delegate.nextValue();
  }
  
  public void overrideCurrentName(String paramString)
  {
    delegate.overrideCurrentName(paramString);
  }
  
  public int readBinaryValue(Base64Variant paramBase64Variant, OutputStream paramOutputStream)
  {
    return delegate.readBinaryValue(paramBase64Variant, paramOutputStream);
  }
  
  public boolean requiresCustomCodec()
  {
    return delegate.requiresCustomCodec();
  }
  
  public void setCodec(ObjectCodec paramObjectCodec)
  {
    delegate.setCodec(paramObjectCodec);
  }
  
  public void setCurrentValue(Object paramObject)
  {
    delegate.setCurrentValue(paramObject);
  }
  
  public JsonParser setFeatureMask(int paramInt)
  {
    delegate.setFeatureMask(paramInt);
    return this;
  }
  
  public void setSchema(FormatSchema paramFormatSchema)
  {
    delegate.setSchema(paramFormatSchema);
  }
  
  public JsonParser skipChildren()
  {
    delegate.skipChildren();
    return this;
  }
  
  public Version version()
  {
    return delegate.version();
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.util.JsonParserDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */