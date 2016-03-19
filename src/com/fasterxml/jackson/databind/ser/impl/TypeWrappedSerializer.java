package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public final class TypeWrappedSerializer
  extends JsonSerializer<Object>
{
  protected final JsonSerializer<Object> _serializer;
  protected final TypeSerializer _typeSerializer;
  
  public TypeWrappedSerializer(TypeSerializer paramTypeSerializer, JsonSerializer<?> paramJsonSerializer)
  {
    _typeSerializer = paramTypeSerializer;
    _serializer = paramJsonSerializer;
  }
  
  public final Class<Object> handledType()
  {
    return Object.class;
  }
  
  public final void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, _typeSerializer);
  }
  
  public final void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    _serializer.serializeWithType(paramObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
  }
  
  public final TypeSerializer typeSerializer()
  {
    return _typeSerializer;
  }
  
  public final JsonSerializer<Object> valueSerializer()
  {
    return _serializer;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.TypeWrappedSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */