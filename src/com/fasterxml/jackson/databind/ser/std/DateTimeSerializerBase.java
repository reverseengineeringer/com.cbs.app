package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonIntegerFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonStringFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

public abstract class DateTimeSerializerBase<T>
  extends StdScalarSerializer<T>
  implements ContextualSerializer
{
  protected final DateFormat _customFormat;
  protected final Boolean _useTimestamp;
  
  protected DateTimeSerializerBase(Class<T> paramClass, Boolean paramBoolean, DateFormat paramDateFormat)
  {
    super(paramClass);
    _useTimestamp = paramBoolean;
    _customFormat = paramDateFormat;
  }
  
  protected void _acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectIntegerFormat(paramJavaType);
      if (paramJsonFormatVisitorWrapper != null)
      {
        paramJsonFormatVisitorWrapper.numberType(JsonParser.NumberType.LONG);
        paramJsonFormatVisitorWrapper.format(JsonValueFormat.UTC_MILLISEC);
      }
    }
    do
    {
      return;
      paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectStringFormat(paramJavaType);
    } while (paramJsonFormatVisitorWrapper == null);
    paramJsonFormatVisitorWrapper.format(JsonValueFormat.DATE_TIME);
  }
  
  protected boolean _asTimestamp(SerializerProvider paramSerializerProvider)
  {
    if (_useTimestamp != null) {
      return _useTimestamp.booleanValue();
    }
    if (_customFormat == null)
    {
      if (paramSerializerProvider != null) {
        return paramSerializerProvider.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
      }
      throw new IllegalArgumentException("Null 'provider' passed for " + handledType().getName());
    }
    return false;
  }
  
  protected abstract long _timestamp(T paramT);
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    _acceptJsonFormatVisitor(paramJsonFormatVisitorWrapper, paramJavaType, _asTimestamp(paramJsonFormatVisitorWrapper.getProvider()));
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    Object localObject = this;
    JsonFormat.Value localValue;
    if (paramBeanProperty != null)
    {
      localValue = paramSerializerProvider.getAnnotationIntrospector().findFormat(paramBeanProperty.getMember());
      localObject = this;
      if (localValue != null)
      {
        if (!localValue.getShape().isNumeric()) {
          break label50;
        }
        localObject = withFormat(Boolean.TRUE, null);
      }
    }
    return (JsonSerializer<?>)localObject;
    label50:
    label65:
    TimeZone localTimeZone;
    if (localValue.getShape() == JsonFormat.Shape.STRING)
    {
      paramBeanProperty = Boolean.FALSE;
      localTimeZone = localValue.getTimeZone();
      if (!localValue.hasPattern()) {
        break label147;
      }
      String str = localValue.getPattern();
      if (!localValue.hasLocale()) {
        break label139;
      }
      localObject = localValue.getLocale();
      label101:
      localObject = new SimpleDateFormat(str, (Locale)localObject);
      if (localTimeZone != null) {
        break label224;
      }
    }
    label139:
    label147:
    label224:
    for (paramSerializerProvider = paramSerializerProvider.getTimeZone();; paramSerializerProvider = localTimeZone)
    {
      ((SimpleDateFormat)localObject).setTimeZone(paramSerializerProvider);
      return withFormat(paramBeanProperty, (DateFormat)localObject);
      paramBeanProperty = null;
      break label65;
      localObject = paramSerializerProvider.getLocale();
      break label101;
      localObject = this;
      if (localTimeZone == null) {
        break;
      }
      localObject = paramSerializerProvider.getConfig().getDateFormat();
      if (localObject.getClass() == StdDateFormat.class) {
        if (localValue.hasLocale())
        {
          paramSerializerProvider = localValue.getLocale();
          paramSerializerProvider = StdDateFormat.getISO8601Format(localTimeZone, paramSerializerProvider);
        }
      }
      for (;;)
      {
        return withFormat(paramBeanProperty, paramSerializerProvider);
        paramSerializerProvider = paramSerializerProvider.getLocale();
        break;
        paramSerializerProvider = (DateFormat)((DateFormat)localObject).clone();
        paramSerializerProvider.setTimeZone(localTimeZone);
      }
    }
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    if (_asTimestamp(paramSerializerProvider)) {}
    for (paramSerializerProvider = "number";; paramSerializerProvider = "string") {
      return createSchemaNode(paramSerializerProvider, true);
    }
  }
  
  public boolean isEmpty(T paramT)
  {
    return (paramT == null) || (_timestamp(paramT) == 0L);
  }
  
  public abstract void serialize(T paramT, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider);
  
  public abstract DateTimeSerializerBase<T> withFormat(Boolean paramBoolean, DateFormat paramDateFormat);
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.DateTimeSerializerBase
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */