package com.fasterxml.jackson.databind.jsontype.impl;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;

public class AsArrayTypeSerializer
  extends TypeSerializerBase
{
  public AsArrayTypeSerializer(TypeIdResolver paramTypeIdResolver, BeanProperty paramBeanProperty)
  {
    super(paramTypeIdResolver, paramBeanProperty);
  }
  
  public AsArrayTypeSerializer forProperty(BeanProperty paramBeanProperty)
  {
    if (_property == paramBeanProperty) {
      return this;
    }
    return new AsArrayTypeSerializer(_idResolver, paramBeanProperty);
  }
  
  public JsonTypeInfo.As getTypeInclusion()
  {
    return JsonTypeInfo.As.WRAPPER_ARRAY;
  }
  
  public void writeCustomTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramString != null) {
        paramJsonGenerator.writeTypeId(paramString);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartArray();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString(paramString);
    }
  }
  
  public void writeCustomTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramString != null) {
        paramJsonGenerator.writeTypeId(paramString);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartObject();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString(paramString);
    }
  }
  
  public void writeCustomTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (paramJsonGenerator.canWriteTypeId())
    {
      if (paramString != null) {
        paramJsonGenerator.writeTypeId(paramString);
      }
      return;
    }
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString(paramString);
  }
  
  public void writeCustomTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (!paramJsonGenerator.canWriteTypeId()) {
      writeTypeSuffixForArray(paramObject, paramJsonGenerator);
    }
  }
  
  public void writeCustomTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (!paramJsonGenerator.canWriteTypeId()) {
      writeTypeSuffixForObject(paramObject, paramJsonGenerator);
    }
  }
  
  public void writeCustomTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, String paramString)
  {
    if (!paramJsonGenerator.canWriteTypeId()) {
      writeTypeSuffixForScalar(paramObject, paramJsonGenerator);
    }
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramObject = idFromValue(paramObject);
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartArray();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString((String)paramObject);
    }
  }
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    paramObject = idFromValueAndType(paramObject, paramClass);
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartArray();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString((String)paramObject);
    }
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramObject = idFromValue(paramObject);
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartObject();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString((String)paramObject);
    }
  }
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    paramObject = idFromValueAndType(paramObject, paramClass);
    if (paramJsonGenerator.canWriteTypeId()) {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
    }
    for (;;)
    {
      paramJsonGenerator.writeStartObject();
      return;
      paramJsonGenerator.writeStartArray();
      paramJsonGenerator.writeString((String)paramObject);
    }
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramObject = idFromValue(paramObject);
    if (paramJsonGenerator.canWriteTypeId())
    {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
      return;
    }
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString((String)paramObject);
  }
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    paramObject = idFromValueAndType(paramObject, paramClass);
    if (paramJsonGenerator.canWriteTypeId())
    {
      if (paramObject != null) {
        paramJsonGenerator.writeTypeId(paramObject);
      }
      return;
    }
    paramJsonGenerator.writeStartArray();
    paramJsonGenerator.writeString((String)paramObject);
  }
  
  public void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndArray();
    if (!paramJsonGenerator.canWriteTypeId()) {
      paramJsonGenerator.writeEndArray();
    }
  }
  
  public void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    paramJsonGenerator.writeEndObject();
    if (!paramJsonGenerator.canWriteTypeId()) {
      paramJsonGenerator.writeEndArray();
    }
  }
  
  public void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator)
  {
    if (!paramJsonGenerator.canWriteTypeId()) {
      paramJsonGenerator.writeEndArray();
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsontype.impl.AsArrayTypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */