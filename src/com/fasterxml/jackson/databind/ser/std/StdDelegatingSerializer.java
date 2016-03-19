package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.ResolvableSerializer;
import com.fasterxml.jackson.databind.util.Converter;
import java.lang.reflect.Type;

public class StdDelegatingSerializer
  extends StdSerializer<Object>
  implements JsonFormatVisitable, SchemaAware, ContextualSerializer, ResolvableSerializer
{
  protected final Converter<Object, ?> _converter;
  protected final JsonSerializer<Object> _delegateSerializer;
  protected final JavaType _delegateType;
  
  public StdDelegatingSerializer(Converter<?, ?> paramConverter)
  {
    super(Object.class);
    _converter = paramConverter;
    _delegateType = null;
    _delegateSerializer = null;
  }
  
  public StdDelegatingSerializer(Converter<Object, ?> paramConverter, JavaType paramJavaType, JsonSerializer<?> paramJsonSerializer)
  {
    super(paramJavaType);
    _converter = paramConverter;
    _delegateType = paramJavaType;
    _delegateSerializer = paramJsonSerializer;
  }
  
  public <T> StdDelegatingSerializer(Class<T> paramClass, Converter<T, ?> paramConverter)
  {
    super(paramClass, false);
    _converter = paramConverter;
    _delegateType = null;
    _delegateSerializer = null;
  }
  
  protected JsonSerializer<Object> _findSerializer(Object paramObject, SerializerProvider paramSerializerProvider)
  {
    return paramSerializerProvider.findValueSerializer(paramObject.getClass());
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (_delegateSerializer != null) {
      _delegateSerializer.acceptJsonFormatVisitor(paramJsonFormatVisitorWrapper, paramJavaType);
    }
  }
  
  protected Object convertValue(Object paramObject)
  {
    return _converter.convert(paramObject);
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    JsonSerializer localJsonSerializer2 = _delegateSerializer;
    JavaType localJavaType = _delegateType;
    Object localObject2 = localJavaType;
    JsonSerializer localJsonSerializer1 = localJsonSerializer2;
    if (localJsonSerializer2 == null)
    {
      localObject1 = localJavaType;
      if (localJavaType == null) {
        localObject1 = _converter.getOutputType(paramSerializerProvider.getTypeFactory());
      }
      localObject2 = localObject1;
      localJsonSerializer1 = localJsonSerializer2;
      if (!((JavaType)localObject1).isJavaLangObject())
      {
        localJsonSerializer1 = paramSerializerProvider.findValueSerializer((JavaType)localObject1);
        localObject2 = localObject1;
      }
    }
    Object localObject1 = localJsonSerializer1;
    if ((localJsonSerializer1 instanceof ContextualSerializer)) {
      localObject1 = paramSerializerProvider.handleSecondaryContextualization(localJsonSerializer1, paramBeanProperty);
    }
    if ((localObject1 == _delegateSerializer) && (localObject2 == _delegateType)) {
      return this;
    }
    return withDelegate(_converter, (JavaType)localObject2, (JsonSerializer)localObject1);
  }
  
  protected Converter<Object, ?> getConverter()
  {
    return _converter;
  }
  
  public JsonSerializer<?> getDelegatee()
  {
    return _delegateSerializer;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    if ((_delegateSerializer instanceof SchemaAware)) {
      return ((SchemaAware)_delegateSerializer).getSchema(paramSerializerProvider, paramType);
    }
    return super.getSchema(paramSerializerProvider, paramType);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType, boolean paramBoolean)
  {
    if ((_delegateSerializer instanceof SchemaAware)) {
      return ((SchemaAware)_delegateSerializer).getSchema(paramSerializerProvider, paramType, paramBoolean);
    }
    return super.getSchema(paramSerializerProvider, paramType);
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, Object paramObject)
  {
    Object localObject = convertValue(paramObject);
    if (_delegateSerializer == null) {
      return paramObject == null;
    }
    return _delegateSerializer.isEmpty(paramSerializerProvider, localObject);
  }
  
  @Deprecated
  public boolean isEmpty(Object paramObject)
  {
    Object localObject = convertValue(paramObject);
    if (_delegateSerializer == null) {
      return paramObject == null;
    }
    return _delegateSerializer.isEmpty(localObject);
  }
  
  public void resolve(SerializerProvider paramSerializerProvider)
  {
    if ((_delegateSerializer != null) && ((_delegateSerializer instanceof ResolvableSerializer))) {
      ((ResolvableSerializer)_delegateSerializer).resolve(paramSerializerProvider);
    }
  }
  
  public void serialize(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject = convertValue(paramObject);
    if (localObject == null)
    {
      paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      return;
    }
    JsonSerializer localJsonSerializer = _delegateSerializer;
    paramObject = localJsonSerializer;
    if (localJsonSerializer == null) {
      paramObject = _findSerializer(localObject, paramSerializerProvider);
    }
    ((JsonSerializer)paramObject).serialize(localObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public void serializeWithType(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    Object localObject = convertValue(paramObject);
    JsonSerializer localJsonSerializer2 = _delegateSerializer;
    JsonSerializer localJsonSerializer1 = localJsonSerializer2;
    if (localJsonSerializer2 == null) {
      localJsonSerializer1 = _findSerializer(paramObject, paramSerializerProvider);
    }
    localJsonSerializer1.serializeWithType(localObject, paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
  }
  
  protected StdDelegatingSerializer withDelegate(Converter<Object, ?> paramConverter, JavaType paramJavaType, JsonSerializer<?> paramJsonSerializer)
  {
    if (getClass() != StdDelegatingSerializer.class) {
      throw new IllegalStateException("Sub-class " + getClass().getName() + " must override 'withDelegate'");
    }
    return new StdDelegatingSerializer(paramConverter, paramJavaType, paramJsonSerializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */