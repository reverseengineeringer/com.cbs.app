package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

@JacksonStdImpl
public final class NumberSerializers$FloatSerializer
  extends NumberSerializers.Base<Float>
{
  static final FloatSerializer instance = new FloatSerializer();
  
  public NumberSerializers$FloatSerializer()
  {
    super(Float.class, JsonParser.NumberType.FLOAT, "number");
  }
  
  public final void serialize(Float paramFloat, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramFloat.floatValue());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.NumberSerializers.FloatSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */