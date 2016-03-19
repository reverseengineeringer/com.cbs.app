package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

@JacksonStdImpl
public class CollectionDeserializer
  extends ContainerDeserializerBase<Collection<Object>>
  implements ContextualDeserializer
{
  private static final long serialVersionUID = -1L;
  protected final JavaType _collectionType;
  protected final JsonDeserializer<Object> _delegateDeserializer;
  protected final JsonDeserializer<Object> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;
  protected final TypeDeserializer _valueTypeDeserializer;
  
  public CollectionDeserializer(JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer, ValueInstantiator paramValueInstantiator)
  {
    this(paramJavaType, paramJsonDeserializer, paramTypeDeserializer, paramValueInstantiator, null);
  }
  
  protected CollectionDeserializer(JavaType paramJavaType, JsonDeserializer<Object> paramJsonDeserializer1, TypeDeserializer paramTypeDeserializer, ValueInstantiator paramValueInstantiator, JsonDeserializer<Object> paramJsonDeserializer2)
  {
    super(paramJavaType);
    _collectionType = paramJavaType;
    _valueDeserializer = paramJsonDeserializer1;
    _valueTypeDeserializer = paramTypeDeserializer;
    _valueInstantiator = paramValueInstantiator;
    _delegateDeserializer = paramJsonDeserializer2;
  }
  
  protected CollectionDeserializer(CollectionDeserializer paramCollectionDeserializer)
  {
    super(_collectionType);
    _collectionType = _collectionType;
    _valueDeserializer = _valueDeserializer;
    _valueTypeDeserializer = _valueTypeDeserializer;
    _valueInstantiator = _valueInstantiator;
    _delegateDeserializer = _delegateDeserializer;
  }
  
  public CollectionDeserializer createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (_valueInstantiator != null)
    {
      localObject1 = localObject2;
      if (_valueInstantiator.canCreateUsingDelegate())
      {
        localObject1 = _valueInstantiator.getDelegateType(paramDeserializationContext.getConfig());
        if (localObject1 == null) {
          throw new IllegalArgumentException("Invalid delegate-creator definition for " + _collectionType + ": value instantiator (" + _valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
        }
        localObject1 = findDeserializer(paramDeserializationContext, (JavaType)localObject1, paramBeanProperty);
      }
    }
    localObject2 = findConvertingContentDeserializer(paramDeserializationContext, paramBeanProperty, _valueDeserializer);
    Object localObject3 = _collectionType.getContentType();
    if (localObject2 == null) {}
    for (paramDeserializationContext = paramDeserializationContext.findContextualValueDeserializer((JavaType)localObject3, paramBeanProperty);; paramDeserializationContext = paramDeserializationContext.handleSecondaryContextualization((JsonDeserializer)localObject2, paramBeanProperty, (JavaType)localObject3))
    {
      localObject3 = _valueTypeDeserializer;
      localObject2 = localObject3;
      if (localObject3 != null) {
        localObject2 = ((TypeDeserializer)localObject3).forProperty(paramBeanProperty);
      }
      return withResolved((JsonDeserializer)localObject1, paramDeserializationContext, (TypeDeserializer)localObject2);
    }
  }
  
  public Collection<Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (_delegateDeserializer != null) {
      return (Collection)_valueInstantiator.createUsingDelegate(paramDeserializationContext, _delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    if (paramJsonParser.getCurrentToken() == JsonToken.VALUE_STRING)
    {
      String str = paramJsonParser.getText();
      if (str.length() == 0) {
        return (Collection)_valueInstantiator.createFromString(paramDeserializationContext, str);
      }
    }
    return deserialize(paramJsonParser, paramDeserializationContext, (Collection)_valueInstantiator.createUsingDefault(paramDeserializationContext));
  }
  
  public Collection<Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<Object> paramCollection)
  {
    Object localObject1;
    if (!paramJsonParser.isExpectedStartArrayToken())
    {
      localObject1 = handleNonArray(paramJsonParser, paramDeserializationContext, paramCollection);
      return (Collection<Object>)localObject1;
    }
    paramJsonParser.setCurrentValue(paramCollection);
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    TypeDeserializer localTypeDeserializer = _valueTypeDeserializer;
    CollectionReferringAccumulator localCollectionReferringAccumulator;
    if (localJsonDeserializer.getObjectIdReader() == null) {
      localCollectionReferringAccumulator = null;
    }
    for (;;)
    {
      Object localObject3 = paramJsonParser.nextToken();
      localObject1 = paramCollection;
      if (localObject3 == JsonToken.END_ARRAY) {
        break;
      }
      Object localObject2;
      try
      {
        if (localObject3 == JsonToken.VALUE_NULL)
        {
          localObject1 = localJsonDeserializer.getNullValue();
          if (localCollectionReferringAccumulator == null) {
            break label164;
          }
          localCollectionReferringAccumulator.add(localObject1);
        }
      }
      catch (UnresolvedForwardReference localUnresolvedForwardReference)
      {
        for (;;)
        {
          if (localCollectionReferringAccumulator == null)
          {
            throw JsonMappingException.from(paramJsonParser, "Unresolved forward reference but no identity info", localUnresolvedForwardReference);
            localCollectionReferringAccumulator = new CollectionReferringAccumulator(_collectionType.getContentType().getRawClass(), paramCollection);
            break;
            if (localTypeDeserializer == null)
            {
              localObject2 = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
            }
            else
            {
              localObject2 = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
              continue;
              paramCollection.add(localObject2);
            }
          }
        }
      }
      catch (Exception paramJsonParser)
      {
        label164:
        throw JsonMappingException.wrapWithPath(paramJsonParser, paramCollection, paramCollection.size());
      }
      localObject3 = localCollectionReferringAccumulator.handleUnresolvedReference((UnresolvedForwardReference)localObject2);
      ((UnresolvedForwardReference)localObject2).getRoid().appendReferring((ReadableObjectId.Referring)localObject3);
    }
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromArray(paramJsonParser, paramDeserializationContext);
  }
  
  public JsonDeserializer<Object> getContentDeserializer()
  {
    return _valueDeserializer;
  }
  
  public JavaType getContentType()
  {
    return _collectionType.getContentType();
  }
  
  /* Error */
  protected final Collection<Object> handleNonArray(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Collection<Object> paramCollection)
  {
    // Byte code:
    //   0: aload_2
    //   1: getstatic 278	com/fasterxml/jackson/databind/DeserializationFeature:ACCEPT_SINGLE_VALUE_AS_ARRAY	Lcom/fasterxml/jackson/databind/DeserializationFeature;
    //   4: invokevirtual 282	com/fasterxml/jackson/databind/DeserializationContext:isEnabled	(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
    //   7: ifne +15 -> 22
    //   10: aload_2
    //   11: aload_0
    //   12: getfield 41	com/fasterxml/jackson/databind/deser/std/CollectionDeserializer:_collectionType	Lcom/fasterxml/jackson/databind/JavaType;
    //   15: invokevirtual 234	com/fasterxml/jackson/databind/JavaType:getRawClass	()Ljava/lang/Class;
    //   18: invokevirtual 286	com/fasterxml/jackson/databind/DeserializationContext:mappingException	(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
    //   21: athrow
    //   22: aload_0
    //   23: getfield 43	com/fasterxml/jackson/databind/deser/std/CollectionDeserializer:_valueDeserializer	Lcom/fasterxml/jackson/databind/JsonDeserializer;
    //   26: astore 4
    //   28: aload_0
    //   29: getfield 45	com/fasterxml/jackson/databind/deser/std/CollectionDeserializer:_valueTypeDeserializer	Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
    //   32: astore 5
    //   34: aload_1
    //   35: invokevirtual 165	com/fasterxml/jackson/core/JsonParser:getCurrentToken	()Lcom/fasterxml/jackson/core/JsonToken;
    //   38: astore 6
    //   40: aload 6
    //   42: getstatic 216	com/fasterxml/jackson/core/JsonToken:VALUE_NULL	Lcom/fasterxml/jackson/core/JsonToken;
    //   45: if_acmpne +19 -> 64
    //   48: aload 4
    //   50: invokevirtual 220	com/fasterxml/jackson/databind/JsonDeserializer:getNullValue	()Ljava/lang/Object;
    //   53: astore_1
    //   54: aload_3
    //   55: aload_1
    //   56: invokeinterface 244 2 0
    //   61: pop
    //   62: aload_3
    //   63: areturn
    //   64: aload 5
    //   66: ifnonnull +14 -> 80
    //   69: aload 4
    //   71: aload_1
    //   72: aload_2
    //   73: invokevirtual 155	com/fasterxml/jackson/databind/JsonDeserializer:deserialize	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    //   76: astore_1
    //   77: goto -23 -> 54
    //   80: aload 4
    //   82: aload_1
    //   83: aload_2
    //   84: aload 5
    //   86: invokevirtual 241	com/fasterxml/jackson/databind/JsonDeserializer:deserializeWithType	(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
    //   89: astore_1
    //   90: goto -36 -> 54
    //   93: astore_1
    //   94: aload_1
    //   95: ldc 92
    //   97: aload_3
    //   98: invokeinterface 247 1 0
    //   103: invokestatic 251	com/fasterxml/jackson/databind/JsonMappingException:wrapWithPath	(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
    //   106: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	107	0	this	CollectionDeserializer
    //   0	107	1	paramJsonParser	JsonParser
    //   0	107	2	paramDeserializationContext	DeserializationContext
    //   0	107	3	paramCollection	Collection<Object>
    //   26	55	4	localJsonDeserializer	JsonDeserializer
    //   32	53	5	localTypeDeserializer	TypeDeserializer
    //   38	3	6	localJsonToken	JsonToken
    // Exception table:
    //   from	to	target	type
    //   40	54	93	java/lang/Exception
    //   69	77	93	java/lang/Exception
    //   80	90	93	java/lang/Exception
  }
  
  public boolean isCachable()
  {
    return (_valueDeserializer == null) && (_valueTypeDeserializer == null) && (_delegateDeserializer == null);
  }
  
  protected CollectionDeserializer withResolved(JsonDeserializer<?> paramJsonDeserializer1, JsonDeserializer<?> paramJsonDeserializer2, TypeDeserializer paramTypeDeserializer)
  {
    if ((paramJsonDeserializer1 == _delegateDeserializer) && (paramJsonDeserializer2 == _valueDeserializer) && (paramTypeDeserializer == _valueTypeDeserializer)) {
      return this;
    }
    return new CollectionDeserializer(_collectionType, paramJsonDeserializer2, paramTypeDeserializer, _valueInstantiator, paramJsonDeserializer1);
  }
  
  private static final class CollectionReferring
    extends ReadableObjectId.Referring
  {
    private final CollectionDeserializer.CollectionReferringAccumulator _parent;
    public final List<Object> next = new ArrayList();
    
    CollectionReferring(CollectionDeserializer.CollectionReferringAccumulator paramCollectionReferringAccumulator, UnresolvedForwardReference paramUnresolvedForwardReference, Class<?> paramClass)
    {
      super(paramClass);
      _parent = paramCollectionReferringAccumulator;
    }
    
    public final void handleResolvedForwardReference(Object paramObject1, Object paramObject2)
    {
      _parent.resolveForwardReference(paramObject1, paramObject2);
    }
  }
  
  public static final class CollectionReferringAccumulator
  {
    private List<CollectionDeserializer.CollectionReferring> _accumulator = new ArrayList();
    private final Class<?> _elementType;
    private final Collection<Object> _result;
    
    public CollectionReferringAccumulator(Class<?> paramClass, Collection<Object> paramCollection)
    {
      _elementType = paramClass;
      _result = paramCollection;
    }
    
    public final void add(Object paramObject)
    {
      if (_accumulator.isEmpty())
      {
        _result.add(paramObject);
        return;
      }
      _accumulator.get(_accumulator.size() - 1)).next.add(paramObject);
    }
    
    public final ReadableObjectId.Referring handleUnresolvedReference(UnresolvedForwardReference paramUnresolvedForwardReference)
    {
      paramUnresolvedForwardReference = new CollectionDeserializer.CollectionReferring(this, paramUnresolvedForwardReference, _elementType);
      _accumulator.add(paramUnresolvedForwardReference);
      return paramUnresolvedForwardReference;
    }
    
    public final void resolveForwardReference(Object paramObject1, Object paramObject2)
    {
      Iterator localIterator = _accumulator.iterator();
      CollectionDeserializer.CollectionReferring localCollectionReferring;
      for (Object localObject = _result; localIterator.hasNext(); localObject = next)
      {
        localCollectionReferring = (CollectionDeserializer.CollectionReferring)localIterator.next();
        if (localCollectionReferring.hasId(paramObject1))
        {
          localIterator.remove();
          ((Collection)localObject).add(paramObject2);
          ((Collection)localObject).addAll(next);
          return;
        }
      }
      throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + paramObject1 + "] that wasn't previously seen as unresolved.");
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.CollectionDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */