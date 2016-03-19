package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;

public final class NodeCursor$RootCursor
  extends NodeCursor
{
  protected boolean _done = false;
  protected JsonNode _node;
  
  public NodeCursor$RootCursor(JsonNode paramJsonNode, NodeCursor paramNodeCursor)
  {
    super(0, paramNodeCursor);
    _node = paramJsonNode;
  }
  
  public final boolean currentHasChildren()
  {
    return false;
  }
  
  public final JsonNode currentNode()
  {
    return _node;
  }
  
  public final JsonToken endToken()
  {
    return null;
  }
  
  public final JsonToken nextToken()
  {
    if (!_done)
    {
      _done = true;
      return _node.asToken();
    }
    _node = null;
    return null;
  }
  
  public final JsonToken nextValue()
  {
    return nextToken();
  }
  
  public final void overrideCurrentName(String paramString) {}
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.node.NodeCursor.RootCursor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */