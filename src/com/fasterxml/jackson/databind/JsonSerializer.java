package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.NameTransformer;

public abstract class JsonSerializer<T>
  implements JsonFormatVisitable
{
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper != null) {
      paramJsonFormatVisitorWrapper.expectAnyFormat(paramJavaType);
    }
  }
  
  public JsonSerializer<?> getDelegatee()
  {
    return null;
  }
  
  public Class<T> handledType()
  {
    return null;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, T paramT)
  {
    return isEmpty(paramT);
  }
  
  @Deprecated
  public boolean isEmpty(T paramT)
  {
    return paramT == null;
  }
  
  public boolean isUnwrappingSerializer()
  {
    return false;
  }
  
  public JsonSerializer<T> replaceDelegatee(JsonSerializer<?> paramJsonSerializer)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);
  
  public void serializeWithType(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer = handledType();
    paramJsonGenerator = paramTypeSerializer;
    if (paramTypeSerializer == null) {
      paramJsonGenerator = paramT.getClass();
    }
    throw paramSerializerProvider.mappingException("Type id handling not implemented for type %s (by serializer of type %s)", new Object[] { paramJsonGenerator.getName(), getClass().getName() });
  }
  
  public JsonSerializer<T> unwrappingSerializer(NameTransformer paramNameTransformer)
  {
    return this;
  }
  
  public boolean usesObjectId()
  {
    return false;
  }
  
  public static abstract class None
    extends JsonSerializer<Object>
  {}
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.JsonSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */