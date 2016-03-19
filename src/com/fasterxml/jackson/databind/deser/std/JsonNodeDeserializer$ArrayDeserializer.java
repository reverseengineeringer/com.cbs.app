package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.node.ArrayNode;

final class JsonNodeDeserializer$ArrayDeserializer
  extends BaseNodeDeserializer<ArrayNode>
{
  protected static final ArrayDeserializer _instance = new ArrayDeserializer();
  private static final long serialVersionUID = 1L;
  
  protected JsonNodeDeserializer$ArrayDeserializer()
  {
    super(ArrayNode.class);
  }
  
  public static ArrayDeserializer getInstance()
  {
    return _instance;
  }
  
  public final ArrayNode deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (paramJsonParser.isExpectedStartArrayToken()) {
      return deserializeArray(paramJsonParser, paramDeserializationContext, paramDeserializationContext.getNodeFactory());
    }
    throw paramDeserializationContext.mappingException(ArrayNode.class);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.JsonNodeDeserializer.ArrayDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */