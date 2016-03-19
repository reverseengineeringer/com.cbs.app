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
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.Collection;

@JacksonStdImpl
public final class StringCollectionDeserializer
  extends ContainerDeserializerBase<Collection<String>>
  implements ContextualDeserializer
{
  private static final long serialVersionUID = 1L;
  protected final JavaType _collectionType;
  protected final JsonDeserializer<Object> _delegateDeserializer;
  protected final JsonDeserializer<String> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;
  
  public StringCollectionDeserializer(JavaType paramJavaType, JsonDeserializer<?> paramJsonDeserializer, ValueInstantiator paramValueInstantiator)
  {
    this(paramJavaType, paramValueInstantiator, null, paramJsonDeserializer);
  }
  
  protected StringCollectionDeserializer(JavaType paramJavaType, ValueInstantiator paramValueInstantiator, JsonDeserializer<?> paramJsonDeserializer1, JsonDeserializer<?> paramJsonDeserializer2)
  {
    super(paramJavaType);
    _collectionType = paramJavaType;
    _valueDeserializer = paramJsonDeserializer2;
    _valueInstantiator = paramValueInstantiator;
    _delegateDeserializer = paramJsonDeserializer1;
  }
  
  private Collection<String> deserializeUsingCustom(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection, JsonDeserializer<String> paramJsonDeserializer)
  {
    Object localObject;
    if (paramJsonParser.nextTextValue() == null)
    {
      localObject = paramJsonParser.getCurrentToken();
      if (localObject == JsonToken.END_ARRAY) {
        return paramCollection;
      }
      if (localObject == JsonToken.VALUE_NULL) {
        localObject = (String)paramJsonDeserializer.getNullValue();
      }
    }
    for (;;)
    {
      paramCollection.add(localObject);
      break;
      localObject = (String)paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
      continue;
      localObject = (String)paramJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
    }
    return paramCollection;
  }
  
  private final Collection<String> handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
  {
    if (!paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_SINGLE_VALUE_AS_ARRAY)) {
      throw paramDeserializationContext.mappingException(_collectionType.getRawClass());
    }
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_NULL) {
      if (localJsonDeserializer == null) {
        paramJsonParser = null;
      }
    }
    for (;;)
    {
      paramCollection.add(paramJsonParser);
      return paramCollection;
      paramJsonParser = (String)localJsonDeserializer.getNullValue();
      continue;
      if (localJsonDeserializer == null) {
        paramJsonParser = _parseString(paramJsonParser, paramDeserializationContext);
      } else {
        paramJsonParser = (String)localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
      }
    }
  }
  
  public final JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
  {
    Object localObject2 = null;
    if ((_valueInstantiator != null) && (_valueInstantiator.getDelegateCreator() != null)) {}
    for (JsonDeserializer localJsonDeserializer1 = findDeserializer(paramDeserializationContext, _valueInstantiator.getDelegateType(paramDeserializationContext.getConfig()), paramBeanProperty);; localJsonDeserializer1 = null)
    {
      Object localObject1 = _valueDeserializer;
      JavaType localJavaType = _collectionType.getContentType();
      if (localObject1 == null)
      {
        JsonDeserializer localJsonDeserializer2 = findConvertingContentDeserializer(paramDeserializationContext, paramBeanProperty, (JsonDeserializer)localObject1);
        localObject1 = localJsonDeserializer2;
        if (localJsonDeserializer2 == null) {
          localObject1 = paramDeserializationContext.findContextualValueDeserializer(localJavaType, paramBeanProperty);
        }
        if (!isDefaultDeserializer((JsonDeserializer)localObject1)) {
          break label113;
        }
      }
      label113:
      for (paramDeserializationContext = (DeserializationContext)localObject2;; paramDeserializationContext = (DeserializationContext)localObject1)
      {
        return withResolved(localJsonDeserializer1, paramDeserializationContext);
        localObject1 = paramDeserializationContext.handleSecondaryContextualization((JsonDeserializer)localObject1, paramBeanProperty, localJavaType);
        break;
      }
    }
  }
  
  public final Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (_delegateDeserializer != null) {
      return (Collection)_valueInstantiator.createUsingDelegate(paramDeserializationContext, _delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    return deserialize(paramJsonParser, paramDeserializationContext, (Collection)_valueInstantiator.createUsingDefault(paramDeserializationContext));
  }
  
  public final Collection<String> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<String> paramCollection)
  {
    Object localObject;
    if (!paramJsonParser.isExpectedStartArrayToken())
    {
      localObject = handleNonArray(paramJsonParser, paramDeserializationContext, paramCollection);
      return (Collection<String>)localObject;
    }
    if (_valueDeserializer != null) {
      return deserializeUsingCustom(paramJsonParser, paramDeserializationContext, paramCollection, _valueDeserializer);
    }
    for (;;)
    {
      String str;
      try
      {
        str = paramJsonParser.nextTextValue();
        if (str != null)
        {
          paramCollection.add(str);
          continue;
        }
        localJsonToken = paramJsonParser.getCurrentToken();
      }
      catch (Exception paramJsonParser)
      {
        throw JsonMappingException.wrapWithPath(paramJsonParser, paramCollection, paramCollection.size());
      }
      JsonToken localJsonToken;
      localObject = paramCollection;
      if (localJsonToken == JsonToken.END_ARRAY) {
        break;
      }
      localObject = str;
      if (localJsonToken != JsonToken.VALUE_NULL) {
        localObject = _parseString(paramJsonParser, paramDeserializationContext);
      }
      paramCollection.add(localObject);
    }
  }
  
  public final Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
  
  public final JsonDeserializer<Object> getContentDeserializer()
  {
    return _valueDeserializer;
  }
  
  public final JavaType getContentType()
  {
    return _collectionType.getContentType();
  }
  
  public final boolean isCachable()
  {
    return (_valueDeserializer == null) && (_delegateDeserializer == null);
  }
  
  protected final StringCollectionDeserializer withResolved(JsonDeserializer<?> paramJsonDeserializer1, JsonDeserializer<?> paramJsonDeserializer2)
  {
    if ((_valueDeserializer == paramJsonDeserializer2) && (_delegateDeserializer == paramJsonDeserializer1)) {
      return this;
    }
    return new StringCollectionDeserializer(_collectionType, _valueInstantiator, paramJsonDeserializer1, paramJsonDeserializer2);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.StringCollectionDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */