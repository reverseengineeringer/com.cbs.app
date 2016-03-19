package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;

public final class MissingNode
  extends ValueNode
{
  private static final MissingNode instance = new MissingNode();
  
  public static MissingNode getInstance()
  {
    return instance;
  }
  
  public final String asText()
  {
    return "";
  }
  
  public final String asText(String paramString)
  {
    return paramString;
  }
  
  public final JsonToken asToken()
  {
    return JsonToken.NOT_AVAILABLE;
  }
  
  public final <T extends JsonNode> T deepCopy()
  {
    return this;
  }
  
  public final boolean equals(Object paramObject)
  {
    return paramObject == this;
  }
  
  public final JsonNodeType getNodeType()
  {
    return JsonNodeType.MISSING;
  }
  
  public final void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeNull();
  }
  
  public final void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramJsonGenerator.writeNull();
  }
  
  public final String toString()
  {
    return "";
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.node.MissingNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */