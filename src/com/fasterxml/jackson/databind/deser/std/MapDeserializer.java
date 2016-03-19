package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.deser.ContextualKeyDeserializer;
import com.fasterxml.jackson.databind.deser.ResolvableDeserializer;
import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.deser.UnresolvedForwardReference;
import com.fasterxml.jackson.databind.deser.ValueInstantiator;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedCreator;
import com.fasterxml.jackson.databind.deser.impl.PropertyValueBuffer;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId;
import com.fasterxml.jackson.databind.deser.impl.ReadableObjectId.Referring;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@JacksonStdImpl
public class MapDeserializer
  extends ContainerDeserializerBase<Map<Object, Object>>
  implements ContextualDeserializer, ResolvableDeserializer
{
  private static final long serialVersionUID = 1L;
  protected JsonDeserializer<Object> _delegateDeserializer;
  protected final boolean _hasDefaultCreator;
  protected HashSet<String> _ignorableProperties;
  protected final KeyDeserializer _keyDeserializer;
  protected final JavaType _mapType;
  protected PropertyBasedCreator _propertyBasedCreator;
  protected boolean _standardStringKey;
  protected final JsonDeserializer<Object> _valueDeserializer;
  protected final ValueInstantiator _valueInstantiator;
  protected final TypeDeserializer _valueTypeDeserializer;
  
  public MapDeserializer(JavaType paramJavaType, ValueInstantiator paramValueInstantiator, KeyDeserializer paramKeyDeserializer, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer)
  {
    super(paramJavaType);
    _mapType = paramJavaType;
    _keyDeserializer = paramKeyDeserializer;
    _valueDeserializer = paramJsonDeserializer;
    _valueTypeDeserializer = paramTypeDeserializer;
    _valueInstantiator = paramValueInstantiator;
    _hasDefaultCreator = paramValueInstantiator.canCreateUsingDefault();
    _delegateDeserializer = null;
    _propertyBasedCreator = null;
    _standardStringKey = _isStdKeyDeser(paramJavaType, paramKeyDeserializer);
  }
  
  protected MapDeserializer(MapDeserializer paramMapDeserializer)
  {
    super(_mapType);
    _mapType = _mapType;
    _keyDeserializer = _keyDeserializer;
    _valueDeserializer = _valueDeserializer;
    _valueTypeDeserializer = _valueTypeDeserializer;
    _valueInstantiator = _valueInstantiator;
    _propertyBasedCreator = _propertyBasedCreator;
    _delegateDeserializer = _delegateDeserializer;
    _hasDefaultCreator = _hasDefaultCreator;
    _ignorableProperties = _ignorableProperties;
    _standardStringKey = _standardStringKey;
  }
  
  protected MapDeserializer(MapDeserializer paramMapDeserializer, KeyDeserializer paramKeyDeserializer, JsonDeserializer<Object> paramJsonDeserializer, TypeDeserializer paramTypeDeserializer, HashSet<String> paramHashSet)
  {
    super(_mapType);
    _mapType = _mapType;
    _keyDeserializer = paramKeyDeserializer;
    _valueDeserializer = paramJsonDeserializer;
    _valueTypeDeserializer = paramTypeDeserializer;
    _valueInstantiator = _valueInstantiator;
    _propertyBasedCreator = _propertyBasedCreator;
    _delegateDeserializer = _delegateDeserializer;
    _hasDefaultCreator = _hasDefaultCreator;
    _ignorableProperties = paramHashSet;
    _standardStringKey = _isStdKeyDeser(_mapType, paramKeyDeserializer);
  }
  
  private void handleUnresolvedReference(JsonParser paramJsonParser, MapReferringAccumulator paramMapReferringAccumulator, Object paramObject, UnresolvedForwardReference paramUnresolvedForwardReference)
  {
    if (paramMapReferringAccumulator == null) {
      throw JsonMappingException.from(paramJsonParser, "Unresolved forward reference but no identity info.", paramUnresolvedForwardReference);
    }
    paramJsonParser = paramMapReferringAccumulator.handleUnresolvedReference(paramUnresolvedForwardReference, paramObject);
    paramUnresolvedForwardReference.getRoid().appendReferring(paramJsonParser);
  }
  
  public Map<Object, Object> _deserializeUsingCreator(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    PropertyBasedCreator localPropertyBasedCreator = _propertyBasedCreator;
    PropertyValueBuffer localPropertyValueBuffer = localPropertyBasedCreator.startBuilding(paramJsonParser, paramDeserializationContext, null);
    Object localObject2 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject2;
    if (localObject2 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    localObject2 = _valueDeserializer;
    TypeDeserializer localTypeDeserializer = _valueTypeDeserializer;
    if (localObject1 == JsonToken.FIELD_NAME)
    {
      String str = paramJsonParser.getCurrentName();
      localObject1 = paramJsonParser.nextToken();
      if ((_ignorableProperties != null) && (_ignorableProperties.contains(str))) {
        paramJsonParser.skipChildren();
      }
      for (;;)
      {
        localObject1 = paramJsonParser.nextToken();
        break;
        Object localObject3 = localPropertyBasedCreator.findCreatorProperty(str);
        if (localObject3 != null)
        {
          localObject1 = ((SettableBeanProperty)localObject3).deserialize(paramJsonParser, paramDeserializationContext);
          if (!localPropertyValueBuffer.assignParameter(((SettableBeanProperty)localObject3).getCreatorIndex(), localObject1)) {
            continue;
          }
          paramJsonParser.nextToken();
          try
          {
            localObject1 = (Map)localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
            _readAndBind(paramJsonParser, paramDeserializationContext, (Map)localObject1);
            return (Map<Object, Object>)localObject1;
          }
          catch (Exception paramJsonParser)
          {
            wrapAndThrow(paramJsonParser, _mapType.getRawClass(), str);
            return null;
          }
        }
        localObject3 = paramJsonParser.getCurrentName();
        localObject3 = _keyDeserializer.deserializeKey((String)localObject3, paramDeserializationContext);
        try
        {
          if (localObject1 == JsonToken.VALUE_NULL) {
            localObject1 = ((JsonDeserializer)localObject2).getNullValue();
          }
          for (;;)
          {
            localPropertyValueBuffer.bufferMapProperty(localObject3, localObject1);
            break;
            if (localTypeDeserializer == null) {
              localObject1 = ((JsonDeserializer)localObject2).deserialize(paramJsonParser, paramDeserializationContext);
            } else {
              localObject1 = ((JsonDeserializer)localObject2).deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
            }
          }
          try
          {
            paramJsonParser = (Map)localPropertyBasedCreator.build(paramDeserializationContext, localPropertyValueBuffer);
            return paramJsonParser;
          }
          catch (Exception paramJsonParser)
          {
            wrapAndThrow(paramJsonParser, _mapType.getRawClass(), null);
          }
        }
        catch (Exception paramJsonParser)
        {
          wrapAndThrow(paramJsonParser, _mapType.getRawClass(), str);
          return null;
        }
      }
    }
    return null;
  }
  
  protected final boolean _isStdKeyDeser(JavaType paramJavaType, KeyDeserializer paramKeyDeserializer)
  {
    if (paramKeyDeserializer == null) {}
    do
    {
      do
      {
        return true;
        paramJavaType = paramJavaType.getKeyType();
      } while (paramJavaType == null);
      paramJavaType = paramJavaType.getRawClass();
    } while (((paramJavaType == String.class) || (paramJavaType == Object.class)) && (isDefaultKeyDeserializer(paramKeyDeserializer)));
    return false;
  }
  
  protected final void _readAndBind(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Map<Object, Object> paramMap)
  {
    Object localObject3 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject3;
    if (localObject3 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    KeyDeserializer localKeyDeserializer = _keyDeserializer;
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    TypeDeserializer localTypeDeserializer = _valueTypeDeserializer;
    int i;
    if (localJsonDeserializer.getObjectIdReader() != null)
    {
      i = 1;
      if (i == 0) {
        break label255;
      }
      localObject3 = new MapReferringAccumulator(_mapType.getContentType().getRawClass(), paramMap);
    }
    for (;;)
    {
      label78:
      if (localObject1 == JsonToken.FIELD_NAME)
      {
        String str = paramJsonParser.getCurrentName();
        Object localObject4 = localKeyDeserializer.deserializeKey(str, paramDeserializationContext);
        localObject1 = paramJsonParser.nextToken();
        if ((_ignorableProperties != null) && (_ignorableProperties.contains(str))) {
          paramJsonParser.skipChildren();
        }
        for (;;)
        {
          localObject1 = paramJsonParser.nextToken();
          break label78;
          i = 0;
          break;
          try
          {
            if (localObject1 == JsonToken.VALUE_NULL)
            {
              localObject1 = localJsonDeserializer.getNullValue();
              if (i == 0) {
                break label226;
              }
              ((MapReferringAccumulator)localObject3).put(localObject4, localObject1);
            }
          }
          catch (UnresolvedForwardReference localUnresolvedForwardReference)
          {
            Object localObject2;
            for (;;)
            {
              handleUnresolvedReference(paramJsonParser, (MapReferringAccumulator)localObject3, localObject4, localUnresolvedForwardReference);
              break;
              if (localTypeDeserializer == null) {
                localObject2 = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
              } else {
                localObject2 = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
              }
            }
            paramMap.put(localObject4, localObject2);
          }
          catch (Exception localException)
          {
            label226:
            wrapAndThrow(localException, paramMap, str);
          }
        }
      }
      return;
      label255:
      localObject3 = null;
    }
  }
  
  protected final void _readAndBindStringMap(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Map<Object, Object> paramMap)
  {
    Object localObject3 = paramJsonParser.getCurrentToken();
    Object localObject1 = localObject3;
    if (localObject3 == JsonToken.START_OBJECT) {
      localObject1 = paramJsonParser.nextToken();
    }
    JsonDeserializer localJsonDeserializer = _valueDeserializer;
    TypeDeserializer localTypeDeserializer = _valueTypeDeserializer;
    int i;
    if (localJsonDeserializer.getObjectIdReader() != null)
    {
      i = 1;
      if (i == 0) {
        break label239;
      }
      localObject3 = new MapReferringAccumulator(_mapType.getContentType().getRawClass(), paramMap);
    }
    for (;;)
    {
      label72:
      if (localObject1 == JsonToken.FIELD_NAME)
      {
        String str = paramJsonParser.getCurrentName();
        localObject1 = paramJsonParser.nextToken();
        if ((_ignorableProperties != null) && (_ignorableProperties.contains(str))) {
          paramJsonParser.skipChildren();
        }
        for (;;)
        {
          localObject1 = paramJsonParser.nextToken();
          break label72;
          i = 0;
          break;
          try
          {
            if (localObject1 == JsonToken.VALUE_NULL)
            {
              localObject1 = localJsonDeserializer.getNullValue();
              if (i == 0) {
                break label210;
              }
              ((MapReferringAccumulator)localObject3).put(str, localObject1);
            }
          }
          catch (UnresolvedForwardReference localUnresolvedForwardReference)
          {
            Object localObject2;
            for (;;)
            {
              handleUnresolvedReference(paramJsonParser, (MapReferringAccumulator)localObject3, str, localUnresolvedForwardReference);
              break;
              if (localTypeDeserializer == null) {
                localObject2 = localJsonDeserializer.deserialize(paramJsonParser, paramDeserializationContext);
              } else {
                localObject2 = localJsonDeserializer.deserializeWithType(paramJsonParser, paramDeserializationContext, localTypeDeserializer);
              }
            }
            paramMap.put(str, localObject2);
          }
          catch (Exception localException)
          {
            label210:
            wrapAndThrow(localException, paramMap, str);
          }
        }
      }
      return;
      label239:
      localObject3 = null;
    }
  }
  
  public JsonDeserializer<?> createContextual(DeserializationContext paramDeserializationContext, BeanProperty paramBeanProperty)
  {
    Object localObject2 = _keyDeserializer;
    Object localObject1;
    Object localObject3;
    label72:
    Object localObject4;
    String[] arrayOfString;
    if (localObject2 == null)
    {
      localObject1 = paramDeserializationContext.findKeyDeserializer(_mapType.getKeyType(), paramBeanProperty);
      localObject3 = _valueDeserializer;
      localObject2 = localObject3;
      if (paramBeanProperty != null) {
        localObject2 = findConvertingContentDeserializer(paramDeserializationContext, paramBeanProperty, (JsonDeserializer)localObject3);
      }
      localObject3 = _mapType.getContentType();
      if (localObject2 != null) {
        break label210;
      }
      localObject2 = paramDeserializationContext.findContextualValueDeserializer((JavaType)localObject3, paramBeanProperty);
      localObject4 = _valueTypeDeserializer;
      localObject3 = localObject4;
      if (localObject4 != null) {
        localObject3 = ((TypeDeserializer)localObject4).forProperty(paramBeanProperty);
      }
      localObject4 = _ignorableProperties;
      paramDeserializationContext = paramDeserializationContext.getAnnotationIntrospector();
      if ((paramDeserializationContext == null) || (paramBeanProperty == null)) {
        break label237;
      }
      paramBeanProperty = paramBeanProperty.getMember();
      if (paramBeanProperty == null) {
        break label237;
      }
      arrayOfString = paramDeserializationContext.findPropertiesToIgnore(paramBeanProperty);
      if (arrayOfString == null) {
        break label237;
      }
      if (localObject4 != null) {
        break label224;
      }
    }
    label210:
    label224:
    for (paramDeserializationContext = new HashSet();; paramDeserializationContext = new HashSet((Collection)localObject4))
    {
      int j = arrayOfString.length;
      int i = 0;
      for (;;)
      {
        paramBeanProperty = paramDeserializationContext;
        if (i >= j) {
          break;
        }
        paramDeserializationContext.add(arrayOfString[i]);
        i += 1;
      }
      localObject1 = localObject2;
      if (!(localObject2 instanceof ContextualKeyDeserializer)) {
        break;
      }
      localObject1 = ((ContextualKeyDeserializer)localObject2).createContextual(paramDeserializationContext, paramBeanProperty);
      break;
      localObject2 = paramDeserializationContext.handleSecondaryContextualization((JsonDeserializer)localObject2, paramBeanProperty, (JavaType)localObject3);
      break label72;
    }
    label237:
    paramBeanProperty = (BeanProperty)localObject4;
    return withResolved((KeyDeserializer)localObject1, (TypeDeserializer)localObject3, (JsonDeserializer)localObject2, paramBeanProperty);
  }
  
  public Map<Object, Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext)
  {
    if (_propertyBasedCreator != null) {
      return _deserializeUsingCreator(paramJsonParser, paramDeserializationContext);
    }
    if (_delegateDeserializer != null) {
      return (Map)_valueInstantiator.createUsingDelegate(paramDeserializationContext, _delegateDeserializer.deserialize(paramJsonParser, paramDeserializationContext));
    }
    if (!_hasDefaultCreator) {
      throw paramDeserializationContext.instantiationException(getMapClass(), "No default constructor found");
    }
    Object localObject = paramJsonParser.getCurrentToken();
    if ((localObject != JsonToken.START_OBJECT) && (localObject != JsonToken.FIELD_NAME) && (localObject != JsonToken.END_OBJECT))
    {
      if (localObject == JsonToken.VALUE_STRING) {
        return (Map)_valueInstantiator.createFromString(paramDeserializationContext, paramJsonParser.getText());
      }
      return (Map)_deserializeFromEmpty(paramJsonParser, paramDeserializationContext);
    }
    localObject = (Map)_valueInstantiator.createUsingDefault(paramDeserializationContext);
    if (_standardStringKey)
    {
      _readAndBindStringMap(paramJsonParser, paramDeserializationContext, (Map)localObject);
      return (Map<Object, Object>)localObject;
    }
    _readAndBind(paramJsonParser, paramDeserializationContext, (Map)localObject);
    return (Map<Object, Object>)localObject;
  }
  
  public Map<Object, Object> deserialize(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, Map<Object, Object> paramMap)
  {
    paramJsonParser.setCurrentValue(paramMap);
    JsonToken localJsonToken = paramJsonParser.getCurrentToken();
    if ((localJsonToken != JsonToken.START_OBJECT) && (localJsonToken != JsonToken.FIELD_NAME)) {
      throw paramDeserializationContext.mappingException(getMapClass());
    }
    if (_standardStringKey)
    {
      _readAndBindStringMap(paramJsonParser, paramDeserializationContext, paramMap);
      return paramMap;
    }
    _readAndBind(paramJsonParser, paramDeserializationContext, paramMap);
    return paramMap;
  }
  
  public Object deserializeWithType(JsonParser paramJsonParser, DeserializationContext paramDeserializationContext, TypeDeserializer paramTypeDeserializer)
  {
    return paramTypeDeserializer.deserializeTypedFromObject(paramJsonParser, paramDeserializationContext);
  }
  
  public JsonDeserializer<Object> getContentDeserializer()
  {
    return _valueDeserializer;
  }
  
  public JavaType getContentType()
  {
    return _mapType.getContentType();
  }
  
  public final Class<?> getMapClass()
  {
    return _mapType.getRawClass();
  }
  
  public JavaType getValueType()
  {
    return _mapType;
  }
  
  public boolean isCachable()
  {
    return (_valueDeserializer == null) && (_keyDeserializer == null) && (_valueTypeDeserializer == null) && (_ignorableProperties == null);
  }
  
  public void resolve(DeserializationContext paramDeserializationContext)
  {
    Object localObject;
    if (_valueInstantiator.canCreateUsingDelegate())
    {
      localObject = _valueInstantiator.getDelegateType(paramDeserializationContext.getConfig());
      if (localObject == null) {
        throw new IllegalArgumentException("Invalid delegate-creator definition for " + _mapType + ": value instantiator (" + _valueInstantiator.getClass().getName() + ") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'");
      }
      _delegateDeserializer = findDeserializer(paramDeserializationContext, (JavaType)localObject, null);
    }
    if (_valueInstantiator.canCreateFromObjectWith())
    {
      localObject = _valueInstantiator.getFromObjectArguments(paramDeserializationContext.getConfig());
      _propertyBasedCreator = PropertyBasedCreator.construct(paramDeserializationContext, _valueInstantiator, (SettableBeanProperty[])localObject);
    }
    _standardStringKey = _isStdKeyDeser(_mapType, _keyDeserializer);
  }
  
  public void setIgnorableProperties(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {}
    for (paramArrayOfString = null;; paramArrayOfString = ArrayBuilders.arrayToSet(paramArrayOfString))
    {
      _ignorableProperties = paramArrayOfString;
      return;
    }
  }
  
  protected MapDeserializer withResolved(KeyDeserializer paramKeyDeserializer, TypeDeserializer paramTypeDeserializer, JsonDeserializer<?> paramJsonDeserializer, HashSet<String> paramHashSet)
  {
    if ((_keyDeserializer == paramKeyDeserializer) && (_valueDeserializer == paramJsonDeserializer) && (_valueTypeDeserializer == paramTypeDeserializer) && (_ignorableProperties == paramHashSet)) {
      return this;
    }
    return new MapDeserializer(this, paramKeyDeserializer, paramJsonDeserializer, paramTypeDeserializer, paramHashSet);
  }
  
  @Deprecated
  protected void wrapAndThrow(Throwable paramThrowable, Object paramObject)
  {
    wrapAndThrow(paramThrowable, paramObject, null);
  }
  
  static final class MapReferring
    extends ReadableObjectId.Referring
  {
    private final MapDeserializer.MapReferringAccumulator _parent;
    public final Object key;
    public final Map<Object, Object> next = new LinkedHashMap();
    
    MapReferring(MapDeserializer.MapReferringAccumulator paramMapReferringAccumulator, UnresolvedForwardReference paramUnresolvedForwardReference, Class<?> paramClass, Object paramObject)
    {
      super(paramClass);
      _parent = paramMapReferringAccumulator;
      key = paramObject;
    }
    
    public final void handleResolvedForwardReference(Object paramObject1, Object paramObject2)
    {
      _parent.resolveForwardReference(paramObject1, paramObject2);
    }
  }
  
  private static final class MapReferringAccumulator
  {
    private List<MapDeserializer.MapReferring> _accumulator = new ArrayList();
    private Map<Object, Object> _result;
    private final Class<?> _valueType;
    
    public MapReferringAccumulator(Class<?> paramClass, Map<Object, Object> paramMap)
    {
      _valueType = paramClass;
      _result = paramMap;
    }
    
    public final ReadableObjectId.Referring handleUnresolvedReference(UnresolvedForwardReference paramUnresolvedForwardReference, Object paramObject)
    {
      paramUnresolvedForwardReference = new MapDeserializer.MapReferring(this, paramUnresolvedForwardReference, _valueType, paramObject);
      _accumulator.add(paramUnresolvedForwardReference);
      return paramUnresolvedForwardReference;
    }
    
    public final void put(Object paramObject1, Object paramObject2)
    {
      if (_accumulator.isEmpty())
      {
        _result.put(paramObject1, paramObject2);
        return;
      }
      _accumulator.get(_accumulator.size() - 1)).next.put(paramObject1, paramObject2);
    }
    
    public final void resolveForwardReference(Object paramObject1, Object paramObject2)
    {
      Iterator localIterator = _accumulator.iterator();
      MapDeserializer.MapReferring localMapReferring;
      for (Map localMap = _result; localIterator.hasNext(); localMap = next)
      {
        localMapReferring = (MapDeserializer.MapReferring)localIterator.next();
        if (localMapReferring.hasId(paramObject1))
        {
          localIterator.remove();
          localMap.put(key, paramObject2);
          localMap.putAll(next);
          return;
        }
      }
      throw new IllegalArgumentException("Trying to resolve a forward reference with id [" + paramObject1 + "] that wasn't previously seen as unresolved.");
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.MapDeserializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */