package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.io.Serializable;

public final class TypeWrappedDeserializer
  extends JsonDeserializer<Object>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final JsonDeserializer<Object> _deserializer;
  protected final TypeDeserializer _typeDeserializer;
  
  public TypeWrappedDeserializer(TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer)
  {
    _typeDeserializer = paramTypeDeserializer;
    _deserializer = paramJsonDeserializer;
  }
  
  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _deserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, _typeDeserializer);
  }
  
  public final Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    return _deserializer.deserialize(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
  }
  
  public final Class<?> handledType()
  {
    return _deserializer.handledType();
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.TypeWrappedDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */