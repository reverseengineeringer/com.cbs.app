package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;

@JacksonStdImpl
public final class StringArrayDeserializer
  extends StdDeserializer<String[]>
  implements ContextualDeserializer
{
  public static final StringArrayDeserializer instance = new StringArrayDeserializer();
  private static final long serialVersionUID = 1L;
  protected JsonDeserializer<String> _elementDeserializer;
  
  public StringArrayDeserializer()
  {
    super(String[].class);
    _elementDeserializer = null;
  }
  
  protected StringArrayDeserializer(JsonDeserializer<?> paramJsonDeserializer)
  {
    super(String[].class);
    _elementDeserializer = paramJsonDeserializer;
  }
  
  private final String[] handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    Object localObject = null;
    if (!paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY))
    {
      if ((paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING) && (paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT)) && (paramJsonParser.getText().length() == 0)) {
        return null;
      }
      throw paramDeserializationContext.mappingException(_valueClass);
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {}
    for (paramJsonParser = (JsonParser)localObject;; paramJsonParser = _parseString(paramJsonParser, paramDeserializationContext)) {
      return new String[] { paramJsonParser };
    }
  }
  
  protected final String[] _deserializeCustom(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object[] arrayOfObject = localObjectBuffer.resetAndStart();
    JsonDeserializer localJsonDeserializer = _elementDeserializer;
    int i = 0;
    label107:
    label122:
    label137:
    label162:
    for (;;)
    {
      Object localObject;
      try
      {
        if (paramJsonParser.nextTextValue() != null) {
          break label122;
        }
        localObject = paramJsonParser.getCurrentToken();
        if (localObject == JsonToken.END_ARRAY) {
          break label137;
        }
        if (localObject != JsonToken.VALUE_NULL) {
          break label107;
        }
        localObject = (String)localJsonDeserializer.getNullValue();
      }
      catch (Exception paramJsonParser)
      {
        int j;
        throw JsonMappingException.wrapWithPath(paramJsonParser, String.class, i);
      }
      if (i >= arrayOfObject.length)
      {
        arrayOfObject = localObjectBuffer.appendCompletedChunk(arrayOfObject);
        i = 0;
        j = i + 1;
        arrayOfObject[i] = localObject;
        i = j;
        continue;
        localObject = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        break label162;
        localObject = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
        continue;
        paramJsonParser = (String[])localObjectBuffer.completeAndClearBuffer(arrayOfObject, i, String.class);
        paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
        return paramJsonParser;
      }
      else {}
    }
  }
  
  public final JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
  {
    JsonDeserializer localJsonDeserializer = findConvertingContentDeserializer(paramDeserializationContext, paramBeanProperty, _elementDeserializer);
    JavaType localJavaType = paramDeserializationContext.constructType(String.class);
    if (localJsonDeserializer == null) {}
    for (paramDeserializationContext = paramDeserializationContext.findContextualValueDeserializer(localJavaType, paramBeanProperty);; paramDeserializationContext = paramDeserializationContext.handleSecondaryContextualization(localJsonDeserializer, paramBeanProperty, localJavaType))
    {
      paramBeanProperty = paramDeserializationContext;
      if (paramDeserializationContext != null)
      {
        paramBeanProperty = paramDeserializationContext;
        if (isDefaultDeserializer(paramDeserializationContext)) {
          paramBeanProperty = null;
        }
      }
      paramDeserializationContext = this;
      if (_elementDeserializer != paramBeanProperty) {
        paramDeserializationContext = new StringArrayDeserializer(paramBeanProperty);
      }
      return paramDeserializationContext;
    }
  }
  
  public final String[] deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (!paramJsonParser.isExpectedStartArrayToken()) {
      return handleNonArray(paramJsonParser, paramDeserializationContext);
    }
    if (_elementDeserializer != null) {
      return _deserializeCustom(paramJsonParser, paramDeserializationContext);
    }
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object localObject1 = localObjectBuffer.resetAndStart();
    int i = 0;
    label160:
    label163:
    for (;;)
    {
      try
      {
        String str = paramJsonParser.nextTextValue();
        if (str != null) {
          break label163;
        }
        Object localObject2 = paramJsonParser.getCurrentToken();
        if (localObject2 != JsonToken.END_ARRAY)
        {
          if (localObject2 == JsonToken.VALUE_NULL) {
            break label163;
          }
          str = _parseString(paramJsonParser, paramDeserializationContext);
          if (i < localObject1.length) {
            break label160;
          }
          localObject2 = localObjectBuffer.appendCompletedChunk((Object[])localObject1);
          i = 0;
          localObject1 = localObject2;
          int j = i + 1;
          localObject1[i] = str;
          i = j;
          continue;
        }
        paramJsonParser = (String[])localObjectBuffer.completeAndClearBuffer((Object[])localObject1, i, String.class);
      }
      catch (Exception paramJsonParser)
      {
        throw JsonMappingException.wrapWithPath(paramJsonParser, localObject1, i + localObjectBuffer.bufferedSize());
      }
      paramDeserializationContext.returnObjectBuffer(localObjectBuffer);
      return paramJsonParser;
    }
  }
  
  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.StringArrayDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */