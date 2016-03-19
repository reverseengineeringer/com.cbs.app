package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.util.EnumSet;
import java.util.Iterator;

public class EnumSetSerializer
  extends AsArraySerializerBase<EnumSet<? extends Enum<?>>>
{
  public EnumSetSerializer(JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    super(EnumSet.class, paramJavaType, true, null, paramBeanProperty, null);
  }
  
  public EnumSetSerializer(EnumSetSerializer paramEnumSetSerializer, BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<?> paramJsonSerializer)
  {
    super(paramEnumSetSerializer, paramBeanProperty, paramTypeSerializer, paramJsonSerializer);
  }
  
  public EnumSetSerializer _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    return this;
  }
  
  public boolean hasSingleElement(EnumSet<? extends Enum<?>> paramEnumSet)
  {
    return paramEnumSet.size() == 1;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, EnumSet<? extends Enum<?>> paramEnumSet)
  {
    return (paramEnumSet == null) || (paramEnumSet.isEmpty());
  }
  
  public final void serialize(EnumSet<? extends Enum<?>> paramEnumSet, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    int i = paramEnumSet.size();
    if ((i == 1) && (paramSerializerProvider.isEnabled(SerializationFeature.WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED)))
    {
      serializeContents(paramEnumSet, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    paramJsonGenerator.writeStartArray(i);
    serializeContents(paramEnumSet, paramJsonGenerator, paramSerializerProvider);
    paramJsonGenerator.writeEndArray();
  }
  
  public void serializeContents(EnumSet<? extends Enum<?>> paramEnumSet, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Object localObject = _elementSerializer;
    Iterator localIterator = paramEnumSet.iterator();
    for (paramEnumSet = (EnumSet<? extends Enum<?>>)localObject; localIterator.hasNext(); paramEnumSet = (EnumSet<? extends Enum<?>>)localObject)
    {
      Enum localEnum = (Enum)localIterator.next();
      localObject = paramEnumSet;
      if (paramEnumSet == null) {
        localObject = paramSerializerProvider.findValueSerializer(localEnum.getDeclaringClass(), _property);
      }
      ((JsonSerializer)localObject).serialize(localEnum, paramJsonGenerator, paramSerializerProvider);
    }
  }
  
  public EnumSetSerializer withResolved(BeanProperty paramBeanProperty, TypeSerializer paramTypeSerializer, JsonSerializer<?> paramJsonSerializer)
  {
    return new EnumSetSerializer(this, paramBeanProperty, paramTypeSerializer, paramJsonSerializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.EnumSetSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */