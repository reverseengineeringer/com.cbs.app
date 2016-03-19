package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;

@JacksonStdImpl
public class NumberDeserializers$CharacterDeserializer
  extends NumberDeserializers.PrimitiveOrWrapperDeserializer<Character>
{
  static final CharacterDeserializer primitiveInstance = new CharacterDeserializer(Character.class, Character.valueOf('\000'));
  private static final long serialVersionUID = 1L;
  static final CharacterDeserializer wrapperInstance = new CharacterDeserializer(Character.TYPE, null);
  
  public NumberDeserializers$CharacterDeserializer(Class<Character> paramClass, Character paramCharacter)
  {
    super(paramClass, paramCharacter);
  }
  
  public Character deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = paramJsonParser.getCurrentToken();
    if (localObject == JsonToken.VALUE_NUMBER_INT)
    {
      int i = paramJsonParser.getIntValue();
      if ((i >= 0) && (i <= 65535)) {
        localObject = Character.valueOf((char)i);
      }
    }
    else
    {
      do
      {
        return (Character)localObject;
        if (localObject == JsonToken.VALUE_STRING)
        {
          paramJsonParser = paramJsonParser.getText();
          if (paramJsonParser.length() == 1) {
            return Character.valueOf(paramJsonParser.charAt(0));
          }
          if (paramJsonParser.length() != 0) {
            break;
          }
          return (Character)getEmptyValue();
        }
        if ((localObject != JsonToken.START_ARRAY) || (!paramDeserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS))) {
          break;
        }
        paramJsonParser.nextToken();
        localObject = deserialize(paramJsonParser, paramDeserializationContext);
      } while (paramJsonParser.nextToken() == JsonToken.END_ARRAY);
      throw paramDeserializationContext.wrongTokenException(paramJsonParser, JsonToken.END_ARRAY, "Attempted to unwrap single value array for single '" + _valueClass.getName() + "' value but there was more than a single value in the array");
    }
    throw paramDeserializationContext.mappingException(_valueClass, (JsonToken)localObject);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.NumberDeserializers.CharacterDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */