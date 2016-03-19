package com.fasterxml.jackson.databind.node;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonPointer;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ObjectNode
  extends ContainerNode<ObjectNode>
{
  protected final Map<String, JsonNode> _children;
  
  public ObjectNode(JsonNodeFactory paramJsonNodeFactory)
  {
    super(paramJsonNodeFactory);
    _children = new LinkedHashMap();
  }
  
  public ObjectNode(JsonNodeFactory paramJsonNodeFactory, Map<String, JsonNode> paramMap)
  {
    super(paramJsonNodeFactory);
    _children = paramMap;
  }
  
  protected JsonNode _at(JsonPointer paramJsonPointer)
  {
    return get(paramJsonPointer.getMatchingProperty());
  }
  
  protected boolean _childrenEqual(ObjectNode paramObjectNode)
  {
    return _children.equals(_children);
  }
  
  protected ObjectNode _put(String paramString, JsonNode paramJsonNode)
  {
    _children.put(paramString, paramJsonNode);
    return this;
  }
  
  public JsonToken asToken()
  {
    return JsonToken.START_OBJECT;
  }
  
  public ObjectNode deepCopy()
  {
    ObjectNode localObjectNode = new ObjectNode(_nodeFactory);
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      _children.put(localEntry.getKey(), ((JsonNode)localEntry.getValue()).deepCopy());
    }
    return localObjectNode;
  }
  
  public Iterator<JsonNode> elements()
  {
    return _children.values().iterator();
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (!(paramObject instanceof ObjectNode));
    return _childrenEqual((ObjectNode)paramObject);
  }
  
  public Iterator<String> fieldNames()
  {
    return _children.keySet().iterator();
  }
  
  public Iterator<Map.Entry<String, JsonNode>> fields()
  {
    return _children.entrySet().iterator();
  }
  
  public ObjectNode findParent(String paramString)
  {
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if (paramString.equals(((Map.Entry)localObject).getKey())) {
        return this;
      }
      localObject = ((JsonNode)((Map.Entry)localObject).getValue()).findParent(paramString);
      if (localObject != null) {
        return (ObjectNode)localObject;
      }
    }
    return null;
  }
  
  public List<JsonNode> findParents(String paramString, List<JsonNode> paramList)
  {
    Iterator localIterator = _children.entrySet().iterator();
    Map.Entry localEntry;
    if (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if (paramString.equals(localEntry.getKey()))
      {
        if (paramList != null) {
          break label93;
        }
        paramList = new ArrayList();
      }
    }
    label93:
    for (;;)
    {
      paramList.add(this);
      break;
      paramList = ((JsonNode)localEntry.getValue()).findParents(paramString, paramList);
      break;
      return paramList;
    }
  }
  
  public JsonNode findValue(String paramString)
  {
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      if (paramString.equals(((Map.Entry)localObject).getKey())) {
        return (JsonNode)((Map.Entry)localObject).getValue();
      }
      localObject = ((JsonNode)((Map.Entry)localObject).getValue()).findValue(paramString);
      if (localObject != null) {
        return (JsonNode)localObject;
      }
    }
    return null;
  }
  
  public List<JsonNode> findValues(String paramString, List<JsonNode> paramList)
  {
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.equals(localEntry.getKey()))
      {
        Object localObject = paramList;
        if (paramList == null) {
          localObject = new ArrayList();
        }
        ((List)localObject).add(localEntry.getValue());
        paramList = (List<JsonNode>)localObject;
      }
      else
      {
        paramList = ((JsonNode)localEntry.getValue()).findValues(paramString, paramList);
      }
    }
    return paramList;
  }
  
  public List<String> findValuesAsText(String paramString, List<String> paramList)
  {
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (paramString.equals(localEntry.getKey()))
      {
        Object localObject = paramList;
        if (paramList == null) {
          localObject = new ArrayList();
        }
        ((List)localObject).add(((JsonNode)localEntry.getValue()).asText());
        paramList = (List<String>)localObject;
      }
      else
      {
        paramList = ((JsonNode)localEntry.getValue()).findValuesAsText(paramString, paramList);
      }
    }
    return paramList;
  }
  
  public JsonNode get(int paramInt)
  {
    return null;
  }
  
  public JsonNode get(String paramString)
  {
    return (JsonNode)_children.get(paramString);
  }
  
  public JsonNodeType getNodeType()
  {
    return JsonNodeType.OBJECT;
  }
  
  public int hashCode()
  {
    return _children.hashCode();
  }
  
  public JsonNode path(int paramInt)
  {
    return MissingNode.getInstance();
  }
  
  public JsonNode path(String paramString)
  {
    paramString = (JsonNode)_children.get(paramString);
    if (paramString != null) {
      return paramString;
    }
    return MissingNode.getInstance();
  }
  
  @Deprecated
  public JsonNode put(String paramString, JsonNode paramJsonNode)
  {
    Object localObject = paramJsonNode;
    if (paramJsonNode == null) {
      localObject = nullNode();
    }
    return (JsonNode)_children.put(paramString, localObject);
  }
  
  public ObjectNode put(String paramString, double paramDouble)
  {
    return _put(paramString, numberNode(paramDouble));
  }
  
  public ObjectNode put(String paramString, float paramFloat)
  {
    return _put(paramString, numberNode(paramFloat));
  }
  
  public ObjectNode put(String paramString, int paramInt)
  {
    return _put(paramString, numberNode(paramInt));
  }
  
  public ObjectNode put(String paramString, long paramLong)
  {
    return _put(paramString, numberNode(paramLong));
  }
  
  public ObjectNode put(String paramString, Boolean paramBoolean)
  {
    if (paramBoolean == null) {}
    for (paramBoolean = nullNode();; paramBoolean = booleanNode(paramBoolean.booleanValue())) {
      return _put(paramString, paramBoolean);
    }
  }
  
  public ObjectNode put(String paramString, Double paramDouble)
  {
    if (paramDouble == null) {}
    for (paramDouble = nullNode();; paramDouble = numberNode(paramDouble.doubleValue())) {
      return _put(paramString, paramDouble);
    }
  }
  
  public ObjectNode put(String paramString, Float paramFloat)
  {
    if (paramFloat == null) {}
    for (paramFloat = nullNode();; paramFloat = numberNode(paramFloat.floatValue())) {
      return _put(paramString, paramFloat);
    }
  }
  
  public ObjectNode put(String paramString, Integer paramInteger)
  {
    if (paramInteger == null) {}
    for (paramInteger = nullNode();; paramInteger = numberNode(paramInteger.intValue())) {
      return _put(paramString, paramInteger);
    }
  }
  
  public ObjectNode put(String paramString, Long paramLong)
  {
    if (paramLong == null) {}
    for (paramLong = nullNode();; paramLong = numberNode(paramLong.longValue())) {
      return _put(paramString, paramLong);
    }
  }
  
  public ObjectNode put(String paramString, Short paramShort)
  {
    if (paramShort == null) {}
    for (paramShort = nullNode();; paramShort = numberNode(paramShort.shortValue())) {
      return _put(paramString, paramShort);
    }
  }
  
  public ObjectNode put(String paramString1, String paramString2)
  {
    if (paramString2 == null) {}
    for (paramString2 = nullNode();; paramString2 = textNode(paramString2)) {
      return _put(paramString1, paramString2);
    }
  }
  
  public ObjectNode put(String paramString, BigDecimal paramBigDecimal)
  {
    if (paramBigDecimal == null) {}
    for (paramBigDecimal = nullNode();; paramBigDecimal = numberNode(paramBigDecimal)) {
      return _put(paramString, paramBigDecimal);
    }
  }
  
  public ObjectNode put(String paramString, short paramShort)
  {
    return _put(paramString, numberNode(paramShort));
  }
  
  public ObjectNode put(String paramString, boolean paramBoolean)
  {
    return _put(paramString, booleanNode(paramBoolean));
  }
  
  public ObjectNode put(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (paramArrayOfByte = nullNode();; paramArrayOfByte = binaryNode(paramArrayOfByte)) {
      return _put(paramString, paramArrayOfByte);
    }
  }
  
  @Deprecated
  public JsonNode putAll(ObjectNode paramObjectNode)
  {
    return setAll(paramObjectNode);
  }
  
  @Deprecated
  public JsonNode putAll(Map<String, ? extends JsonNode> paramMap)
  {
    return setAll(paramMap);
  }
  
  public ArrayNode putArray(String paramString)
  {
    ArrayNode localArrayNode = arrayNode();
    _put(paramString, localArrayNode);
    return localArrayNode;
  }
  
  public ObjectNode putNull(String paramString)
  {
    _children.put(paramString, nullNode());
    return this;
  }
  
  public ObjectNode putObject(String paramString)
  {
    ObjectNode localObjectNode = objectNode();
    _put(paramString, localObjectNode);
    return localObjectNode;
  }
  
  public ObjectNode putPOJO(String paramString, Object paramObject)
  {
    return _put(paramString, pojoNode(paramObject));
  }
  
  public JsonNode remove(String paramString)
  {
    return (JsonNode)_children.remove(paramString);
  }
  
  public ObjectNode remove(Collection<String> paramCollection)
  {
    _children.keySet().removeAll(paramCollection);
    return this;
  }
  
  public ObjectNode removeAll()
  {
    _children.clear();
    return this;
  }
  
  public JsonNode replace(String paramString, JsonNode paramJsonNode)
  {
    Object localObject = paramJsonNode;
    if (paramJsonNode == null) {
      localObject = nullNode();
    }
    return (JsonNode)_children.put(paramString, localObject);
  }
  
  public ObjectNode retain(Collection<String> paramCollection)
  {
    _children.keySet().retainAll(paramCollection);
    return this;
  }
  
  public ObjectNode retain(String... paramVarArgs)
  {
    return retain(Arrays.asList(paramVarArgs));
  }
  
  public void serialize(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramJsonGenerator.writeFieldName((String)localEntry.getKey());
      ((BaseJsonNode)localEntry.getValue()).serialize(paramJsonGenerator, paramSerializerProvider);
    }
    paramJsonGenerator.writeEndObject();
  }
  
  public void serializeWithType(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(this, paramJsonGenerator);
    Iterator localIterator = _children.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramJsonGenerator.writeFieldName((String)localEntry.getKey());
      ((BaseJsonNode)localEntry.getValue()).serialize(paramJsonGenerator, paramSerializerProvider);
    }
    paramTypeSerializer.writeTypeSuffixForObject(this, paramJsonGenerator);
  }
  
  public JsonNode set(String paramString, JsonNode paramJsonNode)
  {
    Object localObject = paramJsonNode;
    if (paramJsonNode == null) {
      localObject = nullNode();
    }
    _children.put(paramString, localObject);
    return this;
  }
  
  public JsonNode setAll(ObjectNode paramObjectNode)
  {
    _children.putAll(_children);
    return this;
  }
  
  @JsonIgnore
  public JsonNode setAll(Map<String, ? extends JsonNode> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      JsonNode localJsonNode = (JsonNode)localEntry.getValue();
      paramMap = localJsonNode;
      if (localJsonNode == null) {
        paramMap = nullNode();
      }
      _children.put(localEntry.getKey(), paramMap);
    }
    return this;
  }
  
  public int size()
  {
    return _children.size();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder((size() << 4) + 32);
    localStringBuilder.append("{");
    Iterator localIterator = _children.entrySet().iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (i > 0) {
        localStringBuilder.append(",");
      }
      TextNode.appendQuoted(localStringBuilder, (String)localEntry.getKey());
      localStringBuilder.append(':');
      localStringBuilder.append(((JsonNode)localEntry.getValue()).toString());
      i += 1;
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public ObjectNode with(String paramString)
  {
    Object localObject = (JsonNode)_children.get(paramString);
    if (localObject != null)
    {
      if ((localObject instanceof ObjectNode)) {
        return (ObjectNode)localObject;
      }
      throw new UnsupportedOperationException("Property '" + paramString + "' has value that is not of type ObjectNode (but " + localObject.getClass().getName() + ")");
    }
    localObject = objectNode();
    _children.put(paramString, localObject);
    return (ObjectNode)localObject;
  }
  
  public ArrayNode withArray(String paramString)
  {
    Object localObject = (JsonNode)_children.get(paramString);
    if (localObject != null)
    {
      if ((localObject instanceof ArrayNode)) {
        return (ArrayNode)localObject;
      }
      throw new UnsupportedOperationException("Property '" + paramString + "' has value that is not of type ArrayNode (but " + localObject.getClass().getName() + ")");
    }
    localObject = arrayNode();
    _children.put(paramString, localObject);
    return (ArrayNode)localObject;
  }
  
  public JsonNode without(String paramString)
  {
    _children.remove(paramString);
    return this;
  }
  
  public ObjectNode without(Collection<String> paramCollection)
  {
    _children.keySet().removeAll(paramCollection);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.node.ObjectNode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */