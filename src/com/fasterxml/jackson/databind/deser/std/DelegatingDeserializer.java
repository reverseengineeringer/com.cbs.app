package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.Collection;

public abstract class DelegatingDeserializer
  extends StdDeserializer<Object>
  implements ContextualDeserializer, ResolvableDeserializer
{
  private static final long serialVersionUID = 1L;
  protected final JsonDeserializer<?> _delegatee;
  
  public DelegatingDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    super(_figureType(paramJsonDeserializer));
    _delegatee = paramJsonDeserializer;
  }
  
  private static Class<?> _figureType(JsonDeserializer<?> paramJsonDeserializer)
  {
    paramJsonDeserializer = paramJsonDeserializer.handledType();
    if (paramJsonDeserializer != null) {
      return paramJsonDeserializer;
    }
    return Object.class;
  }
  
  @Deprecated
  protected JsonDeserializer<?> _createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty, JsonDeserializer<?> paramJsonDeserializer)
  {
    if (paramJsonDeserializer == _delegatee) {
      return this;
    }
    return newDelegatingInstance(paramJsonDeserializer);
  }
  
  public JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
  {
    JavaType localJavaType = paramDeserializationContext.constructType(_delegatee.handledType());
    paramDeserializationContext = paramDeserializationContext.handleSecondaryContextualization(_delegatee, paramBeanProperty, localJavaType);
    if (paramDeserializationContext == _delegatee) {
      return this;
    }
    return newDelegatingInstance(paramDeserializationContext);
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    return _delegatee.deserialize(paramJsonParser, paramDeserializationContext);
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    return _delegatee.deserialize(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return _delegatee.deserializeWithType(paramJsonParser, paramDeserializationContext, paramTypeDeserializer);
  }
  
  public SettableBeanProperty findBackReference(String paramString)
  {
    return _delegatee.findBackReference(paramString);
  }
  
  public JsonDeserializer<?> getDelegatee()
  {
    return _delegatee;
  }
  
  public Object getEmptyValue()
  {
    return _delegatee.getEmptyValue();
  }
  
  public Collection<Object> getKnownPropertyNames()
  {
    return _delegatee.getKnownPropertyNames();
  }
  
  public Object getNullValue()
  {
    return _delegatee.getNullValue();
  }
  
  public ObjectIdReader getObjectIdReader()
  {
    return _delegatee.getObjectIdReader();
  }
  
  public boolean isCachable()
  {
    return _delegatee.isCachable();
  }
  
  protected abstract JsonDeserializer<?> newDelegatingInstance(JsonDeserializer<?> paramJsonDeserializer);
  
  public JsonDeserializer<?> replaceDelegatee(JsonDeserializer<?> paramJsonDeserializer)
  {
    if (paramJsonDeserializer == _delegatee) {
      return this;
    }
    return newDelegatingInstance(paramJsonDeserializer);
  }
  
  public void resolve(DeserializationContext paramDeserializationContext)
  {
    if ((_delegatee instanceof ResolvableDeserializer)) {
      ((ResolvableDeserializer)_delegatee).resolve(paramDeserializationContext);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.DelegatingDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */