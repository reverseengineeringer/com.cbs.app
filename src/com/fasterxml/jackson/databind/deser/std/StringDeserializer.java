package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.Base64Variants;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;

@JacksonStdImpl
public final class StringDeserializer
  extends StdScalarDeserializer<String>
{
  public static final StringDeserializer instance = new StringDeserializer();
  private static final long serialVersionUID = 1L;
  
  public StringDeserializer()
  {
    super(String.class);
  }
  
  public final String deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    Object localObject;
    if (localJsonToken == JsonToken.VALUE_STRING) {
      localObject = paramJsonParser.getText();
    }
    do
    {
      do
      {
        return (String)localObject;
        if ((localJsonToken != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
          break;
        }
        paramJsonParser.nextToken();
        localObject = _parseString(paramJsonParser, paramDeserializationContext);
      } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single 'String' value but there was more than a single value in the array");
      if (localJsonToken == JsonToken.VALUE_EMBEDDED_OBJECT)
      {
        paramJsonParser = paramJsonParser.getEmbeddedObject();
        if (paramJsonParser == null) {
          return null;
        }
        if ((paramJsonParser instanceof byte[])) {
          return Base64Variants.getDefaultVariant().encode((byte[])paramJsonParser, false);
        }
        return paramJsonParser.toString();
      }
      paramJsonParser = paramJsonParser.getValueAsString();
      localObject = paramJsonParser;
    } while (paramJsonParser != null);
    throw paramDeserializationContext.mappingException(_valueClass, localJsonToken);
  }
  
  public final String deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return deserialize(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.StringDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */