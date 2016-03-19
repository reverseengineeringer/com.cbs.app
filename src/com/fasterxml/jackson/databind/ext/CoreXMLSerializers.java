package com.fasterxml.jackson.databind.ext;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.Serializers.Base;
import com.fasterxml.jackson.databind.ser.std.CalendarSerializer;
import com.fasterxml.jackson.databind.ser.std.StdSerializer;
import com.fasterxml.jackson.databind.ser.std.ToStringSerializer;
import java.util.Calendar;
import javax.xml.datatype.Duration;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.namespace.QName;

public class CoreXMLSerializers
  extends Serializers.Base
{
  public JsonSerializer<?> findSerializer(SerializationConfig paramSerializationConfig, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    paramSerializationConfig = paramJavaType.getRawClass();
    if ((Duration.class.isAssignableFrom(paramSerializationConfig)) || (QName.class.isAssignableFrom(paramSerializationConfig))) {
      return ToStringSerializer.instance;
    }
    if (XMLGregorianCalendar.class.isAssignableFrom(paramSerializationConfig)) {
      return XMLGregorianCalendarSerializer.instance;
    }
    return null;
  }
  
  public static class XMLGregorianCalendarSerializer
    extends StdSerializer<XMLGregorianCalendar>
    implements ContextualSerializer
  {
    static final XMLGregorianCalendarSerializer instance = new XMLGregorianCalendarSerializer();
    final JsonSerializer<Object> _delegate;
    
    public XMLGregorianCalendarSerializer()
    {
      this(CalendarSerializer.instance);
    }
    
    protected XMLGregorianCalendarSerializer(JsonSerializer<?> paramJsonSerializer)
    {
      super();
      _delegate = paramJsonSerializer;
    }
    
    protected Calendar _convert(XMLGregorianCalendar paramXMLGregorianCalendar)
    {
      if (paramXMLGregorianCalendar == null) {
        return null;
      }
      return paramXMLGregorianCalendar.toGregorianCalendar();
    }
    
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
    {
      _delegate.acceptJsonFormatVisitor(paramJsonFormatVisitorWrapper, null);
    }
    
    public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
    {
      paramBeanProperty = paramSerializerProvider.handlePrimaryContextualization(_delegate, paramBeanProperty);
      paramSerializerProvider = this;
      if (paramBeanProperty != _delegate) {
        paramSerializerProvider = new XMLGregorianCalendarSerializer(paramBeanProperty);
      }
      return paramSerializerProvider;
    }
    
    public JsonSerializer<?> getDelegatee()
    {
      return _delegate;
    }
    
    public boolean isEmpty(SerializerProvider paramSerializerProvider, XMLGregorianCalendar paramXMLGregorianCalendar)
    {
      return _delegate.isEmpty(paramSerializerProvider, _convert(paramXMLGregorianCalendar));
    }
    
    @Deprecated
    public boolean isEmpty(XMLGregorianCalendar paramXMLGregorianCalendar)
    {
      return _delegate.isEmpty(_convert(paramXMLGregorianCalendar));
    }
    
    public void serialize(XMLGregorianCalendar paramXMLGregorianCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      _delegate.serialize(_convert(paramXMLGregorianCalendar), paramJsonGenerator, paramSerializerProvider);
    }
    
    public void serializeWithType(XMLGregorianCalendar paramXMLGregorianCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
    {
      _delegate.serializeWithType(_convert(paramXMLGregorianCalendar), paramJsonGenerator, paramSerializerProvider, paramTypeSerializer);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ext.CoreXMLSerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */