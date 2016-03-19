package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ObjectBuffer;
import java.util.ArrayList;
import java.util.LinkedHashMap;

@JacksonStdImpl
public class UntypedObjectDeserializer$Vanilla
  extends StdDeserializer<Object>
{
  private static final long serialVersionUID = 1L;
  public static final Vanilla std = new Vanilla();
  
  public UntypedObjectDeserializer$Vanilla()
  {
    super(Object.class);
  }
  
  public Object deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    switch (paramJsonParser.getCurrentTokenId())
    {
    case 2: 
    case 4: 
    default: 
      throw paramDeserializationContext.mappingException(Object.class);
    case 1: 
      if (paramJsonParser.nextToken() == JsonToken.END_OBJECT) {
        return new LinkedHashMap(2);
      }
    case 5: 
      return mapObject(paramJsonParser, paramDeserializationContext);
    case 3: 
      if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
      {
        if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
          return UntypedObjectDeserializer.NO_OBJECTS;
        }
        return new ArrayList(2);
      }
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_JAVA_ARRAY_FOR_JSON_ARRAY)) {
        return mapArrayToArray(paramJsonParser, paramDeserializationContext);
      }
      return mapArray(paramJsonParser, paramDeserializationContext);
    case 12: 
      return paramJsonParser.getEmbeddedObject();
    case 6: 
      return paramJsonParser.getText();
    case 7: 
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
        return paramJsonParser.getBigIntegerValue();
      }
      return paramJsonParser.getNumberValue();
    case 8: 
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
        return paramJsonParser.getDecimalValue();
      }
      return Double.valueOf(paramJsonParser.getDoubleValue());
    case 9: 
      return Boolean.TRUE;
    case 10: 
      return Boolean.FALSE;
    }
    return null;
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    switch (paramJsonParser.getCurrentTokenId())
    {
    case 2: 
    case 4: 
    default: 
      throw paramDeserializationContext.mappingException(Object.class);
    case 1: 
    case 3: 
    case 5: 
      return paramTypeDeserializer.deserializeTypedFromAny(paramJsonParser, paramDeserializationContext);
    case 6: 
      return paramJsonParser.getText();
    case 7: 
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_INTEGER_FOR_INTS)) {
        return paramJsonParser.getBigIntegerValue();
      }
      return paramJsonParser.getNumberValue();
    case 8: 
      if (paramDeserializationContext.isEnabled(DeserializationFeature.USE_BIG_DECIMAL_FOR_FLOATS)) {
        return paramJsonParser.getDecimalValue();
      }
      return Double.valueOf(paramJsonParser.getDoubleValue());
    case 9: 
      return Boolean.TRUE;
    case 10: 
      return Boolean.FALSE;
    case 12: 
      return paramJsonParser.getEmbeddedObject();
    }
    return null;
  }
  
  protected Object mapArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    int i = 2;
    Object localObject1 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
    {
      paramJsonParser = new ArrayList(2);
      paramJsonParser.add(localObject1);
      return paramJsonParser;
    }
    Object localObject3 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() == JsonToken.END_ARRAY)
    {
      paramJsonParser = new ArrayList(2);
      paramJsonParser.add(localObject1);
      paramJsonParser.add(localObject3);
      return paramJsonParser;
    }
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object localObject2 = localObjectBuffer.resetAndStart();
    localObject2[0] = localObject1;
    localObject2[1] = localObject3;
    int j = 2;
    localObject3 = deserialize(paramJsonParser, paramDeserializationContext);
    int k = j + 1;
    if (i >= localObject2.length)
    {
      localObject1 = localObjectBuffer.appendCompletedChunk((Object[])localObject2);
      i = 0;
    }
    for (;;)
    {
      int m = i + 1;
      localObject1[i] = localObject3;
      i = m;
      localObject2 = localObject1;
      j = k;
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
        break;
      }
      paramJsonParser = new ArrayList(k);
      localObjectBuffer.completeAndClearBuffer((Object[])localObject1, m, paramJsonParser);
      return paramJsonParser;
      localObject1 = localObject2;
    }
  }
  
  protected Object[] mapArrayToArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    ObjectBuffer localObjectBuffer = paramDeserializationContext.leaseObjectBuffer();
    Object localObject1 = localObjectBuffer.resetAndStart();
    int i = 0;
    Object localObject3 = deserialize(paramJsonParser, paramDeserializationContext);
    Object localObject2;
    if (i >= localObject1.length)
    {
      localObject2 = localObjectBuffer.appendCompletedChunk((Object[])localObject1);
      i = 0;
    }
    for (;;)
    {
      int j = i + 1;
      localObject2[i] = localObject3;
      i = j;
      localObject1 = localObject2;
      if (paramJsonParser.nextToken() != JsonToken.END_ARRAY) {
        break;
      }
      return localObjectBuffer.completeAndClearBuffer((Object[])localObject2, j);
      localObject2 = localObject1;
    }
  }
  
  protected Object mapObject(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    String str1 = paramJsonParser.getText();
    paramJsonParser.nextToken();
    Object localObject1 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() == JsonToken.END_OBJECT)
    {
      paramJsonParser = new LinkedHashMap(2);
      paramJsonParser.put(str1, localObject1);
      return paramJsonParser;
    }
    String str2 = paramJsonParser.getText();
    paramJsonParser.nextToken();
    Object localObject2 = deserialize(paramJsonParser, paramDeserializationContext);
    if (paramJsonParser.nextToken() == JsonToken.END_OBJECT)
    {
      paramJsonParser = new LinkedHashMap(4);
      paramJsonParser.put(str1, localObject1);
      paramJsonParser.put(str2, localObject2);
      return paramJsonParser;
    }
    LinkedHashMap localLinkedHashMap = new LinkedHashMap();
    localLinkedHashMap.put(str1, localObject1);
    localLinkedHashMap.put(str2, localObject2);
    do
    {
      str1 = paramJsonParser.getText();
      paramJsonParser.nextToken();
      localLinkedHashMap.put(str1, deserialize(paramJsonParser, paramDeserializationContext));
    } while (paramJsonParser.nextToken() != JsonToken.END_OBJECT);
    return localLinkedHashMap;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.UntypedObjectDeserializer.Vanilla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */