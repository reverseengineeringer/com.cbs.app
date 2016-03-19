package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.math.BigDecimal;

@JacksonStdImpl
public class NumberDeserializers$BigDecimalDeserializer
  extends StdScalarDeserializer<BigDecimal>
{
  public static final BigDecimalDeserializer instance = new BigDecimalDeserializer();
  
  public NumberDeserializers$BigDecimalDeserializer()
  {
    super(BigDecimal.class);
  }
  
  public BigDecimal deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject == JsonToken.VALUE_NUMBER_INT) || (localObject == JsonToken.VALUE_NUMBER_FLOAT)) {
      localObject = paramJsonParser.getDecimalValue();
    }
    BigDecimal localBigDecimal;
    do
    {
      return (BigDecimal)localObject;
      if (localObject == JsonToken.VALUE_STRING)
      {
        paramJsonParser = paramJsonParser.getText().trim();
        if (paramJsonParser.length() == 0) {
          return null;
        }
        try
        {
          localObject = new BigDecimal(paramJsonParser);
          return (BigDecimal)localObject;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid representation");
        }
      }
      if ((localIllegalArgumentException != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
        break;
      }
      paramJsonParser.nextToken();
      localBigDecimal = deserialize(paramJsonParser, paramDeserializationContext);
    } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
    throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'BigDecimal' value but there was more than a single value in the array");
    throw paramDeserializationContext.mappingException(_valueClass, localBigDecimal);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.BigDecimalDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */