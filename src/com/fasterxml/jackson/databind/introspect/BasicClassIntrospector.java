package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.type.SimpleType;
import com.fasterxml.jackson.databind.util.LRUMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

public class BasicClassIntrospector
  extends ClassIntrospector
  implements Serializable
{
  protected static final BasicBeanDescription BOOLEAN_DESC;
  protected static final BasicBeanDescription INT_DESC;
  protected static final BasicBeanDescription LONG_DESC;
  protected static final BasicBeanDescription STRING_DESC;
  @Deprecated
  public static final BasicClassIntrospector instance = new BasicClassIntrospector();
  private static final long serialVersionUID = 1L;
  protected final LRUMap<JavaType, BasicBeanDescription> _cachedFCA = new LRUMap(16, 64);
  
  static
  {
    AnnotatedClass localAnnotatedClass = AnnotatedClass.constructWithoutSuperTypes(String.class, null, null);
    STRING_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(String.class), localAnnotatedClass);
    localAnnotatedClass = AnnotatedClass.constructWithoutSuperTypes(Boolean.TYPE, null, null);
    BOOLEAN_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Boolean.TYPE), localAnnotatedClass);
    localAnnotatedClass = AnnotatedClass.constructWithoutSuperTypes(Integer.TYPE, null, null);
    INT_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Integer.TYPE), localAnnotatedClass);
    localAnnotatedClass = AnnotatedClass.constructWithoutSuperTypes(Long.TYPE, null, null);
    LONG_DESC = BasicBeanDescription.forOtherUse(null, SimpleType.constructUnsafe(Long.TYPE), localAnnotatedClass);
  }
  
  protected BasicBeanDescription _findStdJdkCollectionDesc(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (_isStdJDKCollection(paramJavaType))
    {
      Class localClass = paramJavaType.getRawClass();
      localObject1 = localObject2;
      if (paramMapperConfig.isAnnotationProcessingEnabled()) {
        localObject1 = paramMapperConfig.getAnnotationIntrospector();
      }
      localObject1 = BasicBeanDescription.forOtherUse(paramMapperConfig, paramJavaType, AnnotatedClass.construct(localClass, (AnnotationIntrospector)localObject1, paramMixInResolver));
    }
    return (BasicBeanDescription)localObject1;
  }
  
  protected BasicBeanDescription _findStdTypeDesc(JavaType paramJavaType)
  {
    paramJavaType = paramJavaType.getRawClass();
    if (paramJavaType.isPrimitive())
    {
      if (paramJavaType == Boolean.TYPE) {
        return BOOLEAN_DESC;
      }
      if (paramJavaType == Integer.TYPE) {
        return INT_DESC;
      }
      if (paramJavaType == Long.TYPE) {
        return LONG_DESC;
      }
    }
    else if (paramJavaType == String.class)
    {
      return STRING_DESC;
    }
    return null;
  }
  
  protected boolean _isStdJDKCollection(JavaType paramJavaType)
  {
    if ((!paramJavaType.isContainerType()) || (paramJavaType.isArrayType())) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        paramJavaType = paramJavaType.getRawClass();
        localObject = paramJavaType.getPackage();
      } while (localObject == null);
      localObject = ((Package)localObject).getName();
    } while (((!((String)localObject).startsWith("java.lang")) && (!((String)localObject).startsWith("java.util"))) || ((!Collection.class.isAssignableFrom(paramJavaType)) && (!Map.class.isAssignableFrom(paramJavaType))));
    return true;
  }
  
  protected POJOPropertiesCollector collectProperties(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver, boolean paramBoolean, String paramString)
  {
    boolean bool = paramMapperConfig.isAnnotationProcessingEnabled();
    Class localClass = paramJavaType.getRawClass();
    if (bool) {}
    for (AnnotationIntrospector localAnnotationIntrospector = paramMapperConfig.getAnnotationIntrospector();; localAnnotationIntrospector = null) {
      return constructPropertyCollector(paramMapperConfig, AnnotatedClass.construct(localClass, localAnnotationIntrospector, paramMixInResolver), paramJavaType, paramBoolean, paramString).collect();
    }
  }
  
  protected POJOPropertiesCollector collectPropertiesWithBuilder(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver, boolean paramBoolean)
  {
    Object localObject = null;
    AnnotationIntrospector localAnnotationIntrospector;
    AnnotatedClass localAnnotatedClass;
    if (paramMapperConfig.isAnnotationProcessingEnabled())
    {
      localAnnotationIntrospector = paramMapperConfig.getAnnotationIntrospector();
      localAnnotatedClass = AnnotatedClass.construct(paramJavaType.getRawClass(), localAnnotationIntrospector, paramMixInResolver);
      if (localAnnotationIntrospector != null) {
        break label64;
      }
      paramMixInResolver = (ClassIntrospector.MixInResolver)localObject;
      label36:
      if (paramMixInResolver != null) {
        break label75;
      }
    }
    label64:
    label75:
    for (paramMixInResolver = "with";; paramMixInResolver = withPrefix)
    {
      return constructPropertyCollector(paramMapperConfig, localAnnotatedClass, paramJavaType, paramBoolean, paramMixInResolver).collect();
      localAnnotationIntrospector = null;
      break;
      paramMixInResolver = localAnnotationIntrospector.findPOJOBuilderConfig(localAnnotatedClass);
      break label36;
    }
  }
  
  protected POJOPropertiesCollector constructPropertyCollector(MapperConfig<?> paramMapperConfig, AnnotatedClass paramAnnotatedClass, JavaType paramJavaType, boolean paramBoolean, String paramString)
  {
    return new POJOPropertiesCollector(paramMapperConfig, paramBoolean, paramJavaType, paramAnnotatedClass, paramString);
  }
  
  public BasicBeanDescription forClassAnnotations(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    Object localObject2 = _findStdTypeDesc(paramJavaType);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject2 = (BasicBeanDescription)_cachedFCA.get(paramJavaType);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        boolean bool = paramMapperConfig.isAnnotationProcessingEnabled();
        localObject2 = paramJavaType.getRawClass();
        if (!bool) {
          break label90;
        }
      }
    }
    label90:
    for (localObject1 = paramMapperConfig.getAnnotationIntrospector();; localObject1 = null)
    {
      localObject1 = BasicBeanDescription.forOtherUse(paramMapperConfig, paramJavaType, AnnotatedClass.construct((Class)localObject2, (AnnotationIntrospector)localObject1, paramMixInResolver));
      _cachedFCA.put(paramJavaType, localObject1);
      return (BasicBeanDescription)localObject1;
    }
  }
  
  public BasicBeanDescription forCreation(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    BasicBeanDescription localBasicBeanDescription2 = _findStdTypeDesc(paramJavaType);
    BasicBeanDescription localBasicBeanDescription1 = localBasicBeanDescription2;
    if (localBasicBeanDescription2 == null)
    {
      localBasicBeanDescription2 = _findStdJdkCollectionDesc(paramDeserializationConfig, paramJavaType, paramMixInResolver);
      localBasicBeanDescription1 = localBasicBeanDescription2;
      if (localBasicBeanDescription2 == null) {
        localBasicBeanDescription1 = BasicBeanDescription.forDeserialization(collectProperties(paramDeserializationConfig, paramJavaType, paramMixInResolver, false, "set"));
      }
    }
    return localBasicBeanDescription1;
  }
  
  public BasicBeanDescription forDeserialization(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    BasicBeanDescription localBasicBeanDescription2 = _findStdTypeDesc(paramJavaType);
    BasicBeanDescription localBasicBeanDescription1 = localBasicBeanDescription2;
    if (localBasicBeanDescription2 == null)
    {
      localBasicBeanDescription2 = _findStdJdkCollectionDesc(paramDeserializationConfig, paramJavaType, paramMixInResolver);
      localBasicBeanDescription1 = localBasicBeanDescription2;
      if (localBasicBeanDescription2 == null) {
        localBasicBeanDescription1 = BasicBeanDescription.forDeserialization(collectProperties(paramDeserializationConfig, paramJavaType, paramMixInResolver, false, "set"));
      }
      _cachedFCA.putIfAbsent(paramJavaType, localBasicBeanDescription1);
    }
    return localBasicBeanDescription1;
  }
  
  public BasicBeanDescription forDeserializationWithBuilder(DeserializationConfig paramDeserializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    paramDeserializationConfig = BasicBeanDescription.forDeserialization(collectPropertiesWithBuilder(paramDeserializationConfig, paramJavaType, paramMixInResolver, false));
    _cachedFCA.putIfAbsent(paramJavaType, paramDeserializationConfig);
    return paramDeserializationConfig;
  }
  
  public BasicBeanDescription forDirectClassAnnotations(MapperConfig<?> paramMapperConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    Object localObject2 = _findStdTypeDesc(paramJavaType);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      boolean bool = paramMapperConfig.isAnnotationProcessingEnabled();
      localObject1 = paramMapperConfig.getAnnotationIntrospector();
      localObject2 = paramJavaType.getRawClass();
      if (!bool) {
        break label57;
      }
    }
    for (;;)
    {
      localObject1 = BasicBeanDescription.forOtherUse(paramMapperConfig, paramJavaType, AnnotatedClass.constructWithoutSuperTypes((Class)localObject2, (AnnotationIntrospector)localObject1, paramMixInResolver));
      return (BasicBeanDescription)localObject1;
      label57:
      localObject1 = null;
    }
  }
  
  public BasicBeanDescription forSerialization(SerializationConfig paramSerializationConfig, JavaType paramJavaType, ClassIntrospector.MixInResolver paramMixInResolver)
  {
    BasicBeanDescription localBasicBeanDescription2 = _findStdTypeDesc(paramJavaType);
    BasicBeanDescription localBasicBeanDescription1 = localBasicBeanDescription2;
    if (localBasicBeanDescription2 == null)
    {
      localBasicBeanDescription2 = _findStdJdkCollectionDesc(paramSerializationConfig, paramJavaType, paramMixInResolver);
      localBasicBeanDescription1 = localBasicBeanDescription2;
      if (localBasicBeanDescription2 == null) {
        localBasicBeanDescription1 = BasicBeanDescription.forSerialization(collectProperties(paramSerializationConfig, paramJavaType, paramMixInResolver, true, "set"));
      }
      _cachedFCA.putIfAbsent(paramJavaType, localBasicBeanDescription1);
    }
    return localBasicBeanDescription1;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.BasicClassIntrospector
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */