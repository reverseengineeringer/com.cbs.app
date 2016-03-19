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
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

public abstract class DateDeserializers$DateBasedDeserializer<T>
  extends StdScalarDeserializer<T>
  implements ContextualDeserializer
{
  protected final DateFormat _customFormat;
  protected final String _formatString;
  
  protected DateDeserializers$DateBasedDeserializer(DateBasedDeserializer<T> paramDateBasedDeserializer, DateFormat paramDateFormat, String paramString)
  {
    super(_valueClass);
    _customFormat = paramDateFormat;
    _formatString = paramString;
  }
  
  protected DateDeserializers$DateBasedDeserializer(Class<?> paramClass)
  {
    super(paramClass);
    _customFormat = null;
    _formatString = null;
  }
  
  protected Date _parseDate(JsonParser arg1, DeserializationContext paramDeserializationContext)
  {
    if (_customFormat != null)
    {
      Object localObject = ???.getCurrentToken();
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramDeserializationContext = ???.getText().trim();
        if (paramDeserializationContext.length() == 0) {
          localObject = (Date)getEmptyValue();
        }
      }
      do
      {
        return (Date)localObject;
        try
        {
          synchronized (_customFormat)
          {
            localObject = _customFormat.parse(paramDeserializationContext);
            return (Date)localObject;
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
        Date localDate = _parseDate(???, paramDeserializationContext);
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

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */