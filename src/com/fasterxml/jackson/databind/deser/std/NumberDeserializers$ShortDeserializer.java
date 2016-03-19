package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

@JacksonStdImpl
public class NumberDeserializers$ShortDeserializer
  extends NumberDeserializers.PrimitiveOrWrapperDeserializer<Short>
{
  static final ShortDeserializer primitiveInstance = new ShortDeserializer(Short.class, Short.valueOf((short)0));
  private static final long serialVersionUID = 1L;
  static final ShortDeserializer wrapperInstance = new ShortDeserializer(Short.TYPE, null);
  
  public NumberDeserializers$ShortDeserializer(Class<Short> paramClass, Short paramShort)
  {
    super(paramClass, paramShort);
  }
  
  public Short deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseShort(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.ShortDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */