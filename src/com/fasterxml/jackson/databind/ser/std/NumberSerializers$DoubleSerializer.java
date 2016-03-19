package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

@JacksonStdImpl
public final class NumberSerializers$DoubleSerializer
  extends NumberSerializers.Base<Double>
{
  static final DoubleSerializer instance = new DoubleSerializer();
  
  public NumberSerializers$DoubleSerializer()
  {
    super(Double.class, JsonParser.NumberType.DOUBLE, "number");
  }
  
  public final void serialize(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramDouble.doubleValue());
  }
  
  public final void serializeWithType(Double paramDouble, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    serialize(paramDouble, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.NumberSerializers.DoubleSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */