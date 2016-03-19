package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonParser.NumberType;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.io.NumberInput;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.Date;

public abstract class StdDeserializer<T>
  extends JsonDeserializer<T>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final Class<?> _valueClass;
  
  protected StdDeserializer(JavaType paramJavaType)
  {
    if (paramJavaType == null) {}
    for (paramJavaType = null;; paramJavaType = paramJavaType.getRawClass())
    {
      _valueClass = paramJavaType;
      return;
    }
  }
  
  protected StdDeserializer(StdDeserializer<?> paramStdDeserializer)
  {
    _valueClass = _valueClass;
  }
  
  protected StdDeserializer(Class<?> paramClass)
  {
    _valueClass = paramClass;
  }
  
  protected static final double parseDouble(String paramString)
  {
    if ("2.2250738585072012e-308".equals(paramString)) {
      return Double.MIN_VALUE;
    }
    return Double.parseDouble(paramString);
  }
  
  protected T _deserializeFromEmpty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if (localJsonToken == JsonToken.START_ARRAY)
    {
      if (!paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_ARRAY_AS_NULL_OBJECT)) {
        break label76;
      }
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {}
    }
    while ((localJsonToken == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().trim().isEmpty()))
    {
      return null;
      throw paramDeserializationContext.mappingException(handledType(), JsonToken.START_ARRAY);
    }
    label76:
    throw paramDeserializationContext.mappingException(handledType());
  }
  
  protected boolean _hasTextualNull(String paramString)
  {
    return "null".equals(paramString);
  }
  
  protected final boolean _isNaN(String paramString)
  {
    return "NaN".equals(paramString);
  }
  
  protected final boolean _isNegInf(String paramString)
  {
    return ("-Infinity".equals(paramString)) || ("-INF".equals(paramString));
  }
  
  protected final boolean _isPosInf(String paramString)
  {
    return ("Infinity".equals(paramString)) || ("INF".equals(paramString));
  }
  
  protected final Boolean _parseBoolean(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_TRUE) {
      localObject = Boolean.TRUE;
    }
    do
    {
      return (Boolean)localObject;
      if (localObject == JsonToken.VALUE_FALSE) {
        return Boolean.FALSE;
      }
      if (localObject == JsonToken.VALUE_NUMBER_INT)
      {
        if (paramJsonParser.getNumberType() == JsonParser.NumberType.INT)
        {
          if (paramJsonParser.getIntValue() == 0) {
            return Boolean.FALSE;
          }
          return Boolean.TRUE;
        }
        return Boolean.valueOf(_parseBooleanFromNumber(paramJsonParser, paramDeserializationContext));
      }
      if (localObject == JsonToken.VALUE_NULL) {
        return (Boolean)getNullValue();
      }
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (("true".equals(paramJsonParser)) || ("True".equals(paramJsonParser))) {
          return Boolean.TRUE;
        }
        if (("false".equals(paramJsonParser)) || ("False".equals(paramJsonParser))) {
          return Boolean.FALSE;
        }
        if (paramJsonParser.length() == 0) {
          return (Boolean)getEmptyValue();
        }
        if (_hasTextualNull(paramJsonParser)) {
          return (Boolean)getNullValue();
        }
        throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "only \"true\" or \"false\" recognized");
      }
      if ((localObject != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localObject = _parseBoolean(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Boolean' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
  }
  
  protected final boolean _parseBooleanFromNumber(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.getNumberType() == JsonParser.NumberType.LONG)
    {
      if (paramJsonParser.getLongValue() == 0L) {}
      for (paramJsonParser = Boolean.FALSE;; paramJsonParser = Boolean.TRUE) {
        return paramJsonParser.booleanValue();
      }
    }
    paramJsonParser = paramJsonParser.getText();
    if (("0.0".equals(paramJsonParser)) || ("0".equals(paramJsonParser))) {
      return Boolean.FALSE.booleanValue();
    }
    return Boolean.TRUE.booleanValue();
  }
  
  protected final boolean _parseBooleanPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    boolean bool2 = true;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    boolean bool1;
    if (localJsonToken == JsonToken.VALUE_TRUE) {
      bool1 = bool2;
    }
    label79:
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            if (localJsonToken == JsonToken.VALUE_FALSE) {
              return false;
            }
            if (localJsonToken == JsonToken.VALUE_NULL) {
              return false;
            }
            if (localJsonToken != JsonToken.VALUE_NUMBER_INT) {
              break label79;
            }
            if (paramJsonParser.getNumberType() != JsonParser.NumberType.INT) {
              break;
            }
            bool1 = bool2;
          } while (paramJsonParser.getIntValue() != 0);
          return false;
          return _parseBooleanFromNumber(paramJsonParser, paramDeserializationContext);
          if (localJsonToken != JsonToken.VALUE_STRING) {
            break;
          }
          paramJsonParser = paramJsonParser.getText().trim();
          bool1 = bool2;
        } while ("true".equals(paramJsonParser));
        bool1 = bool2;
      } while ("True".equals(paramJsonParser));
      if (("false".equals(paramJsonParser)) || ("False".equals(paramJsonParser)) || (paramJsonParser.length() == 0)) {
        return false;
      }
      if (_hasTextualNull(paramJsonParser)) {
        return false;
      }
      throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "only \"true\" or \"false\" recognized");
      if ((localJsonToken != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      bool1 = _parseBooleanPrimitive(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'boolean' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
  
  protected Byte _parseByte(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Byte.valueOf(paramJsonParser.getByteValue());
    }
    Byte localByte;
    do
    {
      return (Byte)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (_hasTextualNull(paramJsonParser)) {
          return (Byte)getNullValue();
        }
        int i;
        try
        {
          if (paramJsonParser.length() == 0) {
            return (Byte)getEmptyValue();
          }
          i = NumberInput.parseInt(paramJsonParser);
          if ((i < -128) || (i > 255)) {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "overflow, value can not be represented as 8-bit value");
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Byte value");
        }
        return Byte.valueOf((byte)i);
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Byte)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localByte = _parseByte(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localByte);
  }
  
  protected Date _parseDate(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_NUMBER_INT) {
      localObject = new Date(paramJsonParser.getLongValue());
    }
    do
    {
      return (Date)localObject;
      if (localObject == JsonToken.VALUE_NULL) {
        return (Date)getNullValue();
      }
      if (localObject == JsonToken.VALUE_STRING)
      {
        localObject = null;
        try
        {
          paramJsonParser = paramJsonParser.getText().trim();
          localObject = paramJsonParser;
          if (paramJsonParser.length() == 0)
          {
            localObject = paramJsonParser;
            return (Date)getEmptyValue();
          }
          localObject = paramJsonParser;
          if (_hasTextualNull(paramJsonParser))
          {
            localObject = paramJsonParser;
            return (Date)getNullValue();
          }
          localObject = paramJsonParser;
          paramJsonParser = paramDeserializationContext.parseDate(paramJsonParser);
          return paramJsonParser;
        }
        catch (IllegalArgumentException paramJsonParser)
        {
          throw paramDeserializationContext.weirdStringException((String)localObject, _valueClass, "not a valid representation (error: " + paramJsonParser.getMessage() + ")");
        }
      }
      if ((localObject != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localObject = _parseDate(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'java.util.Date' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
  }
  
  protected final Double _parseDouble(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Double.valueOf(paramJsonParser.getDoubleValue());
    }
    Double localDouble;
    do
    {
      return (Double)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return (Double)getEmptyValue();
        }
        if (_hasTextualNull(paramJsonParser)) {
          return (Double)getNullValue();
        }
        switch (paramJsonParser.charAt(0))
        {
        }
        for (;;)
        {
          try
          {
            double d = parseDouble(paramJsonParser);
            return Double.valueOf(d);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Double value");
          }
          if (_isPosInf(paramJsonParser))
          {
            return Double.valueOf(Double.POSITIVE_INFINITY);
            if (_isNaN(paramJsonParser))
            {
              return Double.valueOf(NaN.0D);
              if (_isNegInf(paramJsonParser)) {
                return Double.valueOf(Double.NEGATIVE_INFINITY);
              }
            }
          }
        }
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Double)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localDouble = _parseDouble(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Double' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localDouble);
  }
  
  protected final double _parseDoublePrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    double d2 = 0.0D;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    double d1;
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      d1 = paramJsonParser.getDoubleValue();
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return d1;
            if (localJsonToken != JsonToken.VALUE_STRING) {
              break;
            }
            paramJsonParser = paramJsonParser.getText().trim();
            d1 = d2;
          } while (paramJsonParser.length() == 0);
          d1 = d2;
        } while (_hasTextualNull(paramJsonParser));
        switch (paramJsonParser.charAt(0))
        {
        }
        for (;;)
        {
          try
          {
            d1 = parseDouble(paramJsonParser);
            return d1;
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid double value");
          }
          if (_isPosInf(paramJsonParser))
          {
            return Double.POSITIVE_INFINITY;
            if (_isNaN(paramJsonParser))
            {
              return NaN.0D;
              if (_isNegInf(paramJsonParser)) {
                return Double.NEGATIVE_INFINITY;
              }
            }
          }
        }
        d1 = d2;
      } while (localIllegalArgumentException == JsonToken.VALUE_NULL);
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      d1 = _parseDoublePrimitive(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localIllegalArgumentException);
  }
  
  protected final Float _parseFloat(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Float.valueOf(paramJsonParser.getFloatValue());
    }
    Float localFloat;
    do
    {
      return (Float)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return (Float)getEmptyValue();
        }
        if (_hasTextualNull(paramJsonParser)) {
          return (Float)getNullValue();
        }
        switch (paramJsonParser.charAt(0))
        {
        }
        for (;;)
        {
          try
          {
            float f = Float.parseFloat(paramJsonParser);
            return Float.valueOf(f);
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Float value");
          }
          if (_isPosInf(paramJsonParser))
          {
            return Float.valueOf(Float.POSITIVE_INFINITY);
            if (_isNaN(paramJsonParser))
            {
              return Float.valueOf(NaN.0F);
              if (_isNegInf(paramJsonParser)) {
                return Float.valueOf(Float.NEGATIVE_INFINITY);
              }
            }
          }
        }
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Float)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localFloat = _parseFloat(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Byte' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localFloat);
  }
  
  protected final float _parseFloatPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    float f2 = 0.0F;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    float f1;
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      f1 = paramJsonParser.getFloatValue();
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return f1;
            if (localJsonToken != JsonToken.VALUE_STRING) {
              break;
            }
            paramJsonParser = paramJsonParser.getText().trim();
            f1 = f2;
          } while (paramJsonParser.length() == 0);
          f1 = f2;
        } while (_hasTextualNull(paramJsonParser));
        switch (paramJsonParser.charAt(0))
        {
        }
        for (;;)
        {
          try
          {
            f1 = Float.parseFloat(paramJsonParser);
            return f1;
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid float value");
          }
          if (_isPosInf(paramJsonParser))
          {
            return Float.POSITIVE_INFINITY;
            if (_isNaN(paramJsonParser))
            {
              return NaN.0F;
              if (_isNegInf(paramJsonParser)) {
                return Float.NEGATIVE_INFINITY;
              }
            }
          }
        }
        f1 = f2;
      } while (localIllegalArgumentException == JsonToken.VALUE_NULL);
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      f1 = _parseFloatPrimitive(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'float' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localIllegalArgumentException);
  }
  
  protected final int _parseIntPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    int j = 0;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    int i;
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      i = paramJsonParser.getIntValue();
    }
    label154:
    do
    {
      do
      {
        int k;
        do
        {
          do
          {
            return i;
            if (localJsonToken != JsonToken.VALUE_STRING) {
              break;
            }
            paramJsonParser = paramJsonParser.getText().trim();
            i = j;
          } while (_hasTextualNull(paramJsonParser));
          long l;
          try
          {
            k = paramJsonParser.length();
            if (k <= 9) {
              break label154;
            }
            l = Long.parseLong(paramJsonParser);
            if ((l < -2147483648L) || (l > 2147483647L)) {
              throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "Overflow: numeric value (" + paramJsonParser + ") out of range of int (-2147483648 - 2147483647" + ")");
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid int value");
          }
          return (int)l;
          i = j;
        } while (k == 0);
        i = NumberInput.parseInt(paramJsonParser);
        return i;
        i = j;
      } while (localIllegalArgumentException == JsonToken.VALUE_NULL);
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'int' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localIllegalArgumentException);
  }
  
  protected final Integer _parseInteger(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Integer.valueOf(paramJsonParser.getIntValue());
    }
    label164:
    Integer localInteger;
    do
    {
      return (Integer)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        long l;
        try
        {
          i = paramJsonParser.length();
          if (_hasTextualNull(paramJsonParser)) {
            return (Integer)getNullValue();
          }
          if (i <= 9) {
            break label164;
          }
          l = Long.parseLong(paramJsonParser);
          if ((l < -2147483648L) || (l > 2147483647L)) {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "Overflow: numeric value (" + paramJsonParser + ") out of range of Integer (-2147483648 - 2147483647" + ")");
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Integer value");
        }
        int i = (int)l;
        return Integer.valueOf(i);
        if (i == 0) {
          return (Integer)getEmptyValue();
        }
        i = NumberInput.parseInt(paramJsonParser);
        return Integer.valueOf(i);
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Integer)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localInteger = _parseInteger(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Integer' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localInteger);
  }
  
  protected final Long _parseLong(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Long.valueOf(paramJsonParser.getLongValue());
    }
    Long localLong;
    do
    {
      return (Long)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return (Long)getEmptyValue();
        }
        if (_hasTextualNull(paramJsonParser)) {
          return (Long)getNullValue();
        }
        try
        {
          long l = NumberInput.parseLong(paramJsonParser);
          return Long.valueOf(l);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Long value");
        }
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Long)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localLong = _parseLong(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Long' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localLong);
  }
  
  protected final long _parseLongPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    long l2 = 0L;
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    long l1;
    if ((localJsonToken == JsonToken.VALUE_NUMBER_INT) || (localJsonToken == JsonToken.VALUE_NUMBER_FLOAT)) {
      l1 = paramJsonParser.getLongValue();
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return l1;
            if (localJsonToken != JsonToken.VALUE_STRING) {
              break;
            }
            paramJsonParser = paramJsonParser.getText().trim();
            l1 = l2;
          } while (paramJsonParser.length() == 0);
          l1 = l2;
        } while (_hasTextualNull(paramJsonParser));
        try
        {
          l1 = NumberInput.parseLong(paramJsonParser);
          return l1;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid long value");
        }
        l1 = l2;
      } while (localIllegalArgumentException == JsonToken.VALUE_NULL);
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      l1 = _parseLongPrimitive(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'long' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localIllegalArgumentException);
  }
  
  protected Short _parseShort(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = Short.valueOf(paramJsonParser.getShortValue());
    }
    Short localShort;
    do
    {
      return (Short)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        int i;
        try
        {
          if (paramJsonParser.length() == 0) {
            return (Short)getEmptyValue();
          }
          if (_hasTextualNull(paramJsonParser)) {
            return (Short)getNullValue();
          }
          i = NumberInput.parseInt(paramJsonParser);
          if ((i < 32768) || (i > 32767)) {
            throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "overflow, value can not be represented as 16-bit value");
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid Short value");
        }
        return Short.valueOf((short)i);
      }
      if (localIllegalArgumentException == JsonToken.VALUE_NULL) {
        return (Short)getNullValue();
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localShort = _parseShort(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'Short' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localShort);
  }
  
  protected final short _parseShortPrimitive(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    int i = _parseIntPrimitive(paramJsonParser, paramDeserializationContext);
    if ((i < 32768) || (i > 32767)) {
      throw paramDeserializationContext.weirdStringException(String.valueOf(i), _valueClass, "overflow, value can not be represented as 16-bit value");
    }
    return (short)i;
  }
  
  protected final String _parseString(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_STRING) {
      localObject = paramJsonParser.getText();
    }
    String str;
    do
    {
      do
      {
        return (String)localObject;
        if ((localObject != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
          break;
        }
        paramJsonParser.nextToken();
        localObject = _parseString(paramJsonParser, paramDeserializationContext);
      } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'String' value but there was more than a single value in the array");
      str = paramJsonParser.getValueAsString();
      localObject = str;
    } while (str != null);
    throw paramDeserializationContext.mappingException(String.class, paramJsonParser.getCurrentToken());
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
  }
  
  protected JsonDeserializer<?> findConvertingContentDeserializer(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty, JsonDeserializer<?> paramJsonDeserializer)
  {
    Object localObject2 = paramDeserializationContext.getAnnotationIntrospector();
    Object localObject1 = paramJsonDeserializer;
    if (localObject2 != null)
    {
      localObject1 = paramJsonDeserializer;
      if (paramBeanProperty != null)
      {
        Object localObject3 = paramBeanProperty.getMember();
        localObject1 = paramJsonDeserializer;
        if (localObject3 != null)
        {
          localObject2 = ((AnnotationIntrospector)localObject2).findDeserializationContentConverter((AnnotatedMember)localObject3);
          localObject1 = paramJsonDeserializer;
          if (localObject2 != null)
          {
            localObject2 = paramDeserializationContext.converterInstance(paramBeanProperty.getMember(), localObject2);
            localObject3 = ((Converter)localObject2).getInputType(paramDeserializationContext.getTypeFactory());
            localObject1 = paramJsonDeserializer;
            if (paramJsonDeserializer == null) {
              localObject1 = paramDeserializationContext.findContextualValueDeserializer((JavaType)localObject3, paramBeanProperty);
            }
            localObject1 = new StdDelegatingDeserializer((Converter)localObject2, (JavaType)localObject3, (JsonDeserializer)localObject1);
          }
        }
      }
    }
    return (JsonDeserializer<?>)localObject1;
  }
  
  protected JsonDeserializer<Object> findDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanProperty paramBeanProperty)
  {
    return paramDeserializationContext.findContextualValueDeserializer(paramJavaType, paramBeanProperty);
  }
  
  @Deprecated
  public final Class<?> getValueClass()
  {
    return _valueClass;
  }
  
  public JavaType getValueType()
  {
    return null;
  }
  
  protected void handleUnknownProperty(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Object paramObject, String paramString)
  {
    Object localObject = paramObject;
    if (paramObject == null) {
      localObject = handledType();
    }
    if (paramDeserializationContext.handleUnknownProperty(paramJsonParser, this, localObject, paramString)) {
      return;
    }
    paramDeserializationContext.reportUnknownProperty(localObject, paramString, this);
    paramJsonParser.skipChildren();
  }
  
  public Class<?> handledType()
  {
    return _valueClass;
  }
  
  protected boolean isDefaultDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    return ClassUtil.isJacksonStdImpl(paramJsonDeserializer);
  }
  
  protected boolean isDefaultKeyDeserializer(KeyDeserializer paramKeyDeserializer)
  {
    return ClassUtil.isJacksonStdImpl(paramKeyDeserializer);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.StdDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */