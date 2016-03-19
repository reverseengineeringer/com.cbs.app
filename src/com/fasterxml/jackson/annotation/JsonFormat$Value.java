package com.fasterxml.jackson.annotation;

import java.util.Locale;
import java.util.TimeZone;

public class JsonFormat$Value
{
  private TimeZone _timezone;
  private final Locale locale;
  private final String pattern;
  private final JsonFormat.Shape shape;
  private final String timezoneStr;
  
  public JsonFormat$Value()
  {
    this("", JsonFormat.Shape.ANY, "", "");
  }
  
  public JsonFormat$Value(JsonFormat paramJsonFormat)
  {
    this(paramJsonFormat.pattern(), paramJsonFormat.shape(), paramJsonFormat.locale(), paramJsonFormat.timezone());
  }
  
  public JsonFormat$Value(String paramString1, JsonFormat.Shape paramShape, String paramString2, String paramString3) {}
  
  public JsonFormat$Value(String paramString1, JsonFormat.Shape paramShape, Locale paramLocale, String paramString2, TimeZone paramTimeZone)
  {
    pattern = paramString1;
    paramString1 = paramShape;
    if (paramShape == null) {
      paramString1 = JsonFormat.Shape.ANY;
    }
    shape = paramString1;
    locale = paramLocale;
    _timezone = paramTimeZone;
    timezoneStr = paramString2;
  }
  
  public JsonFormat$Value(String paramString, JsonFormat.Shape paramShape, Locale paramLocale, TimeZone paramTimeZone)
  {
    pattern = paramString;
    paramString = paramShape;
    if (paramShape == null) {
      paramString = JsonFormat.Shape.ANY;
    }
    shape = paramString;
    locale = paramLocale;
    _timezone = paramTimeZone;
    timezoneStr = null;
  }
  
  public Locale getLocale()
  {
    return locale;
  }
  
  public String getPattern()
  {
    return pattern;
  }
  
  public JsonFormat.Shape getShape()
  {
    return shape;
  }
  
  public TimeZone getTimeZone()
  {
    TimeZone localTimeZone2 = _timezone;
    TimeZone localTimeZone1 = localTimeZone2;
    if (localTimeZone2 == null)
    {
      if (timezoneStr == null) {
        localTimeZone1 = null;
      }
    }
    else {
      return localTimeZone1;
    }
    localTimeZone1 = TimeZone.getTimeZone(timezoneStr);
    _timezone = localTimeZone1;
    return localTimeZone1;
  }
  
  public boolean hasLocale()
  {
    return locale != null;
  }
  
  public boolean hasPattern()
  {
    return (pattern != null) && (pattern.length() > 0);
  }
  
  public boolean hasShape()
  {
    return shape != JsonFormat.Shape.ANY;
  }
  
  public boolean hasTimeZone()
  {
    return (_timezone != null) || ((timezoneStr != null) && (!timezoneStr.isEmpty()));
  }
  
  public String timeZoneAsString()
  {
    if (_timezone != null) {
      return _timezone.getID();
    }
    return timezoneStr;
  }
  
  public Value withLocale(Locale paramLocale)
  {
    return new Value(pattern, shape, paramLocale, timezoneStr, _timezone);
  }
  
  public Value withPattern(String paramString)
  {
    return new Value(paramString, shape, locale, timezoneStr, _timezone);
  }
  
  public Value withShape(JsonFormat.Shape paramShape)
  {
    return new Value(pattern, paramShape, locale, timezoneStr, _timezone);
  }
  
  public Value withTimeZone(TimeZone paramTimeZone)
  {
    return new Value(pattern, shape, locale, null, paramTimeZone);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.annotation.JsonFormat.Value
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */