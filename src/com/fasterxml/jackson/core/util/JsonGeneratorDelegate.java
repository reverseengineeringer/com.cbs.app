package com.fasterxml.jackson.core.util;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.FormatSchema;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.TreeNode;
import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.BigInteger;

public class JsonGeneratorDelegate
  extends JsonGenerator
{
  protected JsonGenerator delegate;
  protected boolean delegateCopyMethods;
  
  public JsonGeneratorDelegate(JsonGenerator paramJsonGenerator)
  {
    this(paramJsonGenerator, true);
  }
  
  public JsonGeneratorDelegate(JsonGenerator paramJsonGenerator, boolean paramBoolean)
  {
    delegate = paramJsonGenerator;
    delegateCopyMethods = paramBoolean;
  }
  
  public boolean canOmitFields()
  {
    return delegate.canOmitFields();
  }
  
  public boolean canUseSchema(FormatSchema paramFormatSchema)
  {
    return delegate.canUseSchema(paramFormatSchema);
  }
  
  public boolean canWriteBinaryNatively()
  {
    return delegate.canWriteBinaryNatively();
  }
  
  public boolean canWriteObjectId()
  {
    return delegate.canWriteObjectId();
  }
  
  public boolean canWriteTypeId()
  {
    return delegate.canWriteTypeId();
  }
  
  public void close()
  {
    delegate.close();
  }
  
  public void copyCurrentEvent(JsonParser paramJsonParser)
  {
    if (delegateCopyMethods)
    {
      delegate.copyCurrentEvent(paramJsonParser);
      return;
    }
    super.copyCurrentEvent(paramJsonParser);
  }
  
  public void copyCurrentStructure(JsonParser paramJsonParser)
  {
    if (delegateCopyMethods)
    {
      delegate.copyCurrentStructure(paramJsonParser);
      return;
    }
    super.copyCurrentStructure(paramJsonParser);
  }
  
  public JsonGenerator disable(JsonGenerator.Feature paramFeature)
  {
    delegate.disable(paramFeature);
    return this;
  }
  
  public JsonGenerator enable(JsonGenerator.Feature paramFeature)
  {
    delegate.enable(paramFeature);
    return this;
  }
  
  public void flush()
  {
    delegate.flush();
  }
  
  public CharacterEscapes getCharacterEscapes()
  {
    return delegate.getCharacterEscapes();
  }
  
  public ObjectCodec getCodec()
  {
    return delegate.getCodec();
  }
  
  public Object getCurrentValue()
  {
    return delegate.getCurrentValue();
  }
  
  public JsonGenerator getDelegate()
  {
    return delegate;
  }
  
  public int getFeatureMask()
  {
    return delegate.getFeatureMask();
  }
  
  public int getHighestEscapedChar()
  {
    return delegate.getHighestEscapedChar();
  }
  
  public JsonStreamContext getOutputContext()
  {
    return delegate.getOutputContext();
  }
  
  public Object getOutputTarget()
  {
    return delegate.getOutputTarget();
  }
  
  public PrettyPrinter getPrettyPrinter()
  {
    return delegate.getPrettyPrinter();
  }
  
  public FormatSchema getSchema()
  {
    return delegate.getSchema();
  }
  
  public boolean isClosed()
  {
    return delegate.isClosed();
  }
  
  public boolean isEnabled(JsonGenerator.Feature paramFeature)
  {
    return delegate.isEnabled(paramFeature);
  }
  
  public JsonGenerator setCharacterEscapes(CharacterEscapes paramCharacterEscapes)
  {
    delegate.setCharacterEscapes(paramCharacterEscapes);
    return this;
  }
  
  public JsonGenerator setCodec(ObjectCodec paramObjectCodec)
  {
    delegate.setCodec(paramObjectCodec);
    return this;
  }
  
  public void setCurrentValue(Object paramObject)
  {
    delegate.setCurrentValue(paramObject);
  }
  
  public JsonGenerator setFeatureMask(int paramInt)
  {
    delegate.setFeatureMask(paramInt);
    return this;
  }
  
  public JsonGenerator setHighestNonEscapedChar(int paramInt)
  {
    delegate.setHighestNonEscapedChar(paramInt);
    return this;
  }
  
  public JsonGenerator setPrettyPrinter(PrettyPrinter paramPrettyPrinter)
  {
    delegate.setPrettyPrinter(paramPrettyPrinter);
    return this;
  }
  
  public JsonGenerator setRootValueSeparator(SerializableString paramSerializableString)
  {
    delegate.setRootValueSeparator(paramSerializableString);
    return this;
  }
  
  public void setSchema(FormatSchema paramFormatSchema)
  {
    delegate.setSchema(paramFormatSchema);
  }
  
  public JsonGenerator useDefaultPrettyPrinter()
  {
    delegate.useDefaultPrettyPrinter();
    return this;
  }
  
  public Version version()
  {
    return delegate.version();
  }
  
  public int writeBinary(Base64Variant paramBase64Variant, InputStream paramInputStream, int paramInt)
  {
    return delegate.writeBinary(paramBase64Variant, paramInputStream, paramInt);
  }
  
  public void writeBinary(Base64Variant paramBase64Variant, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    delegate.writeBinary(paramBase64Variant, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void writeBoolean(boolean paramBoolean)
  {
    delegate.writeBoolean(paramBoolean);
  }
  
  public void writeEndArray()
  {
    delegate.writeEndArray();
  }
  
  public void writeEndObject()
  {
    delegate.writeEndObject();
  }
  
  public void writeFieldName(SerializableString paramSerializableString)
  {
    delegate.writeFieldName(paramSerializableString);
  }
  
  public void writeFieldName(String paramString)
  {
    delegate.writeFieldName(paramString);
  }
  
  public void writeNull()
  {
    delegate.writeNull();
  }
  
  public void writeNumber(double paramDouble)
  {
    delegate.writeNumber(paramDouble);
  }
  
  public void writeNumber(float paramFloat)
  {
    delegate.writeNumber(paramFloat);
  }
  
  public void writeNumber(int paramInt)
  {
    delegate.writeNumber(paramInt);
  }
  
  public void writeNumber(long paramLong)
  {
    delegate.writeNumber(paramLong);
  }
  
  public void writeNumber(String paramString)
  {
    delegate.writeNumber(paramString);
  }
  
  public void writeNumber(BigDecimal paramBigDecimal)
  {
    delegate.writeNumber(paramBigDecimal);
  }
  
  public void writeNumber(BigInteger paramBigInteger)
  {
    delegate.writeNumber(paramBigInteger);
  }
  
  public void writeNumber(short paramShort)
  {
    delegate.writeNumber(paramShort);
  }
  
  public void writeObject(Object paramObject)
  {
    if (delegateCopyMethods)
    {
      delegate.writeObject(paramObject);
      return;
    }
    if (paramObject == null)
    {
      writeNull();
      return;
    }
    if (getCodec() != null)
    {
      getCodec().writeValue(this, paramObject);
      return;
    }
    _writeSimpleObject(paramObject);
  }
  
  public void writeObjectId(Object paramObject)
  {
    delegate.writeObjectId(paramObject);
  }
  
  public void writeObjectRef(Object paramObject)
  {
    delegate.writeObjectRef(paramObject);
  }
  
  public void writeOmittedField(String paramString)
  {
    delegate.writeOmittedField(paramString);
  }
  
  public void writeRaw(char paramChar)
  {
    delegate.writeRaw(paramChar);
  }
  
  public void writeRaw(SerializableString paramSerializableString)
  {
    delegate.writeRaw(paramSerializableString);
  }
  
  public void writeRaw(String paramString)
  {
    delegate.writeRaw(paramString);
  }
  
  public void writeRaw(String paramString, int paramInt1, int paramInt2)
  {
    delegate.writeRaw(paramString, paramInt1, paramInt2);
  }
  
  public void writeRaw(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    delegate.writeRaw(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeRawUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    delegate.writeRawUTF8String(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void writeRawValue(String paramString)
  {
    delegate.writeRawValue(paramString);
  }
  
  public void writeRawValue(String paramString, int paramInt1, int paramInt2)
  {
    delegate.writeRawValue(paramString, paramInt1, paramInt2);
  }
  
  public void writeRawValue(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    delegate.writeRawValue(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeStartArray()
  {
    delegate.writeStartArray();
  }
  
  public void writeStartArray(int paramInt)
  {
    delegate.writeStartArray(paramInt);
  }
  
  public void writeStartObject()
  {
    delegate.writeStartObject();
  }
  
  public void writeString(SerializableString paramSerializableString)
  {
    delegate.writeString(paramSerializableString);
  }
  
  public void writeString(String paramString)
  {
    delegate.writeString(paramString);
  }
  
  public void writeString(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    delegate.writeString(paramArrayOfChar, paramInt1, paramInt2);
  }
  
  public void writeTree(TreeNode paramTreeNode)
  {
    if (delegateCopyMethods)
    {
      delegate.writeTree(paramTreeNode);
      return;
    }
    if (paramTreeNode == null)
    {
      writeNull();
      return;
    }
    if (getCodec() == null) {
      throw new IllegalStateException("No ObjectCodec defined");
    }
    getCodec().writeValue(this, paramTreeNode);
  }
  
  public void writeTypeId(Object paramObject)
  {
    delegate.writeTypeId(paramObject);
  }
  
  public void writeUTF8String(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    delegate.writeUTF8String(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.util.JsonGeneratorDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */