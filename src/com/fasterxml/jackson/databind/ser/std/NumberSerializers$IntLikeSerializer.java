package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

@JacksonStdImpl
public final class NumberSerializers$IntLikeSerializer
  extends NumberSerializers.Base<Number>
{
  static final IntLikeSerializer instance = new IntLikeSerializer();
  
  public NumberSerializers$IntLikeSerializer()
  {
    super(Number.class, JsonParser.NumberType.INT, "integer");
  }
  
  public final void serialize(Number paramNumber, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNumber(paramNumber.intValue());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.NumberSerializers.IntLikeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */