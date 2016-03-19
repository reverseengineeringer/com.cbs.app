package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.util.Calendar;
import java.util.Date;

public class StdKeySerializers
{
  protected static final JsonSerializer<Object> DEFAULT_KEY_SERIALIZER = new StdKeySerializer();
  protected static final JsonSerializer<Object> DEFAULT_STRING_SERIALIZER = new StringKeySerializer();
  
  public static JsonSerializer<Object> getDefault()
  {
    return DEFAULT_KEY_SERIALIZER;
  }
  
  @Deprecated
  public static JsonSerializer<Object> getStdKeySerializer(JavaType paramJavaType)
  {
    return getStdKeySerializer(null, paramJavaType.getRawClass(), true);
  }
  
  public static JsonSerializer<Object> getStdKeySerializer(SerializationConfig paramSerializationConfig, Class<?> paramClass, boolean paramBoolean)
  {
    if (paramClass != null)
    {
      if (paramClass == String.class) {
        return DEFAULT_STRING_SERIALIZER;
      }
      if ((paramClass == Object.class) || (paramClass.isPrimitive()) || (Number.class.isAssignableFrom(paramClass))) {
        return DEFAULT_KEY_SERIALIZER;
      }
      if (paramClass == Class.class) {
        return ClassKeySerializer.instance;
      }
      if (Date.class.isAssignableFrom(paramClass)) {
        return DateKeySerializer.instance;
      }
      if (Calendar.class.isAssignableFrom(paramClass)) {
        return CalendarKeySerializer.instance;
      }
    }
    if (paramBoolean) {
      return DEFAULT_KEY_SERIALIZER;
    }
    return null;
  }
  
  public static class CalendarKeySerializer
    extends StdSerializer<Calendar>
  {
    protected static final JsonSerializer<?> instance = new CalendarKeySerializer();
    
    public CalendarKeySerializer()
    {
      super();
    }
    
    public void serialize(Calendar paramCalendar, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramSerializerProvider.defaultSerializeDateKey(paramCalendar.getTimeInMillis(), paramJsonGenerator);
    }
  }
  
  public static class ClassKeySerializer
    extends StdSerializer<Class<?>>
  {
    protected static final JsonSerializer<?> instance = new ClassKeySerializer();
    
    public ClassKeySerializer()
    {
      super(false);
    }
    
    public void serialize(Class<?> paramClass, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeFieldName(paramClass.getName());
    }
  }
  
  public static class DateKeySerializer
    extends StdSerializer<Date>
  {
    protected static final JsonSerializer<?> instance = new DateKeySerializer();
    
    public DateKeySerializer()
    {
      super();
    }
    
    public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramSerializerProvider.defaultSerializeDateKey(paramDate, paramJsonGenerator);
    }
  }
  
  public static class StringKeySerializer
    extends StdSerializer<String>
  {
    public StringKeySerializer()
    {
      super();
    }
    
    public void serialize(String paramString, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
    {
      paramJsonGenerator.writeFieldName(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdKeySerializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */