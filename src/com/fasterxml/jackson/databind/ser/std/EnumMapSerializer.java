package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.jsonschema.JsonSchema;
import com.fasterxml.jackson.databind.jsonschema.SchemaAware;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.EnumValues;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

@JacksonStdImpl
@Deprecated
public class EnumMapSerializer
  extends ContainerSerializer<EnumMap<? extends Enum<?>, ?>>
  implements ContextualSerializer
{
  protected final EnumValues _keyEnums;
  protected final BeanProperty _property;
  protected final boolean _staticTyping;
  protected final JsonSerializer<Object> _valueSerializer;
  protected final JavaType _valueType;
  protected final TypeSerializer _valueTypeSerializer;
  
  public EnumMapSerializer(JavaType paramJavaType, boolean paramBoolean, EnumValues paramEnumValues, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer)
  {
    super(EnumMap.class, false);
    _property = null;
    if (!paramBoolean)
    {
      paramBoolean = bool;
      if (paramJavaType != null)
      {
        paramBoolean = bool;
        if (!paramJavaType.isFinal()) {}
      }
    }
    else
    {
      paramBoolean = true;
    }
    _staticTyping = paramBoolean;
    _valueType = paramJavaType;
    _keyEnums = paramEnumValues;
    _valueTypeSerializer = paramTypeSerializer;
    _valueSerializer = paramJsonSerializer;
  }
  
  public EnumMapSerializer(EnumMapSerializer paramEnumMapSerializer, BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer)
  {
    super(paramEnumMapSerializer);
    _property = paramBeanProperty;
    _staticTyping = _staticTyping;
    _valueType = _valueType;
    _keyEnums = _keyEnums;
    _valueTypeSerializer = _valueTypeSerializer;
    _valueSerializer = paramJsonSerializer;
  }
  
  public EnumMapSerializer _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return new EnumMapSerializer(_valueType, _staticTyping, _keyEnums, paramTypeSerializer, _valueSerializer);
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper == null) {}
    JsonObjectFormatVisitor localJsonObjectFormatVisitor;
    do
    {
      return;
      localJsonObjectFormatVisitor = paramJsonFormatVisitorWrapper.expectObjectFormat(paramJavaType);
    } while (localJsonObjectFormatVisitor == null);
    JavaType localJavaType = paramJavaType.containedType(1);
    Object localObject2 = _valueSerializer;
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = localObject2;
      if (localJavaType != null) {
        localObject1 = paramJsonFormatVisitorWrapper.getProvider().findValueSerializer(localJavaType, _property);
      }
    }
    if (localJavaType == null) {
      localJavaType = paramJsonFormatVisitorWrapper.getProvider().constructType(Object.class);
    }
    for (;;)
    {
      Object localObject3 = _keyEnums;
      localObject2 = localObject3;
      if (localObject3 == null)
      {
        localObject2 = paramJavaType.containedType(0);
        if (localObject2 == null) {
          throw new IllegalStateException("Can not resolve Enum type of EnumMap: " + paramJavaType);
        }
        localObject2 = paramJsonFormatVisitorWrapper.getProvider().findValueSerializer((JavaType)localObject2, _property);
        if (!(localObject2 instanceof EnumSerializer)) {
          throw new IllegalStateException("Can not resolve Enum type of EnumMap: " + paramJavaType);
        }
        localObject2 = ((EnumSerializer)localObject2).getEnumValues();
      }
      localObject2 = ((EnumValues)localObject2).internalMap().entrySet().iterator();
      label207:
      if (((Iterator)localObject2).hasNext())
      {
        paramJavaType = (Map.Entry)((Iterator)localObject2).next();
        localObject3 = ((SerializableString)paramJavaType.getValue()).getValue();
        if (localObject1 != null) {
          break label288;
        }
      }
      label288:
      for (paramJavaType = paramJsonFormatVisitorWrapper.getProvider().findValueSerializer(paramJavaType.getKey().getClass(), _property);; paramJavaType = (JavaType)localObject1)
      {
        localJsonObjectFormatVisitor.property((String)localObject3, paramJavaType, localJavaType);
        localObject1 = paramJavaType;
        break label207;
        break;
      }
    }
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramBeanProperty != null)
    {
      AnnotatedMember localAnnotatedMember = paramBeanProperty.getMember();
      localObject1 = localObject2;
      if (localAnnotatedMember != null)
      {
        Object localObject3 = paramSerializerProvider.getAnnotationIntrospector().findContentSerializer(localAnnotatedMember);
        localObject1 = localObject2;
        if (localObject3 != null) {
          localObject1 = paramSerializerProvider.serializerInstance(localAnnotatedMember, localObject3);
        }
      }
    }
    localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = _valueSerializer;
    }
    localObject1 = findConvertingContentSerializer(paramSerializerProvider, paramBeanProperty, (JsonSerializer)localObject2);
    if (localObject1 == null)
    {
      if (!_staticTyping) {
        break label111;
      }
      paramSerializerProvider = withValueSerializer(paramBeanProperty, paramSerializerProvider.findValueSerializer(_valueType, paramBeanProperty));
    }
    label111:
    do
    {
      return paramSerializerProvider;
      localObject1 = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject1, paramBeanProperty);
      paramSerializerProvider = this;
    } while (localObject1 == _valueSerializer);
    return withValueSerializer(paramBeanProperty, (JsonSerializer)localObject1);
  }
  
  public JsonSerializer<?> getContentSerializer()
  {
    return _valueSerializer;
  }
  
  public JavaType getContentType()
  {
    return _valueType;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    ObjectNode localObjectNode1 = createSchemaNode("object", true);
    if ((paramType instanceof ParameterizedType))
    {
      Object localObject = ((ParameterizedType)paramType).getActualTypeArguments();
      if (localObject.length == 2)
      {
        paramType = paramSerializerProvider.constructType(localObject[0]);
        localObject = paramSerializerProvider.constructType(localObject[1]);
        ObjectNode localObjectNode2 = JsonNodeFactory.instance.objectNode();
        Enum[] arrayOfEnum = (Enum[])paramType.getRawClass().getEnumConstants();
        int j = arrayOfEnum.length;
        int i = 0;
        if (i < j)
        {
          Enum localEnum = arrayOfEnum[i];
          paramType = paramSerializerProvider.findValueSerializer(((JavaType)localObject).getRawClass(), _property);
          if ((paramType instanceof SchemaAware)) {}
          for (paramType = ((SchemaAware)paramType).getSchema(paramSerializerProvider, null);; paramType = JsonSchema.getDefaultSchemaNode())
          {
            localObjectNode2.put(paramSerializerProvider.getConfig().getAnnotationIntrospector().findEnumValue(localEnum), paramType);
            i += 1;
            break;
          }
        }
        localObjectNode1.put("properties", localObjectNode2);
      }
    }
    return localObjectNode1;
  }
  
  public boolean hasSingleElement(EnumMap<? extends Enum<?>, ?> paramEnumMap)
  {
    return paramEnumMap.size() == 1;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, EnumMap<? extends Enum<?>, ?> paramEnumMap)
  {
    return (paramEnumMap == null) || (paramEnumMap.isEmpty());
  }
  
  public void serialize(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    if (!paramEnumMap.isEmpty()) {
      serializeContents(paramEnumMap, paramJsonGenerator, paramSerializerProvider);
    }
    paramJsonGenerator.writeEndObject();
  }
  
  protected void serializeContents(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (_valueSerializer != null) {
      serializeContentsUsing(paramEnumMap, paramJsonGenerator, paramSerializerProvider, _valueSerializer);
    }
    label70:
    label207:
    label289:
    label351:
    for (;;)
    {
      return;
      Object localObject1 = _keyEnums;
      int i;
      boolean bool;
      TypeSerializer localTypeSerializer;
      Iterator localIterator;
      Object localObject3;
      Object localObject2;
      if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
      {
        i = 1;
        bool = paramSerializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
        localTypeSerializer = _valueTypeSerializer;
        localIterator = paramEnumMap.entrySet().iterator();
        localObject3 = null;
        localObject2 = null;
      }
      Map.Entry localEntry;
      for (;;)
      {
        if (!localIterator.hasNext()) {
          break label351;
        }
        localEntry = (Map.Entry)localIterator.next();
        Object localObject7 = localEntry.getValue();
        if ((i == 0) || (localObject7 != null))
        {
          Object localObject6 = (Enum)localEntry.getKey();
          if (bool) {
            paramJsonGenerator.writeFieldName(((Enum)localObject6).toString());
          }
          for (;;)
          {
            if (localObject7 != null) {
              break label207;
            }
            paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
            break label70;
            i = 0;
            break;
            localObject4 = localObject1;
            if (localObject1 == null) {
              localObject4 = ((EnumSerializer)paramSerializerProvider.findValueSerializer(((Enum)localObject6).getDeclaringClass(), _property)).getEnumValues();
            }
            paramJsonGenerator.writeFieldName(((EnumValues)localObject4).serializedValueFor((Enum)localObject6));
            localObject1 = localObject4;
          }
          Object localObject4 = localObject7.getClass();
          if (localObject4 == localObject3)
          {
            localObject4 = localObject3;
            localObject3 = localObject2;
            localObject6 = localObject2;
          }
          for (localObject2 = localObject4;; localObject2 = localObject4)
          {
            if (localTypeSerializer != null) {
              break label289;
            }
            try
            {
              ((JsonSerializer)localObject6).serialize(localObject7, paramJsonGenerator, paramSerializerProvider);
              localObject4 = localObject3;
              localObject3 = localObject2;
              localObject2 = localObject4;
            }
            catch (Exception localException)
            {
              wrapAndThrow(paramSerializerProvider, localException, paramEnumMap, ((Enum)localEntry.getKey()).name());
              Object localObject5 = localObject3;
              localObject3 = localObject2;
              localObject2 = localObject5;
            }
            localObject6 = paramSerializerProvider.findValueSerializer((Class)localObject4, _property);
            localObject3 = localObject6;
          }
          ((JsonSerializer)localObject6).serializeWithType(localObject7, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
          localObject4 = localObject3;
          localObject3 = localObject2;
          localObject2 = localObject4;
        }
      }
    }
  }
  
  protected void serializeContentsUsing(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    Object localObject1 = _keyEnums;
    int i;
    boolean bool;
    TypeSerializer localTypeSerializer;
    Iterator localIterator;
    if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES))
    {
      i = 1;
      bool = paramSerializerProvider.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING);
      localTypeSerializer = _valueTypeSerializer;
      localIterator = paramEnumMap.entrySet().iterator();
    }
    label45:
    Map.Entry localEntry;
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      localEntry = (Map.Entry)localIterator.next();
      Object localObject3 = localEntry.getValue();
      if ((i == 0) || (localObject3 != null))
      {
        Enum localEnum = (Enum)localEntry.getKey();
        if (bool) {
          paramJsonGenerator.writeFieldName(localEnum.toString());
        }
        for (;;)
        {
          if (localObject3 != null) {
            break label182;
          }
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          break label45;
          i = 0;
          break;
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = ((EnumSerializer)paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), _property)).getEnumValues();
          }
          paramJsonGenerator.writeFieldName(((EnumValues)localObject2).serializedValueFor(localEnum));
          localObject1 = localObject2;
        }
        label182:
        if (localTypeSerializer == null) {}
        try
        {
          paramJsonSerializer.serialize(localObject3, paramJsonGenerator, paramSerializerProvider);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramEnumMap, ((Enum)localEntry.getKey()).name());
        }
        paramJsonSerializer.serializeWithType(localObject3, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
      }
    }
  }
  
  public void serializeWithType(EnumMap<? extends Enum<?>, ?> paramEnumMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramEnumMap, paramJsonGenerator);
    if (!paramEnumMap.isEmpty()) {
      serializeContents(paramEnumMap, paramJsonGenerator, paramSerializerProvider);
    }
    paramTypeSerializer.writeTypeSuffixForObject(paramEnumMap, paramJsonGenerator);
  }
  
  public EnumMapSerializer withValueSerializer(BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer)
  {
    if ((_property == paramBeanProperty) && (paramJsonSerializer == _valueSerializer)) {
      return this;
    }
    return new EnumMapSerializer(this, paramBeanProperty, paramJsonSerializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.EnumMapSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */