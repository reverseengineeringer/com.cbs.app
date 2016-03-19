package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.JsonFormat.Shape;
import com.fasterxml.jackson.annotation.JsonFormat.Value;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonDeserializer.None;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.KeyDeserializer;
import com.fasterxml.jackson.databind.deser.impl.NoClassDefFoundDeserializer;
import com.fasterxml.jackson.databind.deser.std.StdDelegatingDeserializer;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.type.ArrayType;
import com.fasterxml.jackson.databind.type.CollectionLikeType;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.fasterxml.jackson.databind.type.MapLikeType;
import com.fasterxml.jackson.databind.type.MapType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

public final class DeserializerCache
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final ConcurrentHashMap<JavaType, JsonDeserializer<Object>> _cachedDeserializers = new ConcurrentHashMap(64, 0.75F, 4);
  protected final HashMap<JavaType, JsonDeserializer<Object>> _incompleteDeserializers = new HashMap(8);
  
  private boolean _hasCustomValueHandler(JavaType paramJavaType)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramJavaType.isContainerType())
    {
      paramJavaType = paramJavaType.getContentType();
      bool1 = bool2;
      if (paramJavaType != null) {
        if (paramJavaType.getValueHandler() == null)
        {
          bool1 = bool2;
          if (paramJavaType.getTypeHandler() == null) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  private Class<?> _verifyAsClass(Object paramObject, String paramString, Class<?> paramClass)
  {
    if (paramObject == null) {
      paramObject = null;
    }
    do
    {
      return (Class<?>)paramObject;
      if (!(paramObject instanceof Class)) {
        throw new IllegalStateException("AnnotationIntrospector." + paramString + "() returned value of type " + paramObject.getClass().getName() + ": expected type JsonSerializer or Class<JsonSerializer> instead");
      }
      paramString = (Class)paramObject;
      if (paramString == paramClass) {
        break;
      }
      paramObject = paramString;
    } while (!ClassUtil.isBogusClass(paramString));
    return null;
  }
  
  private JavaType modifyTypeByAnnotation(DeserializationContext paramDeserializationContext, Annotated paramAnnotated, JavaType paramJavaType)
  {
    Object localObject1 = paramDeserializationContext.getAnnotationIntrospector();
    Object localObject2 = ((AnnotationIntrospector)localObject1).findDeserializationType(paramAnnotated, paramJavaType);
    if (localObject2 != null) {}
    for (;;)
    {
      JavaType localJavaType;
      try
      {
        localJavaType = paramJavaType.narrowBy((Class)localObject2);
        paramJavaType = localJavaType;
        if (!paramJavaType.isContainerType()) {
          break label460;
        }
        localObject2 = ((AnnotationIntrospector)localObject1).findDeserializationKeyType(paramAnnotated, paramJavaType.getKeyType());
        if (localObject2 != null) {
          if (!(paramJavaType instanceof MapLikeType)) {
            throw new JsonMappingException("Illegal key-type annotation: type " + paramJavaType + " is not a Map(-like) type");
          }
        }
      }
      catch (IllegalArgumentException paramDeserializationContext)
      {
        throw new JsonMappingException("Failed to narrow type " + paramJavaType + " with concrete-type annotation (value " + ((Class)localObject2).getName() + "), method '" + paramAnnotated.getName() + "': " + paramDeserializationContext.getMessage(), null, paramDeserializationContext);
      }
      for (;;)
      {
        try
        {
          localJavaType = ((MapLikeType)paramJavaType).narrowKey((Class)localObject2);
          localObject2 = localJavaType.getKeyType();
          paramJavaType = localJavaType;
          if (localObject2 != null)
          {
            paramJavaType = localJavaType;
            if (((JavaType)localObject2).getValueHandler() == null)
            {
              localObject2 = ((AnnotationIntrospector)localObject1).findKeyDeserializer(paramAnnotated);
              paramJavaType = localJavaType;
              if (localObject2 != null)
              {
                localObject2 = paramDeserializationContext.keyDeserializerInstance(paramAnnotated, localObject2);
                paramJavaType = localJavaType;
                if (localObject2 != null)
                {
                  paramJavaType = ((MapLikeType)localJavaType).withKeyValueHandler(localObject2);
                  paramJavaType.getKeyType();
                }
              }
            }
          }
          localObject2 = ((AnnotationIntrospector)localObject1).findDeserializationContentType(paramAnnotated, paramJavaType.getContentType());
          localJavaType = paramJavaType;
          if (localObject2 != null) {}
          paramDeserializationContext = null;
        }
        catch (IllegalArgumentException paramDeserializationContext)
        {
          try
          {
            localJavaType = paramJavaType.narrowContentsBy((Class)localObject2);
            paramJavaType = localJavaType;
            if (localJavaType.getContentType().getValueHandler() == null)
            {
              localObject1 = ((AnnotationIntrospector)localObject1).findContentDeserializer(paramAnnotated);
              paramJavaType = localJavaType;
              if (localObject1 != null)
              {
                if ((localObject1 instanceof JsonDeserializer)) {
                  break label449;
                }
                paramJavaType = _verifyAsClass(localObject1, "findContentDeserializer", JsonDeserializer.None.class);
                if (paramJavaType == null) {
                  break label449;
                }
                paramDeserializationContext = paramDeserializationContext.deserializerInstance(paramAnnotated, paramJavaType);
                paramJavaType = localJavaType;
                if (paramDeserializationContext != null) {
                  paramJavaType = localJavaType.withContentValueHandler(paramDeserializationContext);
                }
              }
            }
            return paramJavaType;
          }
          catch (IllegalArgumentException paramDeserializationContext)
          {
            throw new JsonMappingException("Failed to narrow content type " + paramJavaType + " with content-type annotation (" + ((Class)localObject2).getName() + "): " + paramDeserializationContext.getMessage(), null, paramDeserializationContext);
          }
          paramDeserializationContext = paramDeserializationContext;
          throw new JsonMappingException("Failed to narrow key type " + paramJavaType + " with key-type annotation (" + ((Class)localObject2).getName() + "): " + paramDeserializationContext.getMessage(), null, paramDeserializationContext);
        }
        label449:
        continue;
        localJavaType = paramJavaType;
      }
      label460:
      return paramJavaType;
    }
  }
  
  protected final JsonDeserializer<Object> _createAndCache2(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    try
    {
      paramDeserializerFactory = _createDeserializer(paramDeserializationContext, paramDeserializerFactory, paramJavaType);
      if (paramDeserializerFactory == null)
      {
        paramDeserializationContext = null;
        return paramDeserializationContext;
      }
    }
    catch (IllegalArgumentException paramDeserializationContext)
    {
      throw new JsonMappingException(paramDeserializationContext.getMessage(), null, paramDeserializationContext);
    }
    boolean bool = paramDeserializerFactory instanceof ResolvableDeserializer;
    if ((!_hasCustomValueHandler(paramJavaType)) && (paramDeserializerFactory.isCachable())) {}
    for (int i = 1;; i = 0)
    {
      if (bool)
      {
        _incompleteDeserializers.put(paramJavaType, paramDeserializerFactory);
        ((ResolvableDeserializer)paramDeserializerFactory).resolve(paramDeserializationContext);
        _incompleteDeserializers.remove(paramJavaType);
      }
      paramDeserializationContext = paramDeserializerFactory;
      if (i == 0) {
        break;
      }
      _cachedDeserializers.put(paramJavaType, paramDeserializerFactory);
      return paramDeserializerFactory;
    }
  }
  
  protected final JsonDeserializer<Object> _createAndCacheValueDeserializer(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    int i;
    synchronized (_incompleteDeserializers)
    {
      JsonDeserializer localJsonDeserializer = _findCachedDeserializer(paramJavaType);
      if (localJsonDeserializer != null) {
        return localJsonDeserializer;
      }
      i = _incompleteDeserializers.size();
      if (i > 0)
      {
        localJsonDeserializer = (JsonDeserializer)_incompleteDeserializers.get(paramJavaType);
        if (localJsonDeserializer != null) {
          return localJsonDeserializer;
        }
      }
    }
    try
    {
      paramDeserializationContext = _createAndCache2(paramDeserializationContext, paramDeserializerFactory, paramJavaType);
      if ((i == 0) && (_incompleteDeserializers.size() > 0)) {
        _incompleteDeserializers.clear();
      }
      return paramDeserializationContext;
    }
    finally
    {
      paramDeserializationContext = finally;
      if ((i == 0) && (_incompleteDeserializers.size() > 0)) {
        _incompleteDeserializers.clear();
      }
      throw paramDeserializationContext;
    }
  }
  
  protected final JsonDeserializer<Object> _createDeserializer(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    DeserializationConfig localDeserializationConfig = paramDeserializationContext.getConfig();
    if ((paramJavaType.isAbstract()) || (paramJavaType.isMapLikeType()) || (paramJavaType.isCollectionLikeType())) {
      paramJavaType = paramDeserializerFactory.mapAbstractType(localDeserializationConfig, paramJavaType);
    }
    for (;;)
    {
      try
      {
        localObject1 = localDeserializationConfig.introspect(paramJavaType);
        localObject2 = findDeserializerFromAnnotation(paramDeserializationContext, ((BeanDescription)localObject1).getClassInfo());
        if (localObject2 != null) {
          return (JsonDeserializer<Object>)localObject2;
        }
      }
      catch (NoClassDefFoundError paramDeserializationContext)
      {
        return new NoClassDefFoundDeserializer(paramDeserializationContext);
      }
      Object localObject2 = modifyTypeByAnnotation(paramDeserializationContext, ((BeanDescription)localObject1).getClassInfo(), paramJavaType);
      if (localObject2 != paramJavaType) {
        paramJavaType = localDeserializationConfig.introspect((JavaType)localObject2);
      }
      for (Object localObject1 = localObject2;; localObject1 = localObject2)
      {
        localObject2 = paramJavaType.findPOJOBuilder();
        if (localObject2 != null) {
          return paramDeserializerFactory.createBuilderBasedDeserializer(paramDeserializationContext, (JavaType)localObject1, paramJavaType, (Class)localObject2);
        }
        localObject2 = paramJavaType.findDeserializationConverter();
        if (localObject2 == null) {
          return _createDeserializer2(paramDeserializationContext, paramDeserializerFactory, (JavaType)localObject1, paramJavaType);
        }
        JavaType localJavaType = ((Converter)localObject2).getInputType(paramDeserializationContext.getTypeFactory());
        if (!localJavaType.hasRawClass(((JavaType)localObject1).getRawClass())) {
          paramJavaType = localDeserializationConfig.introspect(localJavaType);
        }
        return new StdDelegatingDeserializer((Converter)localObject2, localJavaType, _createDeserializer2(paramDeserializationContext, paramDeserializerFactory, localJavaType, paramJavaType));
        localObject2 = paramJavaType;
        paramJavaType = (JavaType)localObject1;
      }
    }
  }
  
  protected final JsonDeserializer<?> _createDeserializer2(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    DeserializationConfig localDeserializationConfig = paramDeserializationContext.getConfig();
    if (paramJavaType.isEnumType()) {
      return paramDeserializerFactory.createEnumDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
    }
    if (paramJavaType.isContainerType())
    {
      if (paramJavaType.isArrayType()) {
        return paramDeserializerFactory.createArrayDeserializer(paramDeserializationContext, (ArrayType)paramJavaType, paramBeanDescription);
      }
      if (paramJavaType.isMapLikeType())
      {
        paramJavaType = (MapLikeType)paramJavaType;
        if (paramJavaType.isTrueMapType()) {
          return paramDeserializerFactory.createMapDeserializer(paramDeserializationContext, (MapType)paramJavaType, paramBeanDescription);
        }
        return paramDeserializerFactory.createMapLikeDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
      }
      if (paramJavaType.isCollectionLikeType())
      {
        JsonFormat.Value localValue = paramBeanDescription.findExpectedFormat(null);
        if ((localValue == null) || (localValue.getShape() != JsonFormat.Shape.OBJECT))
        {
          paramJavaType = (CollectionLikeType)paramJavaType;
          if (paramJavaType.isTrueCollectionType()) {
            return paramDeserializerFactory.createCollectionDeserializer(paramDeserializationContext, (CollectionType)paramJavaType, paramBeanDescription);
          }
          return paramDeserializerFactory.createCollectionLikeDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
        }
      }
    }
    if (JsonNode.class.isAssignableFrom(paramJavaType.getRawClass())) {
      return paramDeserializerFactory.createTreeDeserializer(localDeserializationConfig, paramJavaType, paramBeanDescription);
    }
    return paramDeserializerFactory.createBeanDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
  }
  
  protected final JsonDeserializer<Object> _findCachedDeserializer(JavaType paramJavaType)
  {
    if (paramJavaType == null) {
      throw new IllegalArgumentException("Null JavaType passed");
    }
    if (_hasCustomValueHandler(paramJavaType)) {
      return null;
    }
    return (JsonDeserializer)_cachedDeserializers.get(paramJavaType);
  }
  
  protected final KeyDeserializer _handleUnknownKeyDeserializer(JavaType paramJavaType)
  {
    throw new JsonMappingException("Can not find a (Map) Key deserializer for type " + paramJavaType);
  }
  
  protected final JsonDeserializer<Object> _handleUnknownValueDeserializer(JavaType paramJavaType)
  {
    if (!ClassUtil.isConcrete(paramJavaType.getRawClass())) {
      throw new JsonMappingException("Can not find a Value deserializer for abstract type " + paramJavaType);
    }
    throw new JsonMappingException("Can not find a Value deserializer for type " + paramJavaType);
  }
  
  public final int cachedDeserializersCount()
  {
    return _cachedDeserializers.size();
  }
  
  protected final Converter<Object, Object> findConverter(DeserializationContext paramDeserializationContext, Annotated paramAnnotated)
  {
    Object localObject = paramDeserializationContext.getAnnotationIntrospector().findDeserializationConverter(paramAnnotated);
    if (localObject == null) {
      return null;
    }
    return paramDeserializationContext.converterInstance(paramAnnotated, localObject);
  }
  
  protected final JsonDeserializer<Object> findConvertingDeserializer(DeserializationContext paramDeserializationContext, Annotated paramAnnotated, JsonDeserializer<Object> paramJsonDeserializer)
  {
    paramAnnotated = findConverter(paramDeserializationContext, paramAnnotated);
    if (paramAnnotated == null) {
      return paramJsonDeserializer;
    }
    return new StdDelegatingDeserializer(paramAnnotated, paramAnnotated.getInputType(paramDeserializationContext.getTypeFactory()), paramJsonDeserializer);
  }
  
  protected final JsonDeserializer<Object> findDeserializerFromAnnotation(DeserializationContext paramDeserializationContext, Annotated paramAnnotated)
  {
    Object localObject = paramDeserializationContext.getAnnotationIntrospector().findDeserializer(paramAnnotated);
    if (localObject == null) {
      return null;
    }
    return findConvertingDeserializer(paramDeserializationContext, paramAnnotated, paramDeserializationContext.deserializerInstance(paramAnnotated, localObject));
  }
  
  public final KeyDeserializer findKeyDeserializer(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    KeyDeserializer localKeyDeserializer = paramDeserializerFactory.createKeyDeserializer(paramDeserializationContext, paramJavaType);
    if (localKeyDeserializer == null) {
      paramDeserializerFactory = _handleUnknownKeyDeserializer(paramJavaType);
    }
    do
    {
      return paramDeserializerFactory;
      paramDeserializerFactory = localKeyDeserializer;
    } while (!(localKeyDeserializer instanceof ResolvableDeserializer));
    ((ResolvableDeserializer)localKeyDeserializer).resolve(paramDeserializationContext);
    return localKeyDeserializer;
  }
  
  public final JsonDeserializer<Object> findValueDeserializer(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    JsonDeserializer localJsonDeserializer = _findCachedDeserializer(paramJavaType);
    Object localObject = localJsonDeserializer;
    if (localJsonDeserializer == null)
    {
      paramDeserializationContext = _createAndCacheValueDeserializer(paramDeserializationContext, paramDeserializerFactory, paramJavaType);
      localObject = paramDeserializationContext;
      if (paramDeserializationContext == null) {
        localObject = _handleUnknownValueDeserializer(paramJavaType);
      }
    }
    return (JsonDeserializer<Object>)localObject;
  }
  
  public final void flushCachedDeserializers()
  {
    _cachedDeserializers.clear();
  }
  
  public final boolean hasValueDeserializerFor(DeserializationContext paramDeserializationContext, DeserializerFactory paramDeserializerFactory, JavaType paramJavaType)
  {
    JsonDeserializer localJsonDeserializer2 = _findCachedDeserializer(paramJavaType);
    JsonDeserializer localJsonDeserializer1 = localJsonDeserializer2;
    if (localJsonDeserializer2 == null) {
      localJsonDeserializer1 = _createAndCacheValueDeserializer(paramDeserializationContext, paramDeserializerFactory, paramJavaType);
    }
    return localJsonDeserializer1 != null;
  }
  
  final Object writeReplace()
  {
    _incompleteDeserializers.clear();
    return this;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.DeserializerCache
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */