package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.text.DateFormat;
import java.util.Date;

@JacksonStdImpl
public class DateSerializer
  extends DateTimeSerializerBase<Date>
{
  public static final DateSerializer instance = new DateSerializer();
  
  public DateSerializer()
  {
    this(null, null);
  }
  
  public DateSerializer(Boolean paramBoolean, DateFormat paramDateFormat)
  {
    super(Date.class, paramBoolean, paramDateFormat);
  }
  
  protected long _timestamp(Date paramDate)
  {
    if (paramDate == null) {
      return 0L;
    }
    return paramDate.getTime();
  }
  
  public void serialize(Date paramDate, JsonGenerator paramJsonGenerator, SerializerProvider arg3)
  {
    if (_asTimestamp(???))
    {
      paramJsonGenerator.writeNumber(_timestamp(paramDate));
      return;
    }
    if (_customFormat != null) {
      synchronized (_customFormat)
      {
        paramJsonGenerator.writeString(_customFormat.format(paramDate));
        return;
      }
    }
    ???.defaultSerializeDateValue(paramDate, paramJsonGenerator);
  }
  
  public DateSerializer withFormat(Boolean paramBoolean, DateFormat paramDateFormat)
  {
    return new DateSerializer(paramBoolean, paramDateFormat);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.DateSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */