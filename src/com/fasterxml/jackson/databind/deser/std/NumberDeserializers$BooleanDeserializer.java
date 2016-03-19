package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

@JacksonStdImpl
public final class NumberDeserializers$BooleanDeserializer
  extends NumberDeserializers.PrimitiveOrWrapperDeserializer<Boolean>
{
  static final BooleanDeserializer primitiveInstance = new BooleanDeserializer(Boolean.class, Boolean.FALSE);
  private static final long serialVersionUID = 1L;
  static final BooleanDeserializer wrapperInstance = new BooleanDeserializer(Boolean.TYPE, null);
  
  public NumberDeserializers$BooleanDeserializer(Class<Boolean> paramClass, Boolean paramBoolean)
  {
    super(paramClass, paramBoolean);
  }
  
  public final Boolean deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }
  
  public final Boolean deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return _parseBoolean(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.BooleanDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */