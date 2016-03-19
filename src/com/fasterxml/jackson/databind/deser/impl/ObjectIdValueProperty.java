package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import java.lang.annotation.Annotation;

public final class ObjectIdValueProperty
  extends SettableBeanProperty
{
  private static final long serialVersionUID = 1L;
  protected final ObjectIdReader _objectIdReader;
  
  public ObjectIdValueProperty(ObjectIdReader paramObjectIdReader, PropertyMetadata paramPropertyMetadata)
  {
    super(propertyName, paramObjectIdReader.getIdType(), paramPropertyMetadata, paramObjectIdReader.getDeserializer());
    _objectIdReader = paramObjectIdReader;
  }
  
  protected ObjectIdValueProperty(ObjectIdValueProperty paramObjectIdValueProperty, JsonDeserializer<?> paramJsonDeserializer)
  {
    super(paramObjectIdValueProperty, paramJsonDeserializer);
    _objectIdReader = _objectIdReader;
  }
  
  @Deprecated
  protected ObjectIdValueProperty(ObjectIdValueProperty paramObjectIdValueProperty, PropertyName paramPropertyName)
  {
    super(paramObjectIdValueProperty, paramPropertyName);
    _objectIdReader = _objectIdReader;
  }
  
  @Deprecated
  protected ObjectIdValueProperty(ObjectIdValueProperty paramObjectIdValueProperty, String paramString)
  {
    this(paramObjectIdValueProperty, new PropertyName(paramString));
  }
  
  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    deserializeSetAndReturn(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public final Object deserializeSetAndReturn(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    Object localObject = _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
    if (localObject == null) {
      paramJsonParser = null;
    }
    do
    {
      return paramJsonParser;
      paramDeserializationContext.findObjectId(localObject, _objectIdReader.generator, _objectIdReader.resolver).bindItem(paramObject);
      paramDeserializationContext = _objectIdReader.idProperty;
      paramJsonParser = (JsonParser)paramObject;
    } while (paramDeserializationContext == null);
    return paramDeserializationContext.setAndReturn(paramObject, localObject);
  }
  
  public final <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return null;
  }
  
  public final AnnotatedMember getMember()
  {
    return null;
  }
  
  public final void set(Object paramObject1, Object paramObject2)
  {
    setAndReturn(paramObject1, paramObject2);
  }
  
  public final Object setAndReturn(Object paramObject1, Object paramObject2)
  {
    SettableBeanProperty localSettableBeanProperty = _objectIdReader.idProperty;
    if (localSettableBeanProperty == null) {
      throw new UnsupportedOperationException("Should not call set() on ObjectIdProperty that has no SettableBeanProperty");
    }
    return localSettableBeanProperty.setAndReturn(paramObject1, paramObject2);
  }
  
  public final ObjectIdValueProperty withName(PropertyName paramPropertyName)
  {
    return new ObjectIdValueProperty(this, paramPropertyName);
  }
  
  public final ObjectIdValueProperty withValueDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return new ObjectIdValueProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.ObjectIdValueProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */