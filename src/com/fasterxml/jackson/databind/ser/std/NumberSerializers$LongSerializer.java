package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

@JacksonStdImpl
public final class NumberSerializers$LongSerializer
  extends NumberSerializers.Base<Long>
{
  static final LongSerializer instance = new LongSerializer();
  
  public NumberSerializers$LongSerializer()
  {
    super(Long.class, JsonParser.NumberType.LONG, "number");
  }
  
  public final void serialize(Long paramLong, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramLong.longValue());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.NumberSerializers.LongSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */