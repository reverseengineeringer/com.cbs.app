package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.NameTransformer;
import java.util.Collection;

public abstract class JsonDeserializer<T>
{
  public abstract T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext);
  
  public T deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, T paramT)
  {
    throw new UnsupportedOperationException("Can not update object of type " + paramT.getClass().getName() + " (by deserializer of type " + getClass().getName() + ")");
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }
  
  public SettableBeanProperty findBackReference(String paramString)
  {
    throw new IllegalArgumentException("Can not handle managed/back reference '" + paramString + "': type: value deserializer of type " + getClass().getName() + " does not support them");
  }
  
  public JsonDeserializer<?> getDelegatee()
  {
    return null;
  }
  
  public T getEmptyValue()
  {
    return (T)getNullValue();
  }
  
  public Collection<Object> getKnownPropertyNames()
  {
    return null;
  }
  
  public T getNullValue()
  {
    return null;
  }
  
  public ObjectIdReader getObjectIdReader()
  {
    return null;
  }
  
  public Class<?> handledType()
  {
    return null;
  }
  
  public boolean isCachable()
  {
    return false;
  }
  
  public JsonDeserializer<?> replaceDelegatee(JsonDeserializer<?> paramJsonDeserializer)
  {
    throw new UnsupportedOperationException();
  }
  
  public JsonDeserializer<T> unwrappingDeserializer(NameTransformer paramNameTransformer)
  {
    return this;
  }
  
  public static abstract class None
    extends JsonDeserializer<Object>
  {}
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.JsonDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */