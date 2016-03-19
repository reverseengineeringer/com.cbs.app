package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.SerializerProvider;

public final class NullNode
  extends ValueNode
{
  public static final NullNode instance = new NullNode();
  
  public static NullNode getInstance()
  {
    return instance;
  }
  
  public final String asText()
  {
    return "null";
  }
  
  public final String asText(String paramString)
  {
    return paramString;
  }
  
  public final JsonToken asToken()
  {
    return JsonToken.VALUE_NULL;
  }
  
  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public final JsonNodeType getNodeType()
  {
    return JsonNodeType.NULL;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.node.NullNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */