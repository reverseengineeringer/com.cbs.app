package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.type.ResolvedType;
import com.fasterxml.jackson.core.type.TypeReference;
import java.util.Iterator;

public abstract class ObjectCodec
  extends TreeCodec
  implements Versioned
{
  public abstract TreeNode createArrayNode();
  
  public abstract TreeNode createObjectNode();
  
  public JsonFactory getFactory()
  {
    return getJsonFactory();
  }
  
  @Deprecated
  public JsonFactory getJsonFactory()
  {
    return getFactory();
  }
  
  public abstract <T extends TreeNode> T readTree(JsonParser paramJsonParser);
  
  public abstract <T> T readValue(JsonParser paramJsonParser, ResolvedType paramResolvedType);
  
  public abstract <T> T readValue(JsonParser paramJsonParser, TypeReference<?> paramTypeReference);
  
  public abstract <T> T readValue(JsonParser paramJsonParser, Class<T> paramClass);
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, ResolvedType paramResolvedType);
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, TypeReference<?> paramTypeReference);
  
  public abstract <T> Iterator<T> readValues(JsonParser paramJsonParser, Class<T> paramClass);
  
  public abstract JsonParser treeAsTokens(TreeNode paramTreeNode);
  
  public abstract <T> T treeToValue(TreeNode paramTreeNode, Class<T> paramClass);
  
  public Version version()
  {
    return Version.unknownVersion();
  }
  
  public abstract void writeTree(JsonGenerator paramJsonGenerator, TreeNode paramTreeNode);
  
  public abstract void writeValue(JsonGenerator paramJsonGenerator, Object paramObject);
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.core.ObjectCodec
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */