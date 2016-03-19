package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;

public class CreatorProperty
  extends SettableBeanProperty
{
  private static final long serialVersionUID = 1L;
  protected final AnnotatedParameter _annotated;
  protected final int _creatorIndex;
  protected final SettableBeanProperty _fallbackSetter;
  protected final Object _injectableValueId;
  
  public CreatorProperty(PropertyName paramPropertyName1, JavaType paramJavaType, PropertyName paramPropertyName2, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedParameter paramAnnotatedParameter, int paramInt, Object paramObject, PropertyMetadata paramPropertyMetadata)
  {
    super(paramPropertyName1, paramJavaType, paramPropertyName2, paramTypeDeserializer, paramAnnotations, paramPropertyMetadata);
    _annotated = paramAnnotatedParameter;
    _creatorIndex = paramInt;
    _injectableValueId = paramObject;
    _fallbackSetter = null;
  }
  
  protected CreatorProperty(CreatorProperty paramCreatorProperty, JsonDeserializer<?> paramJsonDeserializer)
  {
    super(paramCreatorProperty, paramJsonDeserializer);
    _annotated = _annotated;
    _creatorIndex = _creatorIndex;
    _injectableValueId = _injectableValueId;
    _fallbackSetter = _fallbackSetter;
  }
  
  protected CreatorProperty(CreatorProperty paramCreatorProperty, PropertyName paramPropertyName)
  {
    super(paramCreatorProperty, paramPropertyName);
    _annotated = _annotated;
    _creatorIndex = _creatorIndex;
    _injectableValueId = _injectableValueId;
    _fallbackSetter = _fallbackSetter;
  }
  
  protected CreatorProperty(CreatorProperty paramCreatorProperty, SettableBeanProperty paramSettableBeanProperty)
  {
    super(paramCreatorProperty);
    _annotated = _annotated;
    _creatorIndex = _creatorIndex;
    _injectableValueId = _injectableValueId;
    _fallbackSetter = paramSettableBeanProperty;
  }
  
  @Deprecated
  protected CreatorProperty(CreatorProperty paramCreatorProperty, String paramString)
  {
    this(paramCreatorProperty, new PropertyName(paramString));
  }
  
  @Deprecated
  public CreatorProperty(String paramString, JavaType paramJavaType, PropertyName paramPropertyName, TypeDeserializer paramTypeDeserializer, Annotations paramAnnotations, AnnotatedParameter paramAnnotatedParameter, int paramInt, Object paramObject, boolean paramBoolean)
  {
    this(new PropertyName(paramString), paramJavaType, paramPropertyName, paramTypeDeserializer, paramAnnotations, paramAnnotatedParameter, paramInt, paramObject, PropertyMetadata.construct(paramBoolean, null, null, null));
  }
  
  public void deserializeAndSet(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    set(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public Object deserializeSetAndReturn(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject)
  {
    return setAndReturn(paramObject, deserialize(paramJsonParser, paramDeserializationContext));
  }
  
  public Object findInjectableValue(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    if (_injectableValueId == null) {
      throw new IllegalStateException("Property '" + getName() + "' (type " + getClass().getName() + ") has no injectable value id configured");
    }
    return paramDeserializationContext.findInjectableValue(_injectableValueId, this, paramObject);
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_annotated == null) {
      return null;
    }
    return _annotated.getAnnotation(paramClass);
  }
  
  public int getCreatorIndex()
  {
    return _creatorIndex;
  }
  
  public Object getInjectableValueId()
  {
    return _injectableValueId;
  }
  
  public AnnotatedMember getMember()
  {
    return _annotated;
  }
  
  public void inject(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    set(paramObject, findInjectableValue(paramDeserializationContext, paramObject));
  }
  
  public void set(Object paramObject1, Object paramObject2)
  {
    if (_fallbackSetter == null) {
      throw new IllegalStateException("No fallback setter/field defined: can not use creator property for " + getClass().getName());
    }
    _fallbackSetter.set(paramObject1, paramObject2);
  }
  
  public Object setAndReturn(Object paramObject1, Object paramObject2)
  {
    if (_fallbackSetter == null) {
      throw new IllegalStateException("No fallback setter/field defined: can not use creator property for " + getClass().getName());
    }
    return _fallbackSetter.setAndReturn(paramObject1, paramObject2);
  }
  
  public String toString()
  {
    return "[creator property, name '" + getName() + "'; inject id '" + _injectableValueId + "']";
  }
  
  public CreatorProperty withFallbackSetter(SettableBeanProperty paramSettableBeanProperty)
  {
    return new CreatorProperty(this, paramSettableBeanProperty);
  }
  
  public CreatorProperty withName(PropertyName paramPropertyName)
  {
    return new CreatorProperty(this, paramPropertyName);
  }
  
  public CreatorProperty withValueDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return new CreatorProperty(this, paramJsonDeserializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.CreatorProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */