package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonMapFormatVisitor;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.ContainerSerializer;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.ser.PropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap;
import com.fasterxml.jackson.databind.ser.impl.PropertySerializerMap.SerializerAndMapResult;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import java.lang.reflect.Type;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

@JacksonStdImpl
public class MapSerializer
  extends ContainerSerializer<Map<?, ?>>
  implements ContextualSerializer
{
  protected static final JavaType UNSPECIFIED_TYPE = ;
  private static final long serialVersionUID = -3465193297149553004L;
  protected PropertySerializerMap _dynamicValueSerializers;
  protected final Object _filterId;
  protected final HashSet<String> _ignoredEntries;
  protected JsonSerializer<Object> _keySerializer;
  protected final JavaType _keyType;
  protected final BeanProperty _property;
  protected final boolean _sortKeys;
  protected final Object _suppressableValue;
  protected JsonSerializer<Object> _valueSerializer;
  protected final JavaType _valueType;
  protected final boolean _valueTypeIsStatic;
  protected final TypeSerializer _valueTypeSerializer;
  
  protected MapSerializer(MapSerializer paramMapSerializer, BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer1, JsonSerializer<?> paramJsonSerializer2, HashSet<String> paramHashSet)
  {
    super(Map.class, false);
    _ignoredEntries = paramHashSet;
    _keyType = _keyType;
    _valueType = _valueType;
    _valueTypeIsStatic = _valueTypeIsStatic;
    _valueTypeSerializer = _valueTypeSerializer;
    _keySerializer = paramJsonSerializer1;
    _valueSerializer = paramJsonSerializer2;
    _dynamicValueSerializers = _dynamicValueSerializers;
    _property = paramBeanProperty;
    _filterId = _filterId;
    _sortKeys = _sortKeys;
    _suppressableValue = _suppressableValue;
  }
  
  @Deprecated
  protected MapSerializer(MapSerializer paramMapSerializer, TypeSerializer paramTypeSerializer)
  {
    this(paramMapSerializer, paramTypeSerializer, _suppressableValue);
  }
  
  protected MapSerializer(MapSerializer paramMapSerializer, TypeSerializer paramTypeSerializer, Object paramObject)
  {
    super(Map.class, false);
    _ignoredEntries = _ignoredEntries;
    _keyType = _keyType;
    _valueType = _valueType;
    _valueTypeIsStatic = _valueTypeIsStatic;
    _valueTypeSerializer = paramTypeSerializer;
    _keySerializer = _keySerializer;
    _valueSerializer = _valueSerializer;
    _dynamicValueSerializers = _dynamicValueSerializers;
    _property = _property;
    _filterId = _filterId;
    _sortKeys = _sortKeys;
    _suppressableValue = paramObject;
  }
  
  protected MapSerializer(MapSerializer paramMapSerializer, Object paramObject, boolean paramBoolean)
  {
    super(Map.class, false);
    _ignoredEntries = _ignoredEntries;
    _keyType = _keyType;
    _valueType = _valueType;
    _valueTypeIsStatic = _valueTypeIsStatic;
    _valueTypeSerializer = _valueTypeSerializer;
    _keySerializer = _keySerializer;
    _valueSerializer = _valueSerializer;
    _dynamicValueSerializers = _dynamicValueSerializers;
    _property = _property;
    _filterId = paramObject;
    _sortKeys = paramBoolean;
    _suppressableValue = _suppressableValue;
  }
  
  protected MapSerializer(HashSet<String> paramHashSet, JavaType paramJavaType1, JavaType paramJavaType2, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<?> paramJsonSerializer1, JsonSerializer<?> paramJsonSerializer2)
  {
    super(Map.class, false);
    _ignoredEntries = paramHashSet;
    _keyType = paramJavaType1;
    _valueType = paramJavaType2;
    _valueTypeIsStatic = paramBoolean;
    _valueTypeSerializer = paramTypeSerializer;
    _keySerializer = paramJsonSerializer1;
    _valueSerializer = paramJsonSerializer2;
    _dynamicValueSerializers = PropertySerializerMap.emptyForProperties();
    _property = null;
    _filterId = null;
    _sortKeys = false;
    _suppressableValue = null;
  }
  
  public static MapSerializer construct(String[] paramArrayOfString, JavaType paramJavaType, boolean paramBoolean, TypeSerializer paramTypeSerializer, JsonSerializer<Object> paramJsonSerializer1, JsonSerializer<Object> paramJsonSerializer2, Object paramObject)
  {
    boolean bool = false;
    Object localObject;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0))
    {
      paramArrayOfString = null;
      if (paramJavaType != null) {
        break label92;
      }
      paramJavaType = UNSPECIFIED_TYPE;
      localObject = paramJavaType;
      label25:
      if (paramBoolean) {
        break label114;
      }
      paramBoolean = bool;
      if (localObject != null)
      {
        paramBoolean = bool;
        if (((JavaType)localObject).isFinal()) {
          paramBoolean = true;
        }
      }
    }
    for (;;)
    {
      paramJavaType = new MapSerializer(paramArrayOfString, paramJavaType, (JavaType)localObject, paramBoolean, paramTypeSerializer, paramJsonSerializer1, paramJsonSerializer2);
      paramArrayOfString = paramJavaType;
      if (paramObject != null) {
        paramArrayOfString = paramJavaType.withFilterId(paramObject);
      }
      return paramArrayOfString;
      paramArrayOfString = ArrayBuilders.arrayToSet(paramArrayOfString);
      break;
      label92:
      localObject = paramJavaType.getKeyType();
      JavaType localJavaType = paramJavaType.getContentType();
      paramJavaType = (JavaType)localObject;
      localObject = localJavaType;
      break label25;
      label114:
      if (((JavaType)localObject).getRawClass() == Object.class) {
        paramBoolean = false;
      }
    }
  }
  
  protected void _ensureOverride()
  {
    if (getClass() != MapSerializer.class) {
      throw new IllegalStateException("Missing override in class " + getClass().getName());
    }
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, JavaType paramJavaType, SerializerProvider paramSerializerProvider)
  {
    paramJavaType = paramPropertySerializerMap.findAndAddSecondarySerializer(paramJavaType, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicValueSerializers = map;
    }
    return serializer;
  }
  
  protected final JsonSerializer<Object> _findAndAddDynamic(PropertySerializerMap paramPropertySerializerMap, Class<?> paramClass, SerializerProvider paramSerializerProvider)
  {
    paramClass = paramPropertySerializerMap.findAndAddSecondarySerializer(paramClass, paramSerializerProvider, _property);
    if (paramPropertySerializerMap != map) {
      _dynamicValueSerializers = map;
    }
    return serializer;
  }
  
  protected Map<?, ?> _orderEntries(Map<?, ?> paramMap)
  {
    if ((paramMap instanceof SortedMap)) {
      return paramMap;
    }
    return new TreeMap(paramMap);
  }
  
  public MapSerializer _withValueTypeSerializer(TypeSerializer paramTypeSerializer)
  {
    if (_valueTypeSerializer == paramTypeSerializer) {
      return this;
    }
    _ensureOverride();
    return new MapSerializer(this, paramTypeSerializer, null);
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper == null) {}
    for (paramJavaType = null;; paramJavaType = paramJsonFormatVisitorWrapper.expectMapFormat(paramJavaType))
    {
      if (paramJavaType != null)
      {
        paramJavaType.keyFormat(_keySerializer, _keyType);
        JsonSerializer localJsonSerializer2 = _valueSerializer;
        JsonSerializer localJsonSerializer1 = localJsonSerializer2;
        if (localJsonSerializer2 == null) {
          localJsonSerializer1 = _findAndAddDynamic(_dynamicValueSerializers, _valueType, paramJsonFormatVisitorWrapper.getProvider());
        }
        paramJavaType.valueFormat(localJsonSerializer1, _valueType);
      }
      return;
    }
  }
  
  public JsonSerializer<?> createContextual(SerializerProvider paramSerializerProvider, BeanProperty paramBeanProperty)
  {
    boolean bool2 = false;
    Object localObject1 = null;
    AnnotationIntrospector localAnnotationIntrospector = paramSerializerProvider.getAnnotationIntrospector();
    Object localObject4;
    Object localObject2;
    Object localObject3;
    label59:
    label83:
    Object localObject5;
    if (paramBeanProperty == null)
    {
      localObject4 = null;
      localObject2 = _suppressableValue;
      if ((localObject4 == null) || (localAnnotationIntrospector == null)) {
        break label467;
      }
      localObject1 = localAnnotationIntrospector.findKeySerializer((Annotated)localObject4);
      if (localObject1 == null) {
        break label461;
      }
      localObject3 = paramSerializerProvider.serializerInstance((Annotated)localObject4, localObject1);
      localObject1 = localAnnotationIntrospector.findContentSerializer((Annotated)localObject4);
      if (localObject1 == null) {
        break label455;
      }
      localObject1 = paramSerializerProvider.serializerInstance((Annotated)localObject4, localObject1);
      localObject5 = localAnnotationIntrospector.findSerializationInclusionForContent((Annotated)localObject4, null);
      if (localObject5 == null) {
        break label452;
      }
      localObject2 = localObject5;
    }
    for (;;)
    {
      localObject5 = localObject1;
      if (localObject1 == null) {
        localObject5 = _valueSerializer;
      }
      localObject1 = findConvertingContentSerializer(paramSerializerProvider, paramBeanProperty, (JsonSerializer)localObject5);
      if (localObject1 == null)
      {
        if (((_valueTypeIsStatic) && (_valueType.getRawClass() != Object.class)) || (hasContentTypeAnnotation(paramSerializerProvider, paramBeanProperty))) {
          localObject1 = paramSerializerProvider.findValueSerializer(_valueType, paramBeanProperty);
        }
        label171:
        if (localObject3 != null) {
          break label449;
        }
        localObject3 = _keySerializer;
      }
      label198:
      label322:
      label335:
      label363:
      label449:
      for (;;)
      {
        String[] arrayOfString;
        if (localObject3 == null)
        {
          localObject5 = paramSerializerProvider.findKeySerializer(_keyType, paramBeanProperty);
          paramSerializerProvider = _ignoredEntries;
          localObject3 = paramSerializerProvider;
          bool1 = bool2;
          if (localAnnotationIntrospector == null) {
            break label363;
          }
          localObject3 = paramSerializerProvider;
          bool1 = bool2;
          if (localObject4 == null) {
            break label363;
          }
          arrayOfString = localAnnotationIntrospector.findPropertiesToIgnore((Annotated)localObject4);
          if (arrayOfString == null) {
            break label335;
          }
          if (paramSerializerProvider != null) {
            break label322;
          }
        }
        for (localObject3 = new HashSet();; localObject3 = new HashSet(paramSerializerProvider))
        {
          int j = arrayOfString.length;
          int i = 0;
          for (;;)
          {
            paramSerializerProvider = (SerializerProvider)localObject3;
            if (i >= j) {
              break;
            }
            ((HashSet)localObject3).add(arrayOfString[i]);
            i += 1;
          }
          localObject4 = paramBeanProperty.getMember();
          break;
          localObject1 = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject1, paramBeanProperty);
          break label171;
          localObject5 = paramSerializerProvider.handleSecondaryContextualization((JsonSerializer)localObject3, paramBeanProperty);
          break label198;
        }
        localObject3 = localAnnotationIntrospector.findSerializationSortAlphabetically((Annotated)localObject4);
        if ((localObject3 != null) && (((Boolean)localObject3).booleanValue())) {}
        for (boolean bool1 = true;; bool1 = false)
        {
          localObject3 = paramSerializerProvider;
          localObject1 = withResolved(paramBeanProperty, (JsonSerializer)localObject5, (JsonSerializer)localObject1, (HashSet)localObject3, bool1);
          paramSerializerProvider = (SerializerProvider)localObject1;
          if (localObject2 != _suppressableValue) {
            paramSerializerProvider = ((MapSerializer)localObject1).withContentInclusion(localObject2);
          }
          localObject1 = paramSerializerProvider;
          if (paramBeanProperty != null)
          {
            paramBeanProperty = paramBeanProperty.getMember();
            localObject1 = paramSerializerProvider;
            if (paramBeanProperty != null)
            {
              paramBeanProperty = localAnnotationIntrospector.findFilterId(paramBeanProperty);
              localObject1 = paramSerializerProvider;
              if (paramBeanProperty != null) {
                localObject1 = paramSerializerProvider.withFilterId(paramBeanProperty);
              }
            }
          }
          return (JsonSerializer<?>)localObject1;
        }
      }
      label452:
      continue;
      label455:
      localObject1 = null;
      break label83;
      label461:
      localObject3 = null;
      break label59;
      label467:
      localObject3 = null;
    }
  }
  
  public JsonSerializer<?> getContentSerializer()
  {
    return _valueSerializer;
  }
  
  public JavaType getContentType()
  {
    return _valueType;
  }
  
  public JsonSerializer<?> getKeySerializer()
  {
    return _keySerializer;
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("object", true);
  }
  
  public boolean hasSingleElement(Map<?, ?> paramMap)
  {
    return paramMap.size() == 1;
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, Map<?, ?> paramMap)
  {
    return (paramMap == null) || (paramMap.isEmpty());
  }
  
  public void serialize(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeStartObject();
    paramJsonGenerator.setCurrentValue(paramMap);
    Object localObject2;
    Object localObject1;
    if (!paramMap.isEmpty())
    {
      localObject2 = _suppressableValue;
      if (localObject2 != null) {
        break label102;
      }
      localObject1 = localObject2;
      if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
        localObject1 = JsonInclude.Include.NON_NULL;
      }
      if ((!_sortKeys) && (!paramSerializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS))) {
        break label168;
      }
      paramMap = _orderEntries(paramMap);
    }
    label102:
    label168:
    for (;;)
    {
      if (_filterId != null) {
        serializeFilteredFields(paramMap, paramJsonGenerator, paramSerializerProvider, findPropertyFilter(paramSerializerProvider, _filterId, paramMap), localObject1);
      }
      for (;;)
      {
        paramJsonGenerator.writeEndObject();
        return;
        localObject1 = localObject2;
        if (localObject2 != JsonInclude.Include.ALWAYS) {
          break;
        }
        localObject1 = null;
        break;
        if (localObject1 != null) {
          serializeOptionalFields(paramMap, paramJsonGenerator, paramSerializerProvider, localObject1);
        } else if (_valueSerializer != null) {
          serializeFieldsUsing(paramMap, paramJsonGenerator, paramSerializerProvider, _valueSerializer);
        } else {
          serializeFields(paramMap, paramJsonGenerator, paramSerializerProvider);
        }
      }
    }
  }
  
  public void serializeFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (_valueTypeSerializer != null)
    {
      serializeTypedFields(paramMap, paramJsonGenerator, paramSerializerProvider, null);
      return;
    }
    JsonSerializer localJsonSerializer = _keySerializer;
    HashSet localHashSet = _ignoredEntries;
    Object localObject1 = _dynamicValueSerializers;
    Iterator localIterator = paramMap.entrySet().iterator();
    label47:
    Object localObject2;
    Object localObject4;
    Object localObject5;
    label150:
    Object localObject3;
    if (localIterator.hasNext())
    {
      localObject2 = (Map.Entry)localIterator.next();
      localObject4 = ((Map.Entry)localObject2).getValue();
      localObject5 = ((Map.Entry)localObject2).getKey();
      if (localObject5 == null) {
        paramSerializerProvider.findNullKeySerializer(_keyType, _property).serialize(null, paramJsonGenerator, paramSerializerProvider);
      }
      for (;;)
      {
        if (localObject4 != null) {
          break label150;
        }
        paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
        break;
        if ((localHashSet != null) && (localHashSet.contains(localObject5))) {
          break;
        }
        localJsonSerializer.serialize(localObject5, paramJsonGenerator, paramSerializerProvider);
      }
      localObject3 = localObject4.getClass();
      localObject2 = ((PropertySerializerMap)localObject1).serializerFor((Class)localObject3);
      if (localObject2 != null) {
        break label258;
      }
      if (_valueType.hasGenericTypes())
      {
        localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(_valueType, (Class)localObject3), paramSerializerProvider);
        label200:
        localObject3 = _dynamicValueSerializers;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
    }
    label258:
    for (;;)
    {
      try
      {
        ((JsonSerializer)localObject2).serialize(localObject4, paramJsonGenerator, paramSerializerProvider);
      }
      catch (Exception localException)
      {
        wrapAndThrow(paramSerializerProvider, localException, paramMap, String.valueOf(localObject5));
      }
      localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, (Class)localObject3, paramSerializerProvider);
      break label200;
      break label47;
      break;
    }
  }
  
  protected void serializeFieldsUsing(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, JsonSerializer<Object> paramJsonSerializer)
  {
    JsonSerializer localJsonSerializer = _keySerializer;
    HashSet localHashSet = _ignoredEntries;
    TypeSerializer localTypeSerializer = _valueTypeSerializer;
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      Object localObject1 = ((Map.Entry)localObject2).getKey();
      if ((localHashSet == null) || (!localHashSet.contains(localObject1)))
      {
        if (localObject1 == null) {
          paramSerializerProvider.findNullKeySerializer(_keyType, _property).serialize(null, paramJsonGenerator, paramSerializerProvider);
        }
        for (;;)
        {
          localObject2 = ((Map.Entry)localObject2).getValue();
          if (localObject2 != null) {
            break label134;
          }
          paramSerializerProvider.defaultSerializeNull(paramJsonGenerator);
          break;
          localJsonSerializer.serialize(localObject1, paramJsonGenerator, paramSerializerProvider);
        }
        label134:
        if (localTypeSerializer == null) {
          try
          {
            paramJsonSerializer.serialize(localObject2, paramJsonGenerator, paramSerializerProvider);
          }
          catch (Exception localException)
          {
            wrapAndThrow(paramSerializerProvider, localException, paramMap, String.valueOf(localObject1));
          }
        } else {
          paramJsonSerializer.serializeWithType(localException, paramJsonGenerator, paramSerializerProvider, localTypeSerializer);
        }
      }
    }
  }
  
  @Deprecated
  public void serializeFilteredFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, PropertyFilter paramPropertyFilter)
  {
    if (paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {}
    for (Object localObject = null;; localObject = JsonInclude.Include.NON_NULL)
    {
      serializeFilteredFields(paramMap, paramJsonGenerator, paramSerializerProvider, paramPropertyFilter, localObject);
      return;
    }
  }
  
  public void serializeFilteredFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, PropertyFilter paramPropertyFilter, Object paramObject)
  {
    HashSet localHashSet = _ignoredEntries;
    Object localObject1 = _dynamicValueSerializers;
    MapProperty localMapProperty = new MapProperty(_valueTypeSerializer, _property);
    Iterator localIterator = paramMap.entrySet().iterator();
    Object localObject2;
    Object localObject6;
    label132:
    label168:
    Object localObject4;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject2 = (Map.Entry)localIterator.next();
        localObject6 = ((Map.Entry)localObject2).getKey();
        if ((localHashSet == null) || (!localHashSet.contains(localObject6)))
        {
          if (localObject6 == null) {}
          for (JsonSerializer localJsonSerializer = paramSerializerProvider.findNullKeySerializer(_keyType, _property);; localJsonSerializer = _keySerializer)
          {
            Object localObject7 = ((Map.Entry)localObject2).getValue();
            if (localObject7 != null) {
              break label168;
            }
            if (paramObject != null) {
              break;
            }
            Object localObject5 = paramSerializerProvider.getDefaultNullValueSerializer();
            localMapProperty.reset(localObject6, localJsonSerializer, (JsonSerializer)localObject5);
            try
            {
              paramPropertyFilter.serializeAsField(localObject7, paramJsonGenerator, paramSerializerProvider, localMapProperty);
            }
            catch (Exception localException)
            {
              wrapAndThrow(paramSerializerProvider, localException, paramMap, String.valueOf(localObject6));
            }
          }
          localObject4 = _valueSerializer;
          localObject2 = localObject4;
          if (localObject4 != null) {
            break label322;
          }
          localObject5 = localObject7.getClass();
          localObject4 = ((PropertySerializerMap)localObject1).serializerFor((Class)localObject5);
          localObject2 = localObject4;
          if (localObject4 != null) {
            break label322;
          }
          if (_valueType.hasGenericTypes())
          {
            localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(_valueType, (Class)localObject5), paramSerializerProvider);
            label237:
            localObject2 = _dynamicValueSerializers;
            localObject4 = localObject1;
          }
        }
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (paramObject != JsonInclude.Include.NON_EMPTY) {
        break label132;
      }
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (!((JsonSerializer)localObject4).isEmpty(paramSerializerProvider, localObject7)) {
        break label132;
      }
      localObject1 = localObject2;
      break;
      localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, (Class)localObject5, paramSerializerProvider);
      break label237;
      break;
      return;
      label322:
      localObject4 = localException;
      Object localObject3 = localObject1;
    }
  }
  
  public void serializeOptionalFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, Object paramObject)
  {
    if (_valueTypeSerializer != null)
    {
      serializeTypedFields(paramMap, paramJsonGenerator, paramSerializerProvider, paramObject);
      return;
    }
    HashSet localHashSet = _ignoredEntries;
    Object localObject1 = _dynamicValueSerializers;
    Iterator localIterator = paramMap.entrySet().iterator();
    label42:
    Object localObject2;
    Object localObject6;
    Object localObject7;
    Object localObject5;
    label117:
    label162:
    Object localObject4;
    if (localIterator.hasNext())
    {
      localObject2 = (Map.Entry)localIterator.next();
      localObject6 = ((Map.Entry)localObject2).getKey();
      if (localObject6 == null) {}
      for (JsonSerializer localJsonSerializer = paramSerializerProvider.findNullKeySerializer(_keyType, _property);; localJsonSerializer = _keySerializer)
      {
        localObject7 = ((Map.Entry)localObject2).getValue();
        if (localObject7 != null) {
          break label162;
        }
        if (paramObject != null) {
          break;
        }
        localObject5 = paramSerializerProvider.getDefaultNullValueSerializer();
        try
        {
          localJsonSerializer.serialize(localObject6, paramJsonGenerator, paramSerializerProvider);
          ((JsonSerializer)localObject5).serialize(localObject7, paramJsonGenerator, paramSerializerProvider);
        }
        catch (Exception localException)
        {
          wrapAndThrow(paramSerializerProvider, localException, paramMap, String.valueOf(localObject6));
        }
        if ((localHashSet != null) && (localHashSet.contains(localObject6))) {
          break;
        }
      }
      localObject4 = _valueSerializer;
      localObject2 = localObject4;
      if (localObject4 != null) {
        break label315;
      }
      localObject5 = localObject7.getClass();
      localObject4 = ((PropertySerializerMap)localObject1).serializerFor((Class)localObject5);
      localObject2 = localObject4;
      if (localObject4 != null) {
        break label315;
      }
      if (_valueType.hasGenericTypes())
      {
        localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(_valueType, (Class)localObject5), paramSerializerProvider);
        label231:
        localObject2 = _dynamicValueSerializers;
        localObject4 = localObject1;
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (paramObject != JsonInclude.Include.NON_EMPTY) {
        break label117;
      }
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (!((JsonSerializer)localObject4).isEmpty(paramSerializerProvider, localObject7)) {
        break label117;
      }
      localObject1 = localObject2;
      break label42;
      localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, (Class)localObject5, paramSerializerProvider);
      break label231;
      break label42;
      break;
      label315:
      localObject4 = localException;
      Object localObject3 = localObject1;
    }
  }
  
  @Deprecated
  protected void serializeTypedFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    if (paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {}
    for (Object localObject = null;; localObject = JsonInclude.Include.NON_NULL)
    {
      serializeTypedFields(paramMap, paramJsonGenerator, paramSerializerProvider, localObject);
      return;
    }
  }
  
  protected void serializeTypedFields(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, Object paramObject)
  {
    HashSet localHashSet = _ignoredEntries;
    Object localObject1 = _dynamicValueSerializers;
    Iterator localIterator = paramMap.entrySet().iterator();
    Object localObject2;
    Object localObject6;
    Object localObject7;
    Object localObject5;
    if (localIterator.hasNext())
    {
      localObject2 = (Map.Entry)localIterator.next();
      localObject6 = ((Map.Entry)localObject2).getKey();
      if (localObject6 == null) {}
      for (JsonSerializer localJsonSerializer = paramSerializerProvider.findNullKeySerializer(_keyType, _property);; localJsonSerializer = _keySerializer)
      {
        localObject7 = ((Map.Entry)localObject2).getValue();
        if (localObject7 != null) {
          break label149;
        }
        if (paramObject != null) {
          break;
        }
        localObject5 = paramSerializerProvider.getDefaultNullValueSerializer();
        label100:
        localJsonSerializer.serialize(localObject6, paramJsonGenerator, paramSerializerProvider);
        try
        {
          ((JsonSerializer)localObject5).serializeWithType(localObject7, paramJsonGenerator, paramSerializerProvider, _valueTypeSerializer);
        }
        catch (Exception localException)
        {
          Object localObject4;
          wrapAndThrow(paramSerializerProvider, localException, paramMap, String.valueOf(localObject6));
        }
        if ((localHashSet != null) && (localHashSet.contains(localObject6))) {
          break;
        }
      }
      label149:
      localObject2 = localObject7.getClass();
      localObject4 = ((PropertySerializerMap)localObject1).serializerFor((Class)localObject2);
      if (localObject4 != null) {
        break label284;
      }
      if (_valueType.hasGenericTypes())
      {
        localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, paramSerializerProvider.constructSpecializedType(_valueType, (Class)localObject2), paramSerializerProvider);
        label199:
        localObject2 = _dynamicValueSerializers;
        localObject4 = localObject1;
      }
    }
    for (;;)
    {
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (paramObject != JsonInclude.Include.NON_EMPTY) {
        break label100;
      }
      localObject1 = localObject2;
      localObject5 = localObject4;
      if (!((JsonSerializer)localObject4).isEmpty(paramSerializerProvider, localObject7)) {
        break label100;
      }
      localObject1 = localObject2;
      break;
      localObject1 = _findAndAddDynamic((PropertySerializerMap)localObject1, (Class)localObject2, paramSerializerProvider);
      break label199;
      break;
      return;
      label284:
      Object localObject3 = localObject1;
    }
  }
  
  public void serializeWithType(Map<?, ?> paramMap, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForObject(paramMap, paramJsonGenerator);
    paramJsonGenerator.setCurrentValue(paramMap);
    Object localObject2;
    Object localObject1;
    if (!paramMap.isEmpty())
    {
      localObject2 = _suppressableValue;
      if (localObject2 == null)
      {
        localObject1 = localObject2;
        if (!paramSerializerProvider.isEnabled(SerializationFeature.WRITE_NULL_MAP_VALUES)) {
          localObject1 = JsonInclude.Include.NON_NULL;
        }
        if ((!_sortKeys) && (!paramSerializerProvider.isEnabled(SerializationFeature.ORDER_MAP_ENTRIES_BY_KEYS))) {
          break label174;
        }
        paramMap = _orderEntries(paramMap);
        label74:
        if (_filterId == null) {
          break label126;
        }
        serializeFilteredFields(paramMap, paramJsonGenerator, paramSerializerProvider, findPropertyFilter(paramSerializerProvider, _filterId, paramMap), localObject1);
      }
    }
    for (;;)
    {
      paramTypeSerializer.writeTypeSuffixForObject(paramMap, paramJsonGenerator);
      return;
      localObject1 = localObject2;
      if (localObject2 != JsonInclude.Include.ALWAYS) {
        break;
      }
      localObject1 = null;
      break;
      label126:
      if (localObject1 != null)
      {
        serializeOptionalFields(paramMap, paramJsonGenerator, paramSerializerProvider, localObject1);
      }
      else if (_valueSerializer != null)
      {
        serializeFieldsUsing(paramMap, paramJsonGenerator, paramSerializerProvider, _valueSerializer);
      }
      else
      {
        serializeFields(paramMap, paramJsonGenerator, paramSerializerProvider);
        continue;
        label174:
        break label74;
      }
    }
  }
  
  public MapSerializer withContentInclusion(Object paramObject)
  {
    if (paramObject == _suppressableValue) {
      return this;
    }
    _ensureOverride();
    return new MapSerializer(this, _valueTypeSerializer, paramObject);
  }
  
  public MapSerializer withFilterId(Object paramObject)
  {
    if (_filterId == paramObject) {
      return this;
    }
    _ensureOverride();
    return new MapSerializer(this, paramObject, _sortKeys);
  }
  
  public MapSerializer withResolved(BeanProperty paramBeanProperty, JsonSerializer<?> paramJsonSerializer1, JsonSerializer<?> paramJsonSerializer2, HashSet<String> paramHashSet, boolean paramBoolean)
  {
    _ensureOverride();
    paramJsonSerializer1 = new MapSerializer(this, paramBeanProperty, paramJsonSerializer1, paramJsonSerializer2, paramHashSet);
    paramBeanProperty = paramJsonSerializer1;
    if (paramBoolean != _sortKeys) {
      paramBeanProperty = new MapSerializer(paramJsonSerializer1, _filterId, paramBoolean);
    }
    return paramBeanProperty;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.MapSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */