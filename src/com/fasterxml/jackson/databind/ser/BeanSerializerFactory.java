package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty.Std;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.cfg.SerializerFactoryConfig;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter;
import com.fasterxml.jackson.databind.ser.impl.ObjectIdWriter;
import com.fasterxml.jackson.databind.ser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.fasterxml.jackson.databind.ser.std.StdDelegatingSerializer;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.Converter;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class BeanSerializerFactory
  extends BasicSerializerFactory
  implements Serializable
{
  public static final BeanSerializerFactory instance = new BeanSerializerFactory(null);
  private static final long serialVersionUID = 1L;
  
  protected BeanSerializerFactory(SerializerFactoryConfig paramSerializerFactoryConfig)
  {
    super(paramSerializerFactoryConfig);
  }
  
  protected BeanPropertyWriter _constructWriter(SerializerProvider paramSerializerProvider, BeanPropertyDefinition paramBeanPropertyDefinition, TypeBindings paramTypeBindings, PropertyBuilder paramPropertyBuilder, boolean paramBoolean, AnnotatedMember paramAnnotatedMember)
  {
    Object localObject = paramBeanPropertyDefinition.getFullName();
    if (paramSerializerProvider.canOverrideAccessModifiers()) {
      paramAnnotatedMember.fixAccess();
    }
    JavaType localJavaType = paramAnnotatedMember.getType(paramTypeBindings);
    paramTypeBindings = new BeanProperty.Std((PropertyName)localObject, localJavaType, paramBeanPropertyDefinition.getWrapperName(), paramPropertyBuilder.getClassAnnotations(), paramAnnotatedMember, paramBeanPropertyDefinition.getMetadata());
    localObject = findSerializerFromAnnotation(paramSerializerProvider, paramAnnotatedMember);
    if ((localObject instanceof ResolvableSerializer)) {
      ((ResolvableSerializer)localObject).resolve(paramSerializerProvider);
    }
    localObject = paramSerializerProvider.handlePrimaryContextualization((JsonSerializer)localObject, paramTypeBindings);
    paramTypeBindings = null;
    if ((ClassUtil.isCollectionMapOrArray(localJavaType.getRawClass())) || (localJavaType.isCollectionLikeType()) || (localJavaType.isMapLikeType())) {
      paramTypeBindings = findPropertyContentTypeSerializer(localJavaType, paramSerializerProvider.getConfig(), paramAnnotatedMember);
    }
    return paramPropertyBuilder.buildWriter(paramSerializerProvider, paramBeanPropertyDefinition, localJavaType, (JsonSerializer)localObject, findPropertyTypeSerializer(localJavaType, paramSerializerProvider.getConfig(), paramAnnotatedMember), paramTypeBindings, paramAnnotatedMember, paramBoolean);
  }
  
  protected JsonSerializer<?> _createSerializer2(SerializerProvider paramSerializerProvider, JavaType paramJavaType, BeanDescription paramBeanDescription, boolean paramBoolean)
  {
    Object localObject2 = findSerializerByAnnotations(paramSerializerProvider, paramJavaType, paramBeanDescription);
    if (localObject2 != null) {}
    SerializationConfig localSerializationConfig;
    boolean bool;
    Object localObject1;
    do
    {
      return (JsonSerializer<?>)localObject2;
      localSerializationConfig = paramSerializerProvider.getConfig();
      if (!paramJavaType.isContainerType()) {
        break;
      }
      bool = paramBoolean;
      if (!paramBoolean) {
        bool = usesStaticTyping(localSerializationConfig, paramBeanDescription, null);
      }
      localObject1 = buildContainerSerializer(paramSerializerProvider, paramJavaType, paramBeanDescription, bool);
      localObject2 = localObject1;
    } while (localObject1 != null);
    localObject2 = localObject1;
    for (;;)
    {
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = findSerializerByLookup(paramJavaType, localSerializationConfig, paramBeanDescription, bool);
        localObject1 = localObject2;
        if (localObject2 == null)
        {
          localObject2 = findSerializerByPrimaryType(paramSerializerProvider, paramJavaType, paramBeanDescription, bool);
          localObject1 = localObject2;
          if (localObject2 == null)
          {
            localObject2 = findBeanSerializer(paramSerializerProvider, paramJavaType, paramBeanDescription);
            localObject1 = localObject2;
            if (localObject2 == null)
            {
              paramJavaType = findSerializerByAddonType(localSerializationConfig, paramJavaType, paramBeanDescription, bool);
              localObject1 = paramJavaType;
              if (paramJavaType == null) {
                localObject1 = paramSerializerProvider.getUnknownTypeSerializer(paramBeanDescription.getBeanClass());
              }
            }
          }
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        break;
      }
      localObject2 = localObject1;
      if (!_factoryConfig.hasSerializerModifiers()) {
        break;
      }
      paramSerializerProvider = _factoryConfig.serializerModifiers().iterator();
      while (paramSerializerProvider.hasNext()) {
        localObject1 = ((BeanSerializerModifier)paramSerializerProvider.next()).modifySerializer(localSerializationConfig, paramBeanDescription, (JsonSerializer)localObject1);
      }
      Iterator localIterator = customSerializers().iterator();
      do
      {
        bool = paramBoolean;
        if (!localIterator.hasNext()) {
          break;
        }
        localObject1 = ((Serializers)localIterator.next()).findSerializer(localSerializationConfig, paramJavaType, paramBeanDescription);
        localObject2 = localObject1;
      } while (localObject1 == null);
      localObject2 = localObject1;
      bool = paramBoolean;
    }
    return (JsonSerializer<?>)localObject1;
  }
  
  protected JsonSerializer<Object> constructBeanSerializer(SerializerProvider paramSerializerProvider, BeanDescription paramBeanDescription)
  {
    if (paramBeanDescription.getBeanClass() == Object.class)
    {
      paramSerializerProvider = paramSerializerProvider.getUnknownTypeSerializer(Object.class);
      return paramSerializerProvider;
    }
    SerializationConfig localSerializationConfig = paramSerializerProvider.getConfig();
    Object localObject2 = constructBeanSerializerBuilder(paramBeanDescription);
    ((BeanSerializerBuilder)localObject2).setConfig(localSerializationConfig);
    Object localObject3 = findBeanProperties(paramSerializerProvider, paramBeanDescription, (BeanSerializerBuilder)localObject2);
    Object localObject1 = localObject3;
    if (localObject3 == null) {
      localObject1 = new ArrayList();
    }
    paramSerializerProvider.getAnnotationIntrospector().findAndAddVirtualProperties(localSerializationConfig, paramBeanDescription.getClassInfo(), (List)localObject1);
    Object localObject4;
    if (_factoryConfig.hasSerializerModifiers())
    {
      localObject4 = _factoryConfig.serializerModifiers().iterator();
      for (;;)
      {
        localObject3 = localObject1;
        if (!((Iterator)localObject4).hasNext()) {
          break;
        }
        localObject1 = ((BeanSerializerModifier)((Iterator)localObject4).next()).changeProperties(localSerializationConfig, paramBeanDescription, (List)localObject1);
      }
    }
    localObject3 = localObject1;
    localObject1 = filterBeanProperties(localSerializationConfig, paramBeanDescription, (List)localObject3);
    if (_factoryConfig.hasSerializerModifiers())
    {
      localObject4 = _factoryConfig.serializerModifiers().iterator();
      for (;;)
      {
        localObject3 = localObject1;
        if (!((Iterator)localObject4).hasNext()) {
          break;
        }
        localObject1 = ((BeanSerializerModifier)((Iterator)localObject4).next()).orderProperties(localSerializationConfig, paramBeanDescription, (List)localObject1);
      }
    }
    localObject3 = localObject1;
    ((BeanSerializerBuilder)localObject2).setObjectIdWriter(constructObjectIdHandler(paramSerializerProvider, paramBeanDescription, (List)localObject3));
    ((BeanSerializerBuilder)localObject2).setProperties((List)localObject3);
    ((BeanSerializerBuilder)localObject2).setFilterId(findFilterId(localSerializationConfig, paramBeanDescription));
    localObject1 = paramBeanDescription.findAnyGetter();
    if (localObject1 != null)
    {
      if (localSerializationConfig.canOverrideAccessModifiers()) {
        ((AnnotatedMember)localObject1).fixAccess();
      }
      localObject4 = ((AnnotatedMember)localObject1).getType(paramBeanDescription.bindingsForBeanType());
      boolean bool = localSerializationConfig.isEnabled(MapperFeature.USE_STATIC_TYPING);
      localObject3 = ((JavaType)localObject4).getContentType();
      TypeSerializer localTypeSerializer = createTypeSerializer(localSerializationConfig, (JavaType)localObject3);
      paramSerializerProvider = findSerializerFromAnnotation(paramSerializerProvider, (Annotated)localObject1);
      if (paramSerializerProvider != null) {
        break label490;
      }
      paramSerializerProvider = MapSerializer.construct(null, (JavaType)localObject4, bool, localTypeSerializer, null, null, null);
    }
    label490:
    for (;;)
    {
      ((BeanSerializerBuilder)localObject2).setAnyGetter(new AnyGetterWriter(new BeanProperty.Std(new PropertyName(((AnnotatedMember)localObject1).getName()), (JavaType)localObject3, null, paramBeanDescription.getClassAnnotations(), (AnnotatedMember)localObject1, PropertyMetadata.STD_OPTIONAL), (AnnotatedMember)localObject1, paramSerializerProvider));
      processViews(localSerializationConfig, (BeanSerializerBuilder)localObject2);
      if (_factoryConfig.hasSerializerModifiers())
      {
        localObject3 = _factoryConfig.serializerModifiers().iterator();
        for (paramSerializerProvider = (SerializerProvider)localObject2;; paramSerializerProvider = ((BeanSerializerModifier)((Iterator)localObject3).next()).updateBuilder(localSerializationConfig, paramBeanDescription, paramSerializerProvider))
        {
          localObject1 = paramSerializerProvider;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
        }
      }
      localObject1 = localObject2;
      localObject2 = ((BeanSerializerBuilder)localObject1).build();
      paramSerializerProvider = (SerializerProvider)localObject2;
      if (localObject2 != null) {
        break;
      }
      paramSerializerProvider = (SerializerProvider)localObject2;
      if (!paramBeanDescription.hasKnownClassAnnotations()) {
        break;
      }
      return ((BeanSerializerBuilder)localObject1).createDummy();
    }
  }
  
  protected BeanSerializerBuilder constructBeanSerializerBuilder(BeanDescription paramBeanDescription)
  {
    return new BeanSerializerBuilder(paramBeanDescription);
  }
  
  protected BeanPropertyWriter constructFilteredBeanWriter(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    return FilteredBeanPropertyWriter.constructViewBased(paramBeanPropertyWriter, paramArrayOfClass);
  }
  
  protected ObjectIdWriter constructObjectIdHandler(SerializerProvider paramSerializerProvider, BeanDescription paramBeanDescription, List<BeanPropertyWriter> paramList)
  {
    ObjectIdInfo localObjectIdInfo = paramBeanDescription.getObjectIdInfo();
    if (localObjectIdInfo == null) {
      return null;
    }
    Object localObject = localObjectIdInfo.getGeneratorType();
    if (localObject == ObjectIdGenerators.PropertyGenerator.class)
    {
      paramSerializerProvider = localObjectIdInfo.getPropertyName().getSimpleName();
      int j = paramList.size();
      int i = 0;
      for (;;)
      {
        if (i == j) {
          throw new IllegalArgumentException("Invalid Object Id definition for " + paramBeanDescription.getBeanClass().getName() + ": can not find property with name '" + paramSerializerProvider + "'");
        }
        localObject = (BeanPropertyWriter)paramList.get(i);
        if (paramSerializerProvider.equals(((BeanPropertyWriter)localObject).getName()))
        {
          if (i > 0)
          {
            paramList.remove(i);
            paramList.add(0, localObject);
          }
          return ObjectIdWriter.construct(((BeanPropertyWriter)localObject).getType(), null, new PropertyBasedObjectIdGenerator(localObjectIdInfo, (BeanPropertyWriter)localObject), localObjectIdInfo.getAlwaysAsId());
        }
        i += 1;
      }
    }
    paramList = paramSerializerProvider.constructType((Type)localObject);
    paramList = paramSerializerProvider.getTypeFactory().findTypeParameters(paramList, com.fasterxml.jackson.annotation.ObjectIdGenerator.class)[0];
    paramSerializerProvider = paramSerializerProvider.objectIdGeneratorInstance(paramBeanDescription.getClassInfo(), localObjectIdInfo);
    return ObjectIdWriter.construct(paramList, localObjectIdInfo.getPropertyName(), paramSerializerProvider, localObjectIdInfo.getAlwaysAsId());
  }
  
  protected PropertyBuilder constructPropertyBuilder(SerializationConfig paramSerializationConfig, BeanDescription paramBeanDescription)
  {
    return new PropertyBuilder(paramSerializationConfig, paramBeanDescription);
  }
  
  public JsonSerializer<Object> createSerializer(SerializerProvider paramSerializerProvider, JavaType paramJavaType)
  {
    SerializationConfig localSerializationConfig = paramSerializerProvider.getConfig();
    Object localObject = localSerializationConfig.introspect(paramJavaType);
    JsonSerializer localJsonSerializer = findSerializerFromAnnotation(paramSerializerProvider, ((BeanDescription)localObject).getClassInfo());
    if (localJsonSerializer != null) {
      return localJsonSerializer;
    }
    JavaType localJavaType2 = modifyTypeByAnnotation(localSerializationConfig, ((BeanDescription)localObject).getClassInfo(), paramJavaType);
    boolean bool;
    if (localJavaType2 == paramJavaType)
    {
      bool = false;
      paramJavaType = (JavaType)localObject;
    }
    for (;;)
    {
      Converter localConverter = paramJavaType.findSerializationConverter();
      if (localConverter == null)
      {
        return _createSerializer2(paramSerializerProvider, localJavaType2, paramJavaType, bool);
        if (!localJavaType2.hasRawClass(paramJavaType.getRawClass()))
        {
          paramJavaType = localSerializationConfig.introspect(localJavaType2);
          bool = true;
        }
      }
      else
      {
        JavaType localJavaType1 = localConverter.getOutputType(paramSerializerProvider.getTypeFactory());
        if (!localJavaType1.hasRawClass(localJavaType2.getRawClass()))
        {
          paramJavaType = localSerializationConfig.introspect(localJavaType1);
          localJsonSerializer = findSerializerFromAnnotation(paramSerializerProvider, paramJavaType.getClassInfo());
        }
        for (;;)
        {
          localObject = localJsonSerializer;
          if (localJsonSerializer == null)
          {
            localObject = localJsonSerializer;
            if (!localJavaType1.isJavaLangObject()) {
              localObject = _createSerializer2(paramSerializerProvider, localJavaType1, paramJavaType, true);
            }
          }
          return new StdDelegatingSerializer(localConverter, localJavaType1, (JsonSerializer)localObject);
        }
      }
      bool = true;
      paramJavaType = (JavaType)localObject;
    }
  }
  
  protected Iterable<Serializers> customSerializers()
  {
    return _factoryConfig.serializers();
  }
  
  protected List<BeanPropertyWriter> filterBeanProperties(SerializationConfig paramSerializationConfig, BeanDescription paramBeanDescription, List<BeanPropertyWriter> paramList)
  {
    paramSerializationConfig = paramSerializationConfig.getAnnotationIntrospector().findPropertiesToIgnore(paramBeanDescription.getClassInfo());
    if ((paramSerializationConfig != null) && (paramSerializationConfig.length > 0))
    {
      paramSerializationConfig = ArrayBuilders.arrayToSet(paramSerializationConfig);
      paramBeanDescription = paramList.iterator();
      while (paramBeanDescription.hasNext()) {
        if (paramSerializationConfig.contains(((BeanPropertyWriter)paramBeanDescription.next()).getName())) {
          paramBeanDescription.remove();
        }
      }
    }
    return paramList;
  }
  
  protected List<BeanPropertyWriter> findBeanProperties(SerializerProvider paramSerializerProvider, BeanDescription paramBeanDescription, BeanSerializerBuilder paramBeanSerializerBuilder)
  {
    Object localObject = paramBeanDescription.findProperties();
    SerializationConfig localSerializationConfig = paramSerializerProvider.getConfig();
    removeIgnorableTypes(localSerializationConfig, paramBeanDescription, (List)localObject);
    if (localSerializationConfig.isEnabled(MapperFeature.REQUIRE_SETTERS_FOR_GETTERS)) {
      removeSetterlessGetters(localSerializationConfig, paramBeanDescription, (List)localObject);
    }
    if (((List)localObject).isEmpty()) {
      return null;
    }
    boolean bool = usesStaticTyping(localSerializationConfig, paramBeanDescription, null);
    PropertyBuilder localPropertyBuilder = constructPropertyBuilder(localSerializationConfig, paramBeanDescription);
    ArrayList localArrayList = new ArrayList(((List)localObject).size());
    paramBeanDescription = paramBeanDescription.bindingsForBeanType();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      BeanPropertyDefinition localBeanPropertyDefinition = (BeanPropertyDefinition)((Iterator)localObject).next();
      AnnotatedMember localAnnotatedMember = localBeanPropertyDefinition.getAccessor();
      if (localBeanPropertyDefinition.isTypeId())
      {
        if (localAnnotatedMember != null)
        {
          if (localSerializationConfig.canOverrideAccessModifiers()) {
            localAnnotatedMember.fixAccess();
          }
          paramBeanSerializerBuilder.setTypeId(localAnnotatedMember);
        }
      }
      else
      {
        AnnotationIntrospector.ReferenceProperty localReferenceProperty = localBeanPropertyDefinition.findReferenceType();
        if ((localReferenceProperty == null) || (!localReferenceProperty.isBackReference())) {
          if ((localAnnotatedMember instanceof AnnotatedMethod)) {
            localArrayList.add(_constructWriter(paramSerializerProvider, localBeanPropertyDefinition, paramBeanDescription, localPropertyBuilder, bool, (AnnotatedMethod)localAnnotatedMember));
          } else {
            localArrayList.add(_constructWriter(paramSerializerProvider, localBeanPropertyDefinition, paramBeanDescription, localPropertyBuilder, bool, (AnnotatedField)localAnnotatedMember));
          }
        }
      }
    }
    return localArrayList;
  }
  
  public JsonSerializer<Object> findBeanSerializer(SerializerProvider paramSerializerProvider, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    if ((!isPotentialBeanType(paramJavaType.getRawClass())) && (!paramJavaType.isEnumType())) {
      return null;
    }
    return constructBeanSerializer(paramSerializerProvider, paramBeanDescription);
  }
  
  public TypeSerializer findPropertyContentTypeSerializer(JavaType paramJavaType, SerializationConfig paramSerializationConfig, AnnotatedMember paramAnnotatedMember)
  {
    JavaType localJavaType = paramJavaType.getContentType();
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    paramJavaType = localAnnotationIntrospector.findPropertyContentTypeResolver(paramSerializationConfig, paramAnnotatedMember, paramJavaType);
    if (paramJavaType == null) {
      return createTypeSerializer(paramSerializationConfig, localJavaType);
    }
    return paramJavaType.buildTypeSerializer(paramSerializationConfig, localJavaType, paramSerializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramSerializationConfig, localAnnotationIntrospector, localJavaType));
  }
  
  public TypeSerializer findPropertyTypeSerializer(JavaType paramJavaType, SerializationConfig paramSerializationConfig, AnnotatedMember paramAnnotatedMember)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    TypeResolverBuilder localTypeResolverBuilder = localAnnotationIntrospector.findPropertyTypeResolver(paramSerializationConfig, paramAnnotatedMember, paramJavaType);
    if (localTypeResolverBuilder == null) {
      return createTypeSerializer(paramSerializationConfig, paramJavaType);
    }
    return localTypeResolverBuilder.buildTypeSerializer(paramSerializationConfig, paramJavaType, paramSerializationConfig.getSubtypeResolver().collectAndResolveSubtypes(paramAnnotatedMember, paramSerializationConfig, localAnnotationIntrospector, paramJavaType));
  }
  
  protected boolean isPotentialBeanType(Class<?> paramClass)
  {
    return (ClassUtil.canBeABeanType(paramClass) == null) && (!ClassUtil.isProxyType(paramClass));
  }
  
  protected void processViews(SerializationConfig paramSerializationConfig, BeanSerializerBuilder paramBeanSerializerBuilder)
  {
    List localList = paramBeanSerializerBuilder.getProperties();
    boolean bool = paramSerializationConfig.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION);
    int m = localList.size();
    paramSerializationConfig = new BeanPropertyWriter[m];
    int k = 0;
    int i = 0;
    if (k < m)
    {
      BeanPropertyWriter localBeanPropertyWriter = (BeanPropertyWriter)localList.get(k);
      Class[] arrayOfClass = localBeanPropertyWriter.getViews();
      int j;
      if (arrayOfClass == null)
      {
        j = i;
        if (!bool) {
          break label108;
        }
        paramSerializationConfig[k] = localBeanPropertyWriter;
      }
      for (;;)
      {
        k += 1;
        break;
        j = i + 1;
        paramSerializationConfig[k] = constructFilteredBeanWriter(localBeanPropertyWriter, arrayOfClass);
        label108:
        i = j;
      }
    }
    if ((bool) && (i == 0)) {
      return;
    }
    paramBeanSerializerBuilder.setFilteredProperties(paramSerializationConfig);
  }
  
  protected void removeIgnorableTypes(SerializationConfig paramSerializationConfig, BeanDescription paramBeanDescription, List<BeanPropertyDefinition> paramList)
  {
    AnnotationIntrospector localAnnotationIntrospector = paramSerializationConfig.getAnnotationIntrospector();
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      paramBeanDescription = ((BeanPropertyDefinition)localIterator.next()).getAccessor();
      if (paramBeanDescription == null)
      {
        localIterator.remove();
      }
      else
      {
        Class localClass = paramBeanDescription.getRawType();
        paramList = (Boolean)localHashMap.get(localClass);
        paramBeanDescription = paramList;
        if (paramList == null)
        {
          paramList = localAnnotationIntrospector.isIgnorableType(paramSerializationConfig.introspectClassAnnotations(localClass).getClassInfo());
          paramBeanDescription = paramList;
          if (paramList == null) {
            paramBeanDescription = Boolean.FALSE;
          }
          localHashMap.put(localClass, paramBeanDescription);
        }
        if (paramBeanDescription.booleanValue()) {
          localIterator.remove();
        }
      }
    }
  }
  
  protected void removeSetterlessGetters(SerializationConfig paramSerializationConfig, BeanDescription paramBeanDescription, List<BeanPropertyDefinition> paramList)
  {
    paramSerializationConfig = paramList.iterator();
    while (paramSerializationConfig.hasNext())
    {
      paramBeanDescription = (BeanPropertyDefinition)paramSerializationConfig.next();
      if ((!paramBeanDescription.couldDeserialize()) && (!paramBeanDescription.isExplicitlyIncluded())) {
        paramSerializationConfig.remove();
      }
    }
  }
  
  public SerializerFactory withConfig(SerializerFactoryConfig paramSerializerFactoryConfig)
  {
    if (_factoryConfig == paramSerializerFactoryConfig) {
      return this;
    }
    if (getClass() != BeanSerializerFactory.class) {
      throw new IllegalStateException("Subtype of BeanSerializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalSerializers': can not instantiate subtype with additional serializer definitions");
    }
    return new BeanSerializerFactory(paramSerializerFactoryConfig);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.BeanSerializerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */