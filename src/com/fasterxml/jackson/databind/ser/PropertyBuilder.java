package com.fasterxml.jackson.databind.ser;

import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.BeanDescription;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JsonSerialize.Typing;
import com.fasterxml.jackson.databind.introspect.Annotated;
import com.fasterxml.jackson.databind.introspect.AnnotatedClass;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.introspect.BeanPropertyDefinition;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.Annotations;
import com.fasterxml.jackson.databind.util.ArrayBuilders;

public class PropertyBuilder
{
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final BeanDescription _beanDesc;
  protected final SerializationConfig _config;
  protected Object _defaultBean;
  protected final JsonInclude.Include _defaultInclusion;
  
  public PropertyBuilder(SerializationConfig paramSerializationConfig, BeanDescription paramBeanDescription)
  {
    _config = paramSerializationConfig;
    _beanDesc = paramBeanDescription;
    _defaultInclusion = paramBeanDescription.findSerializationInclusion(paramSerializationConfig.getSerializationInclusion());
    _annotationIntrospector = _config.getAnnotationIntrospector();
  }
  
  protected Object _throwWrapped(Exception paramException, String paramString, Object paramObject)
  {
    while (paramException.getCause() != null) {
      paramException = paramException.getCause();
    }
    if ((paramException instanceof Error)) {
      throw ((Error)paramException);
    }
    if ((paramException instanceof RuntimeException)) {
      throw ((RuntimeException)paramException);
    }
    throw new IllegalArgumentException("Failed to get property '" + paramString + "' of default " + paramObject.getClass().getName() + " instance");
  }
  
  protected BeanPropertyWriter buildWriter(SerializerProvider paramSerializerProvider, BeanPropertyDefinition paramBeanPropertyDefinition, JavaType paramJavaType, JsonSerializer<?> paramJsonSerializer, TypeSerializer paramTypeSerializer1, TypeSerializer paramTypeSerializer2, AnnotatedMember paramAnnotatedMember, boolean paramBoolean)
  {
    JavaType localJavaType = findSerializationType(paramAnnotatedMember, paramBoolean, paramJavaType);
    Object localObject1;
    if (paramTypeSerializer2 != null)
    {
      localObject1 = localJavaType;
      if (localJavaType == null) {
        localObject1 = paramJavaType;
      }
      if (((JavaType)localObject1).getContentType() == null) {
        throw new IllegalStateException("Problem trying to create BeanPropertyWriter for property '" + paramBeanPropertyDefinition.getName() + "' (of type " + _beanDesc.getType() + "); serialization type " + localObject1 + " has no content");
      }
      localJavaType = ((JavaType)localObject1).withContentTypeHandler(paramTypeSerializer2);
      localJavaType.getContentType();
    }
    for (;;)
    {
      Object localObject2 = null;
      paramBoolean = false;
      boolean bool2 = false;
      paramTypeSerializer2 = paramBeanPropertyDefinition.findInclusion();
      localObject1 = paramTypeSerializer2;
      if (paramTypeSerializer2 == null) {
        localObject1 = _defaultInclusion;
      }
      boolean bool1 = bool2;
      paramTypeSerializer2 = (TypeSerializer)localObject2;
      if (localObject1 != null) {}
      switch (localObject1)
      {
      default: 
        paramTypeSerializer2 = (TypeSerializer)localObject2;
        bool1 = bool2;
        paramBoolean = bool1;
      }
      for (;;)
      {
        paramBeanPropertyDefinition = new BeanPropertyWriter(paramBeanPropertyDefinition, paramAnnotatedMember, _beanDesc.getClassAnnotations(), paramJavaType, paramJsonSerializer, paramTypeSerializer1, localJavaType, paramBoolean, paramTypeSerializer2);
        paramJavaType = _annotationIntrospector.findNullSerializer(paramAnnotatedMember);
        if (paramJavaType != null) {
          paramBeanPropertyDefinition.assignNullSerializer(paramSerializerProvider.serializerInstance(paramAnnotatedMember, paramJavaType));
        }
        paramJavaType = _annotationIntrospector.findUnwrappingNameTransformer(paramAnnotatedMember);
        paramSerializerProvider = paramBeanPropertyDefinition;
        if (paramJavaType != null) {
          paramSerializerProvider = paramBeanPropertyDefinition.unwrappingWriter(paramJavaType);
        }
        return paramSerializerProvider;
        localObject1 = getDefaultValue(paramBeanPropertyDefinition.getName(), paramAnnotatedMember);
        if (localObject1 == null)
        {
          paramBoolean = true;
          paramTypeSerializer2 = (TypeSerializer)localObject1;
        }
        else
        {
          bool1 = bool2;
          paramTypeSerializer2 = (TypeSerializer)localObject1;
          if (!localObject1.getClass().isArray()) {
            break;
          }
          paramTypeSerializer2 = ArrayBuilders.getArrayComparator(localObject1);
          paramBoolean = false;
          continue;
          paramTypeSerializer2 = BeanPropertyWriter.MARKER_FOR_EMPTY;
          paramBoolean = true;
          continue;
          paramBoolean = true;
          bool1 = paramBoolean;
          paramTypeSerializer2 = (TypeSerializer)localObject2;
          if (!paramJavaType.isContainerType()) {
            break;
          }
          bool1 = paramBoolean;
          paramTypeSerializer2 = (TypeSerializer)localObject2;
          if (_config.isEnabled(SerializationFeature.WRITE_EMPTY_JSON_ARRAYS)) {
            break;
          }
          paramTypeSerializer2 = BeanPropertyWriter.MARKER_FOR_EMPTY;
        }
      }
    }
  }
  
  protected JavaType findSerializationType(Annotated paramAnnotated, boolean paramBoolean, JavaType paramJavaType)
  {
    boolean bool2 = true;
    Object localObject1 = _annotationIntrospector.findSerializationType(paramAnnotated);
    Object localObject2;
    if (localObject1 != null)
    {
      localObject2 = paramJavaType.getRawClass();
      if (((Class)localObject1).isAssignableFrom((Class)localObject2))
      {
        paramJavaType = paramJavaType.widenBy((Class)localObject1);
        paramBoolean = true;
      }
    }
    for (;;)
    {
      localObject2 = BasicSerializerFactory.modifySecondaryTypesByAnnotation(_config, paramAnnotated, paramJavaType);
      localObject1 = paramJavaType;
      if (localObject2 != paramJavaType)
      {
        localObject1 = localObject2;
        paramBoolean = true;
      }
      paramAnnotated = _annotationIntrospector.findSerializationTyping(paramAnnotated);
      boolean bool1 = paramBoolean;
      if (paramAnnotated != null)
      {
        bool1 = paramBoolean;
        if (paramAnnotated != JsonSerialize.Typing.DEFAULT_TYPING) {
          if (paramAnnotated != JsonSerialize.Typing.STATIC) {
            break label193;
          }
        }
      }
      label193:
      for (paramBoolean = bool2;; paramBoolean = false)
      {
        bool1 = paramBoolean;
        if (!bool1) {
          break label198;
        }
        return (JavaType)localObject1;
        if (!((Class)localObject2).isAssignableFrom((Class)localObject1)) {
          throw new IllegalArgumentException("Illegal concrete-type annotation for method '" + paramAnnotated.getName() + "': class " + ((Class)localObject1).getName() + " not a super-type of (declared) class " + ((Class)localObject2).getName());
        }
        paramJavaType = _config.constructSpecializedType(paramJavaType, (Class)localObject1);
        break;
      }
      label198:
      return null;
    }
  }
  
  public Annotations getClassAnnotations()
  {
    return _beanDesc.getClassAnnotations();
  }
  
  protected Object getDefaultBean()
  {
    if (_defaultBean == null)
    {
      _defaultBean = _beanDesc.instantiateBean(_config.canOverrideAccessModifiers());
      if (_defaultBean == null)
      {
        Class localClass = _beanDesc.getClassInfo().getAnnotated();
        throw new IllegalArgumentException("Class " + localClass.getName() + " has no default constructor; can not instantiate default bean value to support 'properties=JsonSerialize.Inclusion.NON_DEFAULT' annotation");
      }
    }
    return _defaultBean;
  }
  
  protected Object getDefaultValue(String paramString, AnnotatedMember paramAnnotatedMember)
  {
    Object localObject = getDefaultBean();
    try
    {
      paramAnnotatedMember = paramAnnotatedMember.getValue(localObject);
      return paramAnnotatedMember;
    }
    catch (Exception paramAnnotatedMember) {}
    return _throwWrapped(paramAnnotatedMember, paramString, localObject);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.PropertyBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */