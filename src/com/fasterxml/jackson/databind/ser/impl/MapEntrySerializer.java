package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import java.util.Map;
import java.util.Map.Entry;

@JacksonStdImpl
public class MapEntrySerializer
  extends ContainerSerializer<Map.Entry<?, ?>>
  implements ContextualSerializer
{
  protected PropertySerializerMap _dynamicValueSerializers;
  protected final JavaType _entryType;
  protected JsonSerializer<Object> _keySerializer;
  protected final JavaType _keyType;
  protected final BeanProperty _property;
  protected JsonSerializer<Object> _valueSerializer;
  protected final JavaType _valueType;
  protected final boolean _valueTypeIsStatic;
  protected final TypeSerializer _valueTypeSerializer;
  
  public MapEntrySerializer(JavaType paramJavaType1, JavaType paramJavaType2, JavaType paramJavaType3, boolean paramBoolean, TypeSerializer paramTypeSerializer, BeanProperty paramBeanProperty)
  {
    super(paramJavaType1);
    _entryType = paramJavaType1;
    _keyType = paramJavaType2;
    _valueType = paramJavaType3;
    _valueTypeIsStatic = paramBoolean;
    _valueTypeSerializer = paramTypeSerializer;
    _property = paramBeanProperty;
    _dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
  }
  
  protected MapEntrySerializer(MapEntrySerializer paramMapEntrySerializer, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<?> paramJsonSerializer1, JsonSerializer<?> paramJsonSerializer2)
  {
    super(Map.class, false);
    _entryType = _entryType;
    _keyType = _keyType;
    _valueType = _valueType;
    _valueTypeIsStatic = _valueTypeIsStatic;
    _valueTypeSerializer = _valueTypeSerializer;
    _keySerializer = paramJsonSerializer1;
    _valueSerializer = paramJsonSerializer2;
    _dynamicValueSerializers = _dynamicValueSerializers;
    _property = _property;
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
  {
    paramJavaType = paramPropertySerializerMap.findAndAddSecondarySerializer(paramJavaType, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicValueSerializers = map;
    }
    return serializer;
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    paramClass = paramPropertySerializerMap.findAndAddSecondarySerializer(paramClass, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicValueSerializers = map;
    }
    return serializer;
  }
  
  public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new MapEntrySerializer(this, _property, paramTypeSerializer, _keySerializer, _valueSerializer);
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    Object localObject1 = null;
    Object localObject3 = paramSerializerProvider.getAnnotationIntrospector();
    Object localObject2;
    if (paramBeanProperty == null)
    {
      localObject2 = null;
      if ((localObject2 == null) || (localObject3 == null)) {
        break label220;
      }
      localObject1 = ((AnnotationIntrospector)localObject3).findKeySerializer((Annotated)localObject2);
      if (localObject1 == null) {
        break label215;
      }
      localObject1 = paramSerializerProvider.serializerInstance((Annotated)localObject2, localObject1);
      label45:
      localObject3 = ((AnnotationIntrospector)localObject3).findContentSerializer((Annotated)localObject2);
      if (localObject3 == null) {
        break label209;
      }
      localObject2 = paramSerializerProvider.serializerInstance((Annotated)localObject2, localObject3);
    }
    for (;;)
    {
      localObject3 = localObject2;
      if (localObject2 == null) {
        localObject3 = _valueSerializer;
      }
      localObject2 = findConvertingContentSerializer(paramSerializerProvider, paramBeanProperty, (JsonSerializer)localObject3);
      if (localObject2 == null)
      {
        if (((!_valueTypeIsStatic) || (_valueType.getRawClass() == Object.class)) && (!hasContentTypeAnnotation(paramSerializerProvider, paramBeanProperty))) {
          break label206;
        }
        localObject2 = paramSerializerProvider.findValueSerializer(_valueType, paramBeanProperty);
      }
      label138:
      label206:
      for (;;)
      {
        if (localObject1 == null) {
          localObject1 = _keySerializer;
        }
        for (;;)
        {
          if (localObject1 == null) {}
          for (paramSerializerProvider = paramSerializerProvider.findKeySerializer(_keyType, paramBeanProperty);; paramSerializerProvider = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject1, paramBeanProperty))
          {
            return withResolved(paramBeanProperty, paramSerializerProvider, (JsonSerializer)localObject2);
            localObject2 = paramBeanProperty.getMember();
            break;
            localObject2 = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject2, paramBeanProperty);
            break label138;
          }
        }
      }
      label209:
      localObject2 = null;
      continue;
      label215:
      localObject1 = null;
      break label45;
      label220:
      localObject2 = null;
    }
  }
  
  public JsonSerializer<?> getContentSerializer()
  {
    return _valueSerializer;
  }
  
  public JavaType getContentType()
  {
    return _valueType;
  }
  
  public boolean hasSingleElement(Map.Entry<?, ?> paramEntry)
  {
    return true;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, Map.Entry<?, ?> paramEntry)
  {
    return paramEntry == null;
  }
  
  public void serialize(Map.Entry<?, ?> paramEntry, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.setCurrentValue(paramEntry);
    if (_valueSerializer != null) {
      serializeUsing(paramEntry, paramJsonGenerator, paramSerializerProvider, _valueSerializer);
    }
    for (;;)
    {
      paramJsonGenerator.writeEndObject();
      return;
      serializeDynamic(paramEntry, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  protected void serializeDynamic(Map.Entry<?, ?> paramEntry, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject1 = _keySerializer;
    int i;
    TypeSerializer localTypeSerializer;
    PropertySerializerMap localPropertySerializerMap;
    Object localObject3;
    Object localObject2;
    if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      localTypeSerializer = _valueTypeSerializer;
      localPropertySerializerMap = _dynamicValueSerializers;
      localObject3 = paramEntry.getValue();
      localObject2 = paramEntry.getKey();
      if (localObject2 != null) {
        break label87;
      }
      paramSerializerProvider.findNullKeySerializer(_keyType, _property).serialize(null, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      if (localObject3 != null) {
        break label109;
      }
      paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      label87:
      do
      {
        return;
        i = 0;
        break;
      } while ((i != 0) && (localObject3 == null));
      ((JsonSerializer)localObject1).serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
    }
    label109:
    Class localClass = localObject3.getClass();
    JsonSerializer localJsonSerializer = localPropertySerializerMap.serializerFor(localClass);
    localObject1 = localJsonSerializer;
    if (localJsonSerializer == null) {
      if (!_valueType.hasGenericTypes()) {
        break label192;
      }
    }
    label192:
    for (localObject1 = _findAndAddDynamic(localPropertySerializerMap, paramSerializerProvider.constructSpecializedType(_valueType, localClass), paramSerializerProvider); localTypeSerializer == null; localObject1 = _findAndAddDynamic(localPropertySerializerMap, localClass, paramSerializerProvider)) {
      try
      {
        ((JsonSerializer)localObject1).serialize(localObject3, paramJsonGenerator, paramSerializerProvider);
        return;
      }
      catch (Exception paramJsonGenerator)
      {
        wrapAndThrow(paramSerializerProvider, paramJsonGenerator, paramEntry, String.valueOf(localObject2));
        return;
      }
    }
    ((JsonSerializer)localObject1).serializeWithType(localObject3, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
  }
  
  protected void serializeUsing(Map.Entry<?, ?> paramEntry, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    JsonSerializer localJsonSerializer = _keySerializer;
    TypeSerializer localTypeSerializer = _valueTypeSerializer;
    int i;
    Object localObject2;
    Object localObject1;
    if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      localObject2 = paramEntry.getValue();
      localObject1 = paramEntry.getKey();
      if (localObject1 != null) {
        break label81;
      }
      paramSerializerProvider.findNullKeySerializer(_keyType, _property).serialize(null, paramJsonGenerator, paramSerializerProvider);
    }
    for (;;)
    {
      if (localObject2 != null) {
        break label103;
      }
      paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      label81:
      do
      {
        return;
        i = 0;
        break;
      } while ((i != 0) && (localObject2 == null));
      localJsonSerializer.serialize(localObject1, paramJsonGenerator, paramSerializerProvider);
    }
    label103:
    if (localTypeSerializer == null) {
      try
      {
        paramJsonSerializer.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
        return;
      }
      catch (Exception paramJsonGenerator)
      {
        wrapAndThrow(paramSerializerProvider, paramJsonGenerator, paramEntry, String.valueOf(localObject1));
        return;
      }
    }
    paramJsonSerializer.serializeWithType(localObject2, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
  }
  
  public void serializeWithType(Map.Entry<?, ?> paramEntry, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramEntry, paramJsonGenerator);
    paramJsonGenerator.setCurrentValue(paramEntry);
    if (_valueSerializer != null) {
      serializeUsing(paramEntry, paramJsonGenerator, paramSerializerProvider, _valueSerializer);
    }
    for (;;)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramEntry, paramJsonGenerator);
      return;
      serializeDynamic(paramEntry, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  public MapEntrySerializer withResolved(BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer1, JsonSerializer<?> paramJsonSerializer2)
  {
    return new MapEntrySerializer(this, paramBeanProperty, _valueTypeSerializer, paramJsonSerializer1, paramJsonSerializer2);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.MapEntrySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */