package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;

public class StdKeySerializers$StringKeySerializer
  extends StdSerializer<String>
{
  public StdKeySerializers$StringKeySerializer()
  {
    super(String.class);
  }
  
  public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeFieldName(paramString);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdKeySerializers.StringKeySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */