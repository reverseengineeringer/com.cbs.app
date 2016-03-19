package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.std.ArraySerializerBase;
import com.fasterxml.jackson.databind.type.TypeFactory;
import java.lang.reflect.Type;

@JacksonStdImpl
public class StringArraySerializer
  extends ArraySerializerBase<String[]>
  implements ContextualSerializer
{
  private static final JavaType VALUE_TYPE = TypeFactory.defaultInstance().uncheckedSimpleType(String.class);
  public static final StringArraySerializer instance = new StringArraySerializer();
  protected final JsonSerializer<Object> _elementSerializer;
  
  protected StringArraySerializer()
  {
    super(String[].class, null);
    _elementSerializer = null;
  }
  
  public StringArraySerializer(StringArraySerializer paramStringArraySerializer, BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer)
  {
    super(paramStringArraySerializer, paramBeanProperty);
    _elementSerializer = paramJsonSerializer;
  }
  
  private void serializeContentsSlow(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    int i = 0;
    int j = paramArrayOfString.length;
    if (i < j)
    {
      if (paramArrayOfString[i] == null) {
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
      }
      for (;;)
      {
        i += 1;
        break;
        paramJsonSerializer.serialize(paramArrayOfString[i], paramJsonGenerator, paramSerializerProvider);
      }
    }
  }
  
  public ContainerSerializer<?> _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper != null)
    {
      paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectArrayFormat(paramJavaType);
      if (paramJsonFormatVisitorWrapper != null) {
        paramJsonFormatVisitorWrapper.itemsFormat(JsonFormatTypes.STRING);
      }
    }
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    Object localObject2;
    if (paramBeanProperty != null)
    {
      localObject1 = paramBeanProperty.getMember();
      if (localObject1 != null)
      {
        localObject2 = paramSerializerProvider.getAnnotationIntrospector().findContentSerializer((Annotated)localObject1);
        if (localObject2 == null) {}
      }
    }
    for (Object localObject1 = paramSerializerProvider.serializerInstance((Annotated)localObject1, localObject2);; localObject1 = null)
    {
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = _elementSerializer;
      }
      localObject1 = findConvertingContentSerializer(paramSerializerProvider, paramBeanProperty, (JsonSerializer)localObject2);
      if (localObject1 == null) {}
      for (paramSerializerProvider = paramSerializerProvider.findValueSerializer(String.class, paramBeanProperty);; paramSerializerProvider = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject1, paramBeanProperty))
      {
        localObject1 = paramSerializerProvider;
        if (isDefaultSerializer(paramSerializerProvider)) {
          localObject1 = null;
        }
        if (localObject1 != _elementSerializer) {
          break;
        }
        return this;
      }
      return new StringArraySerializer(this, paramBeanProperty, (JsonSerializer)localObject1);
    }
  }
  
  public JsonSerializer<?> getContentSerializer()
  {
    return _elementSerializer;
  }
  
  public JavaType getContentType()
  {
    return VALUE_TYPE;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("array", true).set("items", createSchemaNode("string"));
  }
  
  public boolean hasSingleElement(String[] paramArrayOfString)
  {
    return paramArrayOfString.length == 1;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, String[] paramArrayOfString)
  {
    return (paramArrayOfString == null) || (paramArrayOfString.length == 0);
  }
  
  public final void serialize(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramArrayOfString.length;
    if ((i == 1) && (paramSerializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)))
    {
      serializeContents(paramArrayOfString, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    paramJsonGenerator.writeStartArray(i);
    serializeContents(paramArrayOfString, paramJsonGenerator, paramSerializerProvider);
    paramJsonGenerator.writeEndArray();
  }
  
  public void serializeContents(String[] paramArrayOfString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int j = paramArrayOfString.length;
    if (j == 0) {
      return;
    }
    if (_elementSerializer != null)
    {
      serializeContentsSlow(paramArrayOfString, paramJsonGenerator, paramSerializerProvider, _elementSerializer);
      return;
    }
    int i = 0;
    label32:
    if (i < j)
    {
      if (paramArrayOfString[i] != null) {
        break label59;
      }
      paramJsonGenerator.writeNull();
    }
    for (;;)
    {
      i += 1;
      break label32;
      break;
      label59:
      paramJsonGenerator.writeString(paramArrayOfString[i]);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.StringArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */