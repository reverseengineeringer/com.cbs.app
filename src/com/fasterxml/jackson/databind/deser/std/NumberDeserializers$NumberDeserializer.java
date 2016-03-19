package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.math.BigDecimal;
import java.math.BigInteger;

@JacksonStdImpl
public class NumberDeserializers$NumberDeserializer
  extends StdScalarDeserializer<Number>
{
  public static final NumberDeserializer instance = new NumberDeserializer();
  
  public NumberDeserializers$NumberDeserializer()
  {
    super(Number.class);
  }
  
  public Number deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_NUMBER_INT) {
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
        localObject = paramJsonParser.getBigIntegerValue();
      }
    }
    label216:
    Number localNumber;
    do
    {
      return (Number)localObject;
      return paramJsonParser.getNumberValue();
      if (localObject == JsonToken.VALUE_NUMBER_FLOAT)
      {
        if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
          return paramJsonParser.getDecimalValue();
        }
        return Double.valueOf(paramJsonParser.getDoubleValue());
      }
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return (Number)getEmptyValue();
        }
        if (_hasTextualNull(paramJsonParser)) {
          return (Number)getNullValue();
        }
        if (_isPosInf(paramJsonParser)) {
          return Double.valueOf(Double.POSITIVE_INFINITY);
        }
        if (_isNegInf(paramJsonParser)) {
          return Double.valueOf(Double.NEGATIVE_INFINITY);
        }
        if (_isNaN(paramJsonParser)) {
          return Double.valueOf(NaN.0D);
        }
        try
        {
          if (paramJsonParser.indexOf('.') < 0) {
            break label216;
          }
          if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS))
          {
            localObject = new BigDecimal(paramJsonParser);
            return (Number)localObject;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid number");
        }
        return new Double(paramJsonParser);
        if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
          return new BigInteger(paramJsonParser);
        }
        long l = Long.parseLong(paramJsonParser);
        if ((l <= 2147483647L) && (l >= -2147483648L)) {
          return Integer.valueOf((int)l);
        }
        return Long.valueOf(l);
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localNumber = deserialize(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + _valueClass.getName() + "' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localNumber);
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    switch (NumberDeserializers.1.$SwitchMap$com$fasterxml$jackson$core$JsonToken[paramJsonParser.getCurrentToken().ordinal()])
    {
    default: 
      return paramTypeDeserializer.deserializeTypedFromScalar(paramJsonParser, paramDeserializationContext);
    }
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.NumberDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */