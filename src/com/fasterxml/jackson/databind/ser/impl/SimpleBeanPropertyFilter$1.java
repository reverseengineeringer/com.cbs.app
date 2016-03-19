package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.ser.BeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.PropertyWriter;

final class SimpleBeanPropertyFilter$1
  implements PropertyFilter
{
  SimpleBeanPropertyFilter$1(BeanPropertyFilter paramBeanPropertyFilter) {}
  
  public final void depositSchemaProperty(PropertyWriter paramPropertyWriter, JsonObjectFormatVisitor paramJsonObjectFormatVisitor, SerializerProvider paramSerializerProvider)
  {
    val$src.depositSchemaProperty((BeanPropertyWriter)paramPropertyWriter, paramJsonObjectFormatVisitor, paramSerializerProvider);
  }
  
  public final void depositSchemaProperty(PropertyWriter paramPropertyWriter, ObjectNode paramObjectNode, SerializerProvider paramSerializerProvider)
  {
    val$src.depositSchemaProperty((BeanPropertyWriter)paramPropertyWriter, paramObjectNode, paramSerializerProvider);
  }
  
  public final void serializeAsElement(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, PropertyWriter paramPropertyWriter)
  {
    throw new UnsupportedOperationException();
  }
  
  public final void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, PropertyWriter paramPropertyWriter)
  {
    val$src.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider, (BeanPropertyWriter)paramPropertyWriter);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */