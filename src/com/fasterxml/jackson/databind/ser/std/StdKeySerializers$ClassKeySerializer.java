package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

public class StdKeySerializers$ClassKeySerializer
  extends StdSerializer<Class<?>>
{
  protected static final JsonSerializer<?> instance = new ClassKeySerializer();
  
  public StdKeySerializers$ClassKeySerializer()
  {
    super(Class.class, false);
  }
  
  public void serialize(Class<?> paramClass, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeFieldName(paramClass.getName());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdKeySerializers.ClassKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */