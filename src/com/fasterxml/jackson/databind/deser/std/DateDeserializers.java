package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;

public class DateDeserializers
{
  private static final HashSet<String> _classNames;
  
  static
  {
    int i = 0;
    _classNames = new HashSet();
    while (i < 5)
    {
      Class localClass = new Class[] { Calendar.class, GregorianCalendar.class, java.sql.Date.class, java.util.Date.class, Timestamp.class }[i];
      _classNames.add(localClass.getName());
      i += 1;
    }
  }
  
  public static JsonDeserializer<?> find(Class<?> paramClass, String paramString)
  {
    if (_classNames.contains(paramString))
    {
      if (paramClass == Calendar.class) {
        return new CalendarDeserializer();
      }
      if (paramClass == java.util.Date.class) {
        return DateDeserializer.instance;
      }
      if (paramClass == java.sql.Date.class) {
        return new SqlDateDeserializer();
      }
      if (paramClass == Timestamp.class) {
        return new TimestampDeserializer();
      }
      if (paramClass == GregorianCalendar.class) {
        return new CalendarDeserializer(GregorianCalendar.class);
      }
    }
    return null;
  }
  
  @JacksonStdImpl
  public static class CalendarDeserializer
    extends DateDeserializers.DateBasedDeserializer<Calendar>
  {
    protected final Class<? extends Calendar> _calendarClass;
    
    public CalendarDeserializer()
    {
      super();
      _calendarClass = null;
    }
    
    public CalendarDeserializer(CalendarDeserializer paramCalendarDeserializer, DateFormat paramDateFormat, String paramString)
    {
      super(paramDateFormat, paramString);
      _calendarClass = _calendarClass;
    }
    
    public CalendarDeserializer(Class<? extends Calendar> paramClass)
    {
      super();
      _calendarClass = paramClass;
    }
    
    public Calendar deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser == null) {
        paramJsonParser = null;
      }
      for (;;)
      {
        return paramJsonParser;
        if (_calendarClass == null) {
          return paramDeserializationContext.constructCalendar(paramJsonParser);
        }
        try
        {
          Calendar localCalendar = (Calendar)_calendarClass.newInstance();
          localCalendar.setTimeInMillis(paramJsonParser.getTime());
          TimeZone localTimeZone = paramDeserializationContext.getTimeZone();
          paramJsonParser = localCalendar;
          if (localTimeZone == null) {
            continue;
          }
          localCalendar.setTimeZone(localTimeZone);
          return localCalendar;
        }
        catch (Exception paramJsonParser)
        {
          throw paramDeserializationContext.instantiationException(_calendarClass, paramJsonParser);
        }
      }
    }
    
    protected CalendarDeserializer withDateFormat(DateFormat paramDateFormat, String paramString)
    {
      return new CalendarDeserializer(this, paramDateFormat, paramString);
    }
  }
  
  protected static abstract class DateBasedDeserializer<T>
    extends StdScalarDeserializer<T>
    implements ContextualDeserializer
  {
    protected final DateFormat _customFormat;
    protected final String _formatString;
    
    protected DateBasedDeserializer(DateBasedDeserializer<T> paramDateBasedDeserializer, DateFormat paramDateFormat, String paramString)
    {
      super();
      _customFormat = paramDateFormat;
      _formatString = paramString;
    }
    
    protected DateBasedDeserializer(Class<?> paramClass)
    {
      super();
      _customFormat = null;
      _formatString = null;
    }
    
    protected java.util.Date _parseDate(JsonParser arg1, DeserializationContext paramDeserializationContext)
    {
      if (_customFormat != null)
      {
        Object localObject = ???.getCurrentToken();
        if (localObject == JsonToken.VALUE_STRING)
        {
          paramDeserializationContext = ???.getText().trim();
          if (paramDeserializationContext.length() == 0) {
            localObject = (java.util.Date)getEmptyValue();
          }
        }
        do
        {
          return (java.util.Date)localObject;
          try
          {
            synchronized (_customFormat)
            {
              localObject = _customFormat.parse(paramDeserializationContext);
              return (java.util.Date)localObject;
            }
            if (localParseException != JsonToken.START_ARRAY) {
              break;
            }
          }
          catch (ParseException localParseException)
          {
            throw new IllegalArgumentException("Failed to parse Date value '" + paramDeserializationContext + "' (format: \"" + _formatString + "\"): " + localParseException.getMessage());
          }
          if (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
            break;
          }
          ???.nextToken();
          java.util.Date localDate = _parseDate(???, paramDeserializationContext);
        } while (???.nextToken() == JsonToken.END_ARRAY);
        throw paramDeserializationContext.wrongTokenException(???, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'java.util.Date' value but there was more than a single value in the array");
      }
      return super._parseDate(???, paramDeserializationContext);
    }
    
    public JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
    {
      Object localObject = this;
      JsonFormat.Value localValue;
      TimeZone localTimeZone;
      if (paramBeanProperty != null)
      {
        localValue = paramDeserializationContext.getAnnotationIntrospector().findFormat(paramBeanProperty.getMember());
        localObject = this;
        if (localValue != null)
        {
          localTimeZone = localValue.getTimeZone();
          if (!localValue.hasPattern()) {
            break label105;
          }
          localObject = localValue.getPattern();
          if (!localValue.hasLocale()) {
            break label97;
          }
          paramBeanProperty = localValue.getLocale();
          paramBeanProperty = new SimpleDateFormat((String)localObject, paramBeanProperty);
          if (localTimeZone != null) {
            break label192;
          }
        }
      }
      label97:
      label105:
      label192:
      for (paramDeserializationContext = paramDeserializationContext.getTimeZone();; paramDeserializationContext = localTimeZone)
      {
        paramBeanProperty.setTimeZone(paramDeserializationContext);
        localObject = withDateFormat(paramBeanProperty, (String)localObject);
        do
        {
          return (JsonDeserializer<?>)localObject;
          paramBeanProperty = paramDeserializationContext.getLocale();
          break;
          localObject = this;
        } while (localTimeZone == null);
        paramBeanProperty = paramDeserializationContext.getConfig().getDateFormat();
        if (paramBeanProperty.getClass() == StdDateFormat.class) {
          if (localValue.hasLocale())
          {
            paramDeserializationContext = localValue.getLocale();
            paramDeserializationContext = ((StdDateFormat)paramBeanProperty).withTimeZone(localTimeZone).withLocale(paramDeserializationContext);
          }
        }
        for (;;)
        {
          return withDateFormat(paramDeserializationContext, _formatString);
          paramDeserializationContext = paramDeserializationContext.getLocale();
          break;
          paramDeserializationContext = (DateFormat)paramBeanProperty.clone();
          paramDeserializationContext.setTimeZone(localTimeZone);
        }
      }
    }
    
    protected abstract DateBasedDeserializer<T> withDateFormat(DateFormat paramDateFormat, String paramString);
  }
  
  public static class DateDeserializer
    extends DateDeserializers.DateBasedDeserializer<java.util.Date>
  {
    public static final DateDeserializer instance = new DateDeserializer();
    
    public DateDeserializer()
    {
      super();
    }
    
    public DateDeserializer(DateDeserializer paramDateDeserializer, DateFormat paramDateFormat, String paramString)
    {
      super(paramDateFormat, paramString);
    }
    
    public java.util.Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      return _parseDate(paramJsonParser, paramDeserializationContext);
    }
    
    protected DateDeserializer withDateFormat(DateFormat paramDateFormat, String paramString)
    {
      return new DateDeserializer(this, paramDateFormat, paramString);
    }
  }
  
  public static class SqlDateDeserializer
    extends DateDeserializers.DateBasedDeserializer<java.sql.Date>
  {
    public SqlDateDeserializer()
    {
      super();
    }
    
    public SqlDateDeserializer(SqlDateDeserializer paramSqlDateDeserializer, DateFormat paramDateFormat, String paramString)
    {
      super(paramDateFormat, paramString);
    }
    
    public java.sql.Date deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      paramJsonParser = _parseDate(paramJsonParser, paramDeserializationContext);
      if (paramJsonParser == null) {
        return null;
      }
      return new java.sql.Date(paramJsonParser.getTime());
    }
    
    protected SqlDateDeserializer withDateFormat(DateFormat paramDateFormat, String paramString)
    {
      return new SqlDateDeserializer(this, paramDateFormat, paramString);
    }
  }
  
  public static class TimestampDeserializer
    extends DateDeserializers.DateBasedDeserializer<Timestamp>
  {
    public TimestampDeserializer()
    {
      super();
    }
    
    public TimestampDeserializer(TimestampDeserializer paramTimestampDeserializer, DateFormat paramDateFormat, String paramString)
    {
      super(paramDateFormat, paramString);
    }
    
    public Timestamp deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
    {
      return new Timestamp(_parseDate(paramJsonParser, paramDeserializationContext).getTime());
    }
    
    protected TimestampDeserializer withDateFormat(DateFormat paramDateFormat, String paramString)
    {
      return new TimestampDeserializer(this, paramDateFormat, paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.DateDeserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */