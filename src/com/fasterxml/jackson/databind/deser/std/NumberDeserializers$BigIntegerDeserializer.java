package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import java.math.BigDecimal;
import java.math.BigInteger;

@JacksonStdImpl
public class NumberDeserializers$BigIntegerDeserializer
  extends StdScalarDeserializer<BigInteger>
{
  public static final BigIntegerDeserializer instance = new BigIntegerDeserializer();
  
  public NumberDeserializers$BigIntegerDeserializer()
  {
    super(BigInteger.class);
  }
  
  public BigInteger deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_NUMBER_INT) {
      switch (NumberDeserializers.1.$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType[paramJsonParser.getNumberType().ordinal()])
      {
      }
    }
    do
    {
      paramJsonParser = paramJsonParser.getText().trim();
      if (paramJsonParser.length() != 0) {
        break;
      }
      localObject = null;
      do
      {
        return (BigInteger)localObject;
        return BigInteger.valueOf(paramJsonParser.getLongValue());
        if (localObject == JsonToken.VALUE_NUMBER_FLOAT) {
          return paramJsonParser.getDecimalValue().toBigInteger();
        }
        if ((localObject != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
          break;
        }
        paramJsonParser.nextToken();
        localObject = deserialize(paramJsonParser, paramDeserializationContext);
      } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'BigInteger' value but there was more than a single value in the array");
    } while (localObject == JsonToken.VALUE_STRING);
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
    try
    {
      localObject = new BigInteger(paramJsonParser);
      return (BigInteger)localObject;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw paramDeserializationContext.weirdStringException(paramJsonParser, _valueClass, "not a valid representation");
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.BigIntegerDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */