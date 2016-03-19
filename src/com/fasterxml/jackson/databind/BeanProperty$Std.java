package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.Annotations;
import java.lang.annotation.Annotation;

public class BeanProperty$Std
  implements BeanProperty
{
  protected final Annotations _contextAnnotations;
  protected final AnnotatedMember _member;
  protected final PropertyMetadata _metadata;
  protected final PropertyName _name;
  protected final JavaType _type;
  protected final PropertyName _wrapperName;
  
  public BeanProperty$Std(PropertyName paramPropertyName1, JavaType paramJavaType, PropertyName paramPropertyName2, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, PropertyMetadata paramPropertyMetadata)
  {
    _name = paramPropertyName1;
    _type = paramJavaType;
    _wrapperName = paramPropertyName2;
    _metadata = paramPropertyMetadata;
    _member = paramAnnotatedMember;
    _contextAnnotations = paramAnnotations;
  }
  
  @Deprecated
  public BeanProperty$Std(String paramString, JavaType paramJavaType, PropertyName paramPropertyName, Annotations paramAnnotations, AnnotatedMember paramAnnotatedMember, boolean paramBoolean) {}
  
  public void depositSchemaProperty(JsonObjectFormatVisitor paramJsonObjectFormatVisitor)
  {
    throw new UnsupportedOperationException("Instances of " + getClass().getName() + " should not get visited");
  }
  
  public <A extends Annotation> A getAnnotation(Class<A> paramClass)
  {
    if (_member == null) {
      return null;
    }
    return _member.getAnnotation(paramClass);
  }
  
  public <A extends Annotation> A getContextAnnotation(Class<A> paramClass)
  {
    if (_contextAnnotations == null) {
      return null;
    }
    return _contextAnnotations.get(paramClass);
  }
  
  public PropertyName getFullName()
  {
    return _name;
  }
  
  public AnnotatedMember getMember()
  {
    return _member;
  }
  
  public PropertyMetadata getMetadata()
  {
    return _metadata;
  }
  
  public String getName()
  {
    return _name.getSimpleName();
  }
  
  public JavaType getType()
  {
    return _type;
  }
  
  public PropertyName getWrapperName()
  {
    return _wrapperName;
  }
  
  public boolean isRequired()
  {
    return _metadata.isRequired();
  }
  
  public boolean isVirtual()
  {
    return false;
  }
  
  public Std withType(JavaType paramJavaType)
  {
    return new Std(_name, paramJavaType, _wrapperName, _contextAnnotations, _member, _metadata);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.BeanProperty.Std
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */