package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public final class SetterlessProperty
  extends SettableBeanProperty
{
  private static final long serialVersionUID = 1L;
  protected final AnnotatedMethod _annotated;
  protected final Method _getter;
  
  protected SetterlessProperty(SetterlessProperty paramSetterlessProperty, JsonDeserializer<?> paramJsonDeserializer)
  {
    super(paramSetterlessProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _getter = _getter;
  }
  
  protected SetterlessProperty(SetterlessProperty paramSetterlessProperty, PropertyName paramPropertyName)
  {
    super(paramSetterlessProperty, paramPropertyName);
    _annotated = _annotated;
    _getter = _getter;
  }
  
  public SetterlessProperty(BeanPropertyDefinition paramBeanPropertyDefinition, JavaType paramJavaType, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedMethod paramAnnotatedMethod)
  {
    super(paramBeanPropertyDefinition, paramJavaType, paramTypeDeserializer, paramAnnotations);
    _annotated = paramAnnotatedMethod;
    _getter = paramAnnotatedMethod.getAnnotated();
  }
  
  public final void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      return;
    }
    if (_valueTypeDeserializer != null) {
      throw new JsonMappingException("Problem deserializing 'setterless' property (\"" + getName() + "\"): no way to handle typed deser with setterless yet");
    }
    try
    {
      paramObject = _getter.invoke(paramObject, new Object[0]);
      if (paramObject == null) {
        throw new JsonMappingException("Problem deserializing 'setterless' property '" + getName() + "': get method returned null");
      }
    }
    catch (Exception paramJsonParser)
    {
      _throwAsIOE(paramJsonParser);
      return;
    }
    _valueDeserializer.deserialize(paramJsonParser, paramDeserializationContext, paramObject);
  }
  
  public final Object deserializeSetAndReturn(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    deserializeAndSet(paramJsonParser, paramDeserializationContext, paramObject);
    return paramObject;
  }
  
  public final <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    return _annotated.getAnnotation(paramClass);
  }
  
  public final AnnotatedMember getMember()
  {
    return _annotated;
  }
  
  public final void set(Object paramObject1, Object paramObject2)
  {
    throw new UnsupportedOperationException("Should never call 'set' on setterless property");
  }
  
  public final Object setAndReturn(Object paramObject1, Object paramObject2)
  {
    set(paramObject1, paramObject2);
    return null;
  }
  
  public final SetterlessProperty withName(PropertyName paramPropertyName)
  {
    return new SetterlessProperty(this, paramPropertyName);
  }
  
  public final SetterlessProperty withValueDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return new SetterlessProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.SetterlessProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */