package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.annotation.ObjectIdGenerators.PropertyGenerator;
import com.fasterxml.jackson.annotation.ObjectIdResolver;
import com.fasterxml.jackson.databind.AbstractTypeResolver;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.AnnotationIntrospector.ReferenceProperty;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.BeanProperty.Std;
import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.MapperFeature;
import com.fasterxml.jackson.databind.PropertyMetadata;
import com.fasterxml.jackson.databind.PropertyName;
import com.fasterxml.jackson.databind.annotation.JsonPOJOBuilder.Value;
import com.fasterxml.jackson.databind.cfg.DeserializerFactoryConfig;
import com.fasterxml.jackson.databind.deser.impl.FieldProperty;
import com.fasterxml.jackson.databind.deser.impl.MethodProperty;
import com.fasterxml.jackson.databind.deser.impl.ObjectIdReader;
import com.fasterxml.jackson.databind.deser.impl.PropertyBasedObjectIdGenerator;
import com.fasterxml.jackson.databind.deser.impl.SetterlessProperty;
import com.fasterxml.jackson.databind.deser.std.ThrowableDeserializer;
import com.fasterxml.jackson.databind.introspect.AnnotatedField;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.AnnotatedMethod;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.introspect.ObjectIdInfo;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ArrayBuilders;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.SimpleBeanPropertyDefinition;
import java.io.Serializable;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class BeanDeserializerFactory
  extends BasicDeserializerFactory
  implements Serializable
{
  private static final Class<?>[] INIT_CAUSE_PARAMS = { Throwable.class };
  private static final Class<?>[] NO_VIEWS = new Class[0];
  public static final BeanDeserializerFactory instance = new BeanDeserializerFactory(new DeserializerFactoryConfig());
  private static final long serialVersionUID = 1L;
  
  public BeanDeserializerFactory(DeserializerFactoryConfig paramDeserializerFactoryConfig)
  {
    super(paramDeserializerFactoryConfig);
  }
  
  protected void addBeanProps(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    SettableBeanProperty[] arrayOfSettableBeanProperty = paramBeanDeserializerBuilder.getValueInstantiator().getFromObjectArguments(paramDeserializationContext.getConfig());
    if (!paramBeanDescription.getType().isAbstract()) {}
    Object localObject1;
    for (int i = 1;; i = 0)
    {
      localObject1 = paramDeserializationContext.getAnnotationIntrospector();
      localObject2 = ((AnnotationIntrospector)localObject1).findIgnoreUnknownProperties(paramBeanDescription.getClassInfo());
      if (localObject2 != null) {
        paramBeanDeserializerBuilder.setIgnoreUnknownProperties(((Boolean)localObject2).booleanValue());
      }
      localObject1 = ArrayBuilders.arrayToSet(((AnnotationIntrospector)localObject1).findPropertiesToIgnore(paramBeanDescription.getClassInfo()));
      localObject2 = ((Set)localObject1).iterator();
      while (((Iterator)localObject2).hasNext()) {
        paramBeanDeserializerBuilder.addIgnorable((String)((Iterator)localObject2).next());
      }
    }
    Object localObject2 = paramBeanDescription.findAnySetter();
    if (localObject2 != null) {
      paramBeanDeserializerBuilder.setAnySetter(constructAnySetter(paramDeserializationContext, paramBeanDescription, (AnnotatedMethod)localObject2));
    }
    if (localObject2 == null)
    {
      localObject2 = paramBeanDescription.getIgnoredPropertyNames();
      if (localObject2 != null)
      {
        localObject2 = ((Collection)localObject2).iterator();
        while (((Iterator)localObject2).hasNext()) {
          paramBeanDeserializerBuilder.addIgnorable((String)((Iterator)localObject2).next());
        }
      }
    }
    if ((paramDeserializationContext.isEnabled(MapperFeature.USE_GETTERS_AS_SETTERS)) && (paramDeserializationContext.isEnabled(MapperFeature.AUTO_DETECT_GETTERS))) {}
    Object localObject3;
    for (int j = 1;; j = 0)
    {
      localObject1 = filterBeanProps(paramDeserializationContext, paramBeanDescription, paramBeanDeserializerBuilder, paramBeanDescription.findProperties(), (Set)localObject1);
      if (!_factoryConfig.hasDeserializerModifiers()) {
        break;
      }
      localObject3 = _factoryConfig.deserializerModifiers().iterator();
      for (;;)
      {
        localObject2 = localObject1;
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localObject1 = ((BeanDeserializerModifier)((Iterator)localObject3).next()).updateProperties(paramDeserializationContext.getConfig(), paramBeanDescription, (List)localObject1);
      }
    }
    localObject2 = localObject1;
    Iterator localIterator = ((List)localObject2).iterator();
    if (localIterator.hasNext())
    {
      localObject2 = (BeanPropertyDefinition)localIterator.next();
      if (((BeanPropertyDefinition)localObject2).hasSetter()) {
        localObject1 = constructSettableProperty(paramDeserializationContext, paramBeanDescription, (BeanPropertyDefinition)localObject2, ((BeanPropertyDefinition)localObject2).getSetter().getGenericParameterType(0));
      }
    }
    for (;;)
    {
      label357:
      int k;
      if ((i != 0) && (((BeanPropertyDefinition)localObject2).hasConstructorParameter()))
      {
        localObject3 = ((BeanPropertyDefinition)localObject2).getName();
        if (arrayOfSettableBeanProperty == null) {
          break label650;
        }
        int m = arrayOfSettableBeanProperty.length;
        k = 0;
        label390:
        if (k >= m) {
          break label650;
        }
        localObject2 = arrayOfSettableBeanProperty[k];
        if (!((String)localObject3).equals(((SettableBeanProperty)localObject2).getName())) {}
      }
      label650:
      for (localObject2 = (CreatorProperty)localObject2;; localObject2 = null)
      {
        if (localObject2 == null)
        {
          throw paramDeserializationContext.mappingException("Could not find creator property with name '" + (String)localObject3 + "' (in class " + paramBeanDescription.getBeanClass().getName() + ")");
          if (((BeanPropertyDefinition)localObject2).hasField())
          {
            localObject1 = constructSettableProperty(paramDeserializationContext, paramBeanDescription, (BeanPropertyDefinition)localObject2, ((BeanPropertyDefinition)localObject2).getField().getGenericType());
            break label357;
          }
          if ((j == 0) || (!((BeanPropertyDefinition)localObject2).hasGetter())) {
            break label656;
          }
          localObject1 = ((BeanPropertyDefinition)localObject2).getGetter().getRawType();
          if ((!Collection.class.isAssignableFrom((Class)localObject1)) && (!Map.class.isAssignableFrom((Class)localObject1))) {
            break label656;
          }
          localObject1 = constructSetterlessProperty(paramDeserializationContext, paramBeanDescription, (BeanPropertyDefinition)localObject2);
          break label357;
          k += 1;
          break label390;
        }
        localObject3 = localObject2;
        if (localObject1 != null) {
          localObject3 = ((CreatorProperty)localObject2).withFallbackSetter((SettableBeanProperty)localObject1);
        }
        paramBeanDeserializerBuilder.addCreatorProperty((SettableBeanProperty)localObject3);
        break;
        if (localObject1 == null) {
          break;
        }
        localObject3 = ((BeanPropertyDefinition)localObject2).findViews();
        localObject2 = localObject3;
        if (localObject3 == null)
        {
          localObject2 = localObject3;
          if (!paramDeserializationContext.isEnabled(MapperFeature.DEFAULT_VIEW_INCLUSION)) {
            localObject2 = NO_VIEWS;
          }
        }
        ((SettableBeanProperty)localObject1).setViews((Class[])localObject2);
        paramBeanDeserializerBuilder.addProperty((SettableBeanProperty)localObject1);
        break;
        return;
      }
      label656:
      localObject1 = null;
    }
  }
  
  protected void addInjectables(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    Object localObject = paramBeanDescription.findInjectables();
    if (localObject != null)
    {
      boolean bool = paramDeserializationContext.canOverrideAccessModifiers();
      paramDeserializationContext = ((Map)localObject).entrySet().iterator();
      while (paramDeserializationContext.hasNext())
      {
        localObject = (Map.Entry)paramDeserializationContext.next();
        AnnotatedMember localAnnotatedMember = (AnnotatedMember)((Map.Entry)localObject).getValue();
        if (bool) {
          localAnnotatedMember.fixAccess();
        }
        paramBeanDeserializerBuilder.addInjectable(new PropertyName(localAnnotatedMember.getName()), paramBeanDescription.resolveType(localAnnotatedMember.getGenericType()), paramBeanDescription.getClassAnnotations(), localAnnotatedMember, ((Map.Entry)localObject).getKey());
      }
    }
  }
  
  protected void addObjectIdReader(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    ObjectIdInfo localObjectIdInfo = paramBeanDescription.getObjectIdInfo();
    if (localObjectIdInfo == null) {
      return;
    }
    Object localObject = localObjectIdInfo.getGeneratorType();
    ObjectIdResolver localObjectIdResolver = paramDeserializationContext.objectIdResolverInstance(paramBeanDescription.getClassInfo(), localObjectIdInfo);
    SettableBeanProperty localSettableBeanProperty;
    if (localObject == ObjectIdGenerators.PropertyGenerator.class)
    {
      localObject = localObjectIdInfo.getPropertyName();
      localSettableBeanProperty = paramBeanDeserializerBuilder.findProperty((PropertyName)localObject);
      if (localSettableBeanProperty == null) {
        throw new IllegalArgumentException("Invalid Object Id definition for " + paramBeanDescription.getBeanClass().getName() + ": can not find property with name '" + localObject + "'");
      }
      paramBeanDescription = localSettableBeanProperty.getType();
    }
    ObjectIdGenerator localObjectIdGenerator;
    for (localObject = new PropertyBasedObjectIdGenerator(localObjectIdInfo.getScope());; localObject = localObjectIdGenerator)
    {
      paramDeserializationContext = paramDeserializationContext.findRootValueDeserializer(paramBeanDescription);
      paramBeanDeserializerBuilder.setObjectIdReader(ObjectIdReader.construct(paramBeanDescription, localObjectIdInfo.getPropertyName(), (ObjectIdGenerator)localObject, paramDeserializationContext, localSettableBeanProperty, localObjectIdResolver));
      return;
      localObject = paramDeserializationContext.constructType((Class)localObject);
      localObject = paramDeserializationContext.getTypeFactory().findTypeParameters(localObject, ObjectIdGenerator.class)[0];
      localSettableBeanProperty = null;
      localObjectIdGenerator = paramDeserializationContext.objectIdGeneratorInstance(paramBeanDescription.getClassInfo(), localObjectIdInfo);
      paramBeanDescription = (BeanDescription)localObject;
    }
  }
  
  protected void addReferenceProperties(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder)
  {
    Object localObject = paramBeanDescription.findBackReferenceProperties();
    if (localObject != null)
    {
      Iterator localIterator = ((Map)localObject).entrySet().iterator();
      if (localIterator.hasNext())
      {
        localObject = (Map.Entry)localIterator.next();
        String str = (String)((Map.Entry)localObject).getKey();
        AnnotatedMember localAnnotatedMember = (AnnotatedMember)((Map.Entry)localObject).getValue();
        if ((localAnnotatedMember instanceof AnnotatedMethod)) {}
        for (localObject = ((AnnotatedMethod)localAnnotatedMember).getGenericParameterType(0);; localObject = localAnnotatedMember.getRawType())
        {
          paramBeanDeserializerBuilder.addBackReferenceProperty(str, constructSettableProperty(paramDeserializationContext, paramBeanDescription, SimpleBeanPropertyDefinition.construct(paramDeserializationContext.getConfig(), localAnnotatedMember), (Type)localObject));
          break;
        }
      }
    }
  }
  
  public JsonDeserializer<Object> buildBeanDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    ValueInstantiator localValueInstantiator = findValueInstantiator(paramDeserializationContext, paramBeanDescription);
    Object localObject = constructBeanDeserializerBuilder(paramDeserializationContext, paramBeanDescription);
    ((BeanDeserializerBuilder)localObject).setValueInstantiator(localValueInstantiator);
    addBeanProps(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject);
    addObjectIdReader(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject);
    addReferenceProperties(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject);
    addInjectables(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject);
    DeserializationConfig localDeserializationConfig = paramDeserializationContext.getConfig();
    if (_factoryConfig.hasDeserializerModifiers())
    {
      Iterator localIterator = _factoryConfig.deserializerModifiers().iterator();
      for (paramDeserializationContext = (DeserializationContext)localObject;; paramDeserializationContext = ((BeanDeserializerModifier)localIterator.next()).updateBuilder(localDeserializationConfig, paramBeanDescription, paramDeserializationContext))
      {
        localObject = paramDeserializationContext;
        if (!localIterator.hasNext()) {
          break;
        }
      }
    }
    if ((paramJavaType.isAbstract()) && (!localValueInstantiator.canInstantiate())) {}
    for (paramDeserializationContext = ((BeanDeserializerBuilder)localObject).buildAbstract(); _factoryConfig.hasDeserializerModifiers(); paramDeserializationContext = ((BeanDeserializerBuilder)localObject).build())
    {
      localObject = _factoryConfig.deserializerModifiers().iterator();
      for (;;)
      {
        paramJavaType = paramDeserializationContext;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        paramDeserializationContext = ((BeanDeserializerModifier)((Iterator)localObject).next()).modifyDeserializer(localDeserializationConfig, paramBeanDescription, paramDeserializationContext);
      }
    }
    paramJavaType = paramDeserializationContext;
    return paramJavaType;
  }
  
  protected JsonDeserializer<Object> buildBuilderBasedDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    Object localObject2 = findValueInstantiator(paramDeserializationContext, paramBeanDescription);
    DeserializationConfig localDeserializationConfig = paramDeserializationContext.getConfig();
    Object localObject1 = constructBeanDeserializerBuilder(paramDeserializationContext, paramBeanDescription);
    ((BeanDeserializerBuilder)localObject1).setValueInstantiator((ValueInstantiator)localObject2);
    addBeanProps(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject1);
    addObjectIdReader(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject1);
    addReferenceProperties(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject1);
    addInjectables(paramDeserializationContext, paramBeanDescription, (BeanDeserializerBuilder)localObject1);
    paramDeserializationContext = paramBeanDescription.findPOJOBuilderConfig();
    if (paramDeserializationContext == null) {}
    Object localObject3;
    for (localObject2 = "build";; localObject2 = buildMethodName)
    {
      localObject3 = paramBeanDescription.findMethod((String)localObject2, null);
      if ((localObject3 != null) && (localDeserializationConfig.canOverrideAccessModifiers())) {
        ClassUtil.checkAndFixAccess(((AnnotatedMethod)localObject3).getMember());
      }
      ((BeanDeserializerBuilder)localObject1).setPOJOBuilder((AnnotatedMethod)localObject3, paramDeserializationContext);
      localObject3 = localObject1;
      if (!_factoryConfig.hasDeserializerModifiers()) {
        break;
      }
      Iterator localIterator = _factoryConfig.deserializerModifiers().iterator();
      for (paramDeserializationContext = (DeserializationContext)localObject1;; paramDeserializationContext = ((BeanDeserializerModifier)localIterator.next()).updateBuilder(localDeserializationConfig, paramBeanDescription, paramDeserializationContext))
      {
        localObject3 = paramDeserializationContext;
        if (!localIterator.hasNext()) {
          break;
        }
      }
    }
    paramDeserializationContext = ((BeanDeserializerBuilder)localObject3).buildBuilderBased(paramJavaType, (String)localObject2);
    if (_factoryConfig.hasDeserializerModifiers())
    {
      localObject1 = _factoryConfig.deserializerModifiers().iterator();
      for (;;)
      {
        paramJavaType = paramDeserializationContext;
        if (!((Iterator)localObject1).hasNext()) {
          break;
        }
        paramDeserializationContext = ((BeanDeserializerModifier)((Iterator)localObject1).next()).modifyDeserializer(localDeserializationConfig, paramBeanDescription, paramDeserializationContext);
      }
    }
    paramJavaType = paramDeserializationContext;
    return paramJavaType;
  }
  
  public JsonDeserializer<Object> buildThrowableDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    DeserializationConfig localDeserializationConfig = paramDeserializationContext.getConfig();
    paramJavaType = constructBeanDeserializerBuilder(paramDeserializationContext, paramBeanDescription);
    paramJavaType.setValueInstantiator(findValueInstantiator(paramDeserializationContext, paramBeanDescription));
    addBeanProps(paramDeserializationContext, paramBeanDescription, paramJavaType);
    Object localObject = paramBeanDescription.findMethod("initCause", INIT_CAUSE_PARAMS);
    if (localObject != null)
    {
      paramDeserializationContext = constructSettableProperty(paramDeserializationContext, paramBeanDescription, SimpleBeanPropertyDefinition.construct(paramDeserializationContext.getConfig(), (AnnotatedMember)localObject, new PropertyName("cause")), ((AnnotatedMethod)localObject).getGenericParameterType(0));
      if (paramDeserializationContext != null) {
        paramJavaType.addOrReplaceProperty(paramDeserializationContext, true);
      }
    }
    paramJavaType.addIgnorable("localizedMessage");
    paramJavaType.addIgnorable("suppressed");
    paramJavaType.addIgnorable("message");
    if (_factoryConfig.hasDeserializerModifiers())
    {
      localObject = _factoryConfig.deserializerModifiers().iterator();
      for (paramDeserializationContext = paramJavaType;; paramDeserializationContext = ((BeanDeserializerModifier)((Iterator)localObject).next()).updateBuilder(localDeserializationConfig, paramBeanDescription, paramDeserializationContext))
      {
        paramJavaType = paramDeserializationContext;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      }
    }
    paramJavaType = paramJavaType.build();
    paramDeserializationContext = paramJavaType;
    if ((paramJavaType instanceof BeanDeserializer)) {
      paramDeserializationContext = new ThrowableDeserializer((BeanDeserializer)paramJavaType);
    }
    if (_factoryConfig.hasDeserializerModifiers())
    {
      localObject = _factoryConfig.deserializerModifiers().iterator();
      for (;;)
      {
        paramJavaType = paramDeserializationContext;
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
        paramDeserializationContext = ((BeanDeserializerModifier)((Iterator)localObject).next()).modifyDeserializer(localDeserializationConfig, paramBeanDescription, paramDeserializationContext);
      }
    }
    paramJavaType = paramDeserializationContext;
    return paramJavaType;
  }
  
  protected SettableAnyProperty constructAnySetter(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, AnnotatedMethod paramAnnotatedMethod)
  {
    if (paramDeserializationContext.canOverrideAccessModifiers()) {
      paramAnnotatedMethod.fixAccess();
    }
    JavaType localJavaType = paramBeanDescription.bindingsForBeanType().resolveType(paramAnnotatedMethod.getGenericParameterType(1));
    BeanProperty.Std localStd = new BeanProperty.Std(new PropertyName(paramAnnotatedMethod.getName()), localJavaType, null, paramBeanDescription.getClassAnnotations(), paramAnnotatedMethod, PropertyMetadata.STD_OPTIONAL);
    localJavaType = resolveType(paramDeserializationContext, paramBeanDescription, localJavaType, paramAnnotatedMethod);
    paramBeanDescription = findDeserializerFromAnnotation(paramDeserializationContext, paramAnnotatedMethod);
    localJavaType = modifyTypeByAnnotation(paramDeserializationContext, paramAnnotatedMethod, localJavaType);
    paramDeserializationContext = paramBeanDescription;
    if (paramBeanDescription == null) {
      paramDeserializationContext = (JsonDeserializer)localJavaType.getValueHandler();
    }
    return new SettableAnyProperty(localStd, paramAnnotatedMethod, localJavaType, paramDeserializationContext, (TypeDeserializer)localJavaType.getTypeHandler());
  }
  
  protected BeanDeserializerBuilder constructBeanDeserializerBuilder(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription)
  {
    return new BeanDeserializerBuilder(paramBeanDescription, paramDeserializationContext.getConfig());
  }
  
  protected SettableBeanProperty constructSettableProperty(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanPropertyDefinition paramBeanPropertyDefinition, Type paramType)
  {
    AnnotatedMember localAnnotatedMember = paramBeanPropertyDefinition.getNonConstructorMutator();
    if (paramDeserializationContext.canOverrideAccessModifiers()) {
      localAnnotatedMember.fixAccess();
    }
    paramType = paramBeanDescription.resolveType(paramType);
    BeanProperty.Std localStd = new BeanProperty.Std(paramBeanPropertyDefinition.getFullName(), paramType, paramBeanPropertyDefinition.getWrapperName(), paramBeanDescription.getClassAnnotations(), localAnnotatedMember, paramBeanPropertyDefinition.getMetadata());
    Object localObject = resolveType(paramDeserializationContext, paramBeanDescription, paramType, localAnnotatedMember);
    if (localObject != paramType) {
      localStd.withType((JavaType)localObject);
    }
    paramType = findDeserializerFromAnnotation(paramDeserializationContext, localAnnotatedMember);
    paramDeserializationContext = modifyTypeByAnnotation(paramDeserializationContext, localAnnotatedMember, (JavaType)localObject);
    localObject = (TypeDeserializer)paramDeserializationContext.getTypeHandler();
    if ((localAnnotatedMember instanceof AnnotatedMethod)) {}
    for (paramDeserializationContext = new MethodProperty(paramBeanPropertyDefinition, paramDeserializationContext, (TypeDeserializer)localObject, paramBeanDescription.getClassAnnotations(), (AnnotatedMethod)localAnnotatedMember);; paramDeserializationContext = new FieldProperty(paramBeanPropertyDefinition, paramDeserializationContext, (TypeDeserializer)localObject, paramBeanDescription.getClassAnnotations(), (AnnotatedField)localAnnotatedMember))
    {
      paramBeanDescription = paramDeserializationContext;
      if (paramType != null) {
        paramBeanDescription = paramDeserializationContext.withValueDeserializer(paramType);
      }
      paramDeserializationContext = paramBeanPropertyDefinition.findReferenceType();
      if ((paramDeserializationContext != null) && (paramDeserializationContext.isManagedReference())) {
        paramBeanDescription.setManagedReferenceName(paramDeserializationContext.getName());
      }
      paramDeserializationContext = paramBeanPropertyDefinition.findObjectIdInfo();
      if (paramDeserializationContext != null) {
        paramBeanDescription.setObjectIdInfo(paramDeserializationContext);
      }
      return paramBeanDescription;
    }
  }
  
  protected SettableBeanProperty constructSetterlessProperty(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanPropertyDefinition paramBeanPropertyDefinition)
  {
    AnnotatedMethod localAnnotatedMethod = paramBeanPropertyDefinition.getGetter();
    if (paramDeserializationContext.canOverrideAccessModifiers()) {
      localAnnotatedMethod.fixAccess();
    }
    JavaType localJavaType = localAnnotatedMethod.getType(paramBeanDescription.bindingsForBeanType());
    JsonDeserializer localJsonDeserializer = findDeserializerFromAnnotation(paramDeserializationContext, localAnnotatedMethod);
    paramDeserializationContext = resolveType(paramDeserializationContext, paramBeanDescription, modifyTypeByAnnotation(paramDeserializationContext, localAnnotatedMethod, localJavaType), localAnnotatedMethod);
    paramBeanDescription = new SetterlessProperty(paramBeanPropertyDefinition, paramDeserializationContext, (TypeDeserializer)paramDeserializationContext.getTypeHandler(), paramBeanDescription.getClassAnnotations(), localAnnotatedMethod);
    paramDeserializationContext = paramBeanDescription;
    if (localJsonDeserializer != null) {
      paramDeserializationContext = paramBeanDescription.withValueDeserializer(localJsonDeserializer);
    }
    return paramDeserializationContext;
  }
  
  public JsonDeserializer<Object> createBeanDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    Object localObject2 = paramDeserializationContext.getConfig();
    Object localObject1 = _findCustomBeanDeserializer(paramJavaType, (DeserializationConfig)localObject2, paramBeanDescription);
    if (localObject1 != null) {}
    do
    {
      return (JsonDeserializer<Object>)localObject1;
      if (paramJavaType.isThrowable()) {
        return buildThrowableDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
      }
      if (paramJavaType.isAbstract())
      {
        localObject1 = materializeAbstractType(paramDeserializationContext, paramJavaType, paramBeanDescription);
        if (localObject1 != null) {
          return buildBeanDeserializer(paramDeserializationContext, (JavaType)localObject1, ((DeserializationConfig)localObject2).introspect((JavaType)localObject1));
        }
      }
      localObject2 = findStdDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
      localObject1 = localObject2;
    } while (localObject2 != null);
    if (!isPotentialBeanType(paramJavaType.getRawClass())) {
      return null;
    }
    return buildBeanDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
  }
  
  public JsonDeserializer<Object> createBuilderBasedDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription, Class<?> paramClass)
  {
    paramBeanDescription = paramDeserializationContext.constructType(paramClass);
    return buildBuilderBasedDeserializer(paramDeserializationContext, paramJavaType, paramDeserializationContext.getConfig().introspectForBuilder(paramBeanDescription));
  }
  
  protected List<BeanPropertyDefinition> filterBeanProps(DeserializationContext paramDeserializationContext, BeanDescription paramBeanDescription, BeanDeserializerBuilder paramBeanDeserializerBuilder, List<BeanPropertyDefinition> paramList, Set<String> paramSet)
  {
    ArrayList localArrayList = new ArrayList(Math.max(4, paramList.size()));
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      BeanPropertyDefinition localBeanPropertyDefinition = (BeanPropertyDefinition)localIterator.next();
      String str = localBeanPropertyDefinition.getName();
      if (!paramSet.contains(str))
      {
        if (!localBeanPropertyDefinition.hasConstructorParameter())
        {
          paramList = null;
          if (localBeanPropertyDefinition.hasSetter()) {
            paramList = localBeanPropertyDefinition.getSetter().getRawParameterType(0);
          }
          for (;;)
          {
            if ((paramList == null) || (!isIgnorableType(paramDeserializationContext.getConfig(), paramBeanDescription, paramList, localHashMap))) {
              break label160;
            }
            paramBeanDeserializerBuilder.addIgnorable(str);
            break;
            if (localBeanPropertyDefinition.hasField()) {
              paramList = localBeanPropertyDefinition.getField().getRawType();
            }
          }
        }
        label160:
        localArrayList.add(localBeanPropertyDefinition);
      }
    }
    return localArrayList;
  }
  
  protected JsonDeserializer<?> findStdDeserializer(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    paramJavaType = findDefaultDeserializer(paramDeserializationContext, paramJavaType, paramBeanDescription);
    Object localObject = paramJavaType;
    if (paramJavaType != null)
    {
      localObject = paramJavaType;
      if (_factoryConfig.hasDeserializerModifiers())
      {
        localObject = _factoryConfig.deserializerModifiers().iterator();
        while (((Iterator)localObject).hasNext()) {
          paramJavaType = ((BeanDeserializerModifier)((Iterator)localObject).next()).modifyDeserializer(paramDeserializationContext.getConfig(), paramBeanDescription, paramJavaType);
        }
        localObject = paramJavaType;
      }
    }
    return (JsonDeserializer<?>)localObject;
  }
  
  protected boolean isIgnorableType(DeserializationConfig paramDeserializationConfig, BeanDescription paramBeanDescription, Class<?> paramClass, Map<Class<?>, Boolean> paramMap)
  {
    paramBeanDescription = (Boolean)paramMap.get(paramClass);
    if (paramBeanDescription != null) {
      return paramBeanDescription.booleanValue();
    }
    paramBeanDescription = paramDeserializationConfig.introspectClassAnnotations(paramClass);
    paramDeserializationConfig = paramDeserializationConfig.getAnnotationIntrospector().isIgnorableType(paramBeanDescription.getClassInfo());
    if (paramDeserializationConfig == null) {
      return false;
    }
    return paramDeserializationConfig.booleanValue();
  }
  
  protected boolean isPotentialBeanType(Class<?> paramClass)
  {
    String str = ClassUtil.canBeABeanType(paramClass);
    if (str != null) {
      throw new IllegalArgumentException("Can not deserialize Class " + paramClass.getName() + " (of type " + str + ") as a Bean");
    }
    if (ClassUtil.isProxyType(paramClass)) {
      throw new IllegalArgumentException("Can not deserialize Proxy class " + paramClass.getName() + " as a Bean");
    }
    str = ClassUtil.isLocalType(paramClass, true);
    if (str != null) {
      throw new IllegalArgumentException("Can not deserialize Class " + paramClass.getName() + " (of type " + str + ") as a Bean");
    }
    return true;
  }
  
  protected JavaType materializeAbstractType(DeserializationContext paramDeserializationContext, JavaType paramJavaType, BeanDescription paramBeanDescription)
  {
    paramJavaType = paramBeanDescription.getType();
    paramBeanDescription = _factoryConfig.abstractTypeResolvers().iterator();
    while (paramBeanDescription.hasNext())
    {
      JavaType localJavaType = ((AbstractTypeResolver)paramBeanDescription.next()).resolveAbstractType(paramDeserializationContext.getConfig(), paramJavaType);
      if (localJavaType != null) {
        return localJavaType;
      }
    }
    return null;
  }
  
  public DeserializerFactory withConfig(DeserializerFactoryConfig paramDeserializerFactoryConfig)
  {
    if (_factoryConfig == paramDeserializerFactoryConfig) {
      return this;
    }
    if (getClass() != BeanDeserializerFactory.class) {
      throw new IllegalStateException("Subtype of BeanDeserializerFactory (" + getClass().getName() + ") has not properly overridden method 'withAdditionalDeserializers': can not instantiate subtype with additional deserializer definitions");
    }
    return new BeanDeserializerFactory(paramDeserializerFactoryConfig);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.BeanDeserializerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */