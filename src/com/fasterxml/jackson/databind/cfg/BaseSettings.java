package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;
import com.fasterxml.jackson.annotation.PropertyAccessor;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AnnotationIntrospectorPair;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;

public final class BaseSettings
  implements Serializable
{
  private static final long serialVersionUID = 4939673998947122190L;
  protected final AnnotationIntrospector _annotationIntrospector;
  protected final ClassIntrospector _classIntrospector;
  protected final DateFormat _dateFormat;
  protected final Base64Variant _defaultBase64;
  protected final HandlerInstantiator _handlerInstantiator;
  protected final Locale _locale;
  protected final PropertyNamingStrategy _propertyNamingStrategy;
  protected final TimeZone _timeZone;
  protected final TypeFactory _typeFactory;
  protected final TypeResolverBuilder<?> _typeResolverBuilder;
  protected final VisibilityChecker<?> _visibilityChecker;
  
  public BaseSettings(ClassIntrospector paramClassIntrospector, AnnotationIntrospector paramAnnotationIntrospector, VisibilityChecker<?> paramVisibilityChecker, PropertyNamingStrategy paramPropertyNamingStrategy, TypeFactory paramTypeFactory, TypeResolverBuilder<?> paramTypeResolverBuilder, DateFormat paramDateFormat, HandlerInstantiator paramHandlerInstantiator, Locale paramLocale, TimeZone paramTimeZone, Base64Variant paramBase64Variant)
  {
    _classIntrospector = paramClassIntrospector;
    _annotationIntrospector = paramAnnotationIntrospector;
    _visibilityChecker = paramVisibilityChecker;
    _propertyNamingStrategy = paramPropertyNamingStrategy;
    _typeFactory = paramTypeFactory;
    _typeResolverBuilder = paramTypeResolverBuilder;
    _dateFormat = paramDateFormat;
    _handlerInstantiator = paramHandlerInstantiator;
    _locale = paramLocale;
    _timeZone = paramTimeZone;
    _defaultBase64 = paramBase64Variant;
  }
  
  public final AnnotationIntrospector getAnnotationIntrospector()
  {
    return _annotationIntrospector;
  }
  
  public final Base64Variant getBase64Variant()
  {
    return _defaultBase64;
  }
  
  public final ClassIntrospector getClassIntrospector()
  {
    return _classIntrospector;
  }
  
  public final DateFormat getDateFormat()
  {
    return _dateFormat;
  }
  
  public final HandlerInstantiator getHandlerInstantiator()
  {
    return _handlerInstantiator;
  }
  
  public final Locale getLocale()
  {
    return _locale;
  }
  
  public final PropertyNamingStrategy getPropertyNamingStrategy()
  {
    return _propertyNamingStrategy;
  }
  
  public final TimeZone getTimeZone()
  {
    return _timeZone;
  }
  
  public final TypeFactory getTypeFactory()
  {
    return _typeFactory;
  }
  
  public final TypeResolverBuilder<?> getTypeResolverBuilder()
  {
    return _typeResolverBuilder;
  }
  
  public final VisibilityChecker<?> getVisibilityChecker()
  {
    return _visibilityChecker;
  }
  
  public final BaseSettings with(Base64Variant paramBase64Variant)
  {
    if (paramBase64Variant == _defaultBase64) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, paramBase64Variant);
  }
  
  public final BaseSettings with(Locale paramLocale)
  {
    if (_locale == paramLocale) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, paramLocale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings with(TimeZone paramTimeZone)
  {
    if (paramTimeZone == null) {
      throw new IllegalArgumentException();
    }
    Object localObject = _dateFormat;
    if ((localObject instanceof StdDateFormat)) {
      localObject = ((StdDateFormat)localObject).withTimeZone(paramTimeZone);
    }
    for (;;)
    {
      return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, (DateFormat)localObject, _handlerInstantiator, _locale, paramTimeZone, _defaultBase64);
      localObject = (DateFormat)((DateFormat)localObject).clone();
      ((DateFormat)localObject).setTimeZone(paramTimeZone);
    }
  }
  
  public final BaseSettings withAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    if (_annotationIntrospector == paramAnnotationIntrospector) {
      return this;
    }
    return new BaseSettings(_classIntrospector, paramAnnotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withAppendedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return withAnnotationIntrospector(AnnotationIntrospectorPair.create(_annotationIntrospector, paramAnnotationIntrospector));
  }
  
  public final BaseSettings withClassIntrospector(ClassIntrospector paramClassIntrospector)
  {
    if (_classIntrospector == paramClassIntrospector) {
      return this;
    }
    return new BaseSettings(paramClassIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withDateFormat(DateFormat paramDateFormat)
  {
    if (_dateFormat == paramDateFormat) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, paramDateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withHandlerInstantiator(HandlerInstantiator paramHandlerInstantiator)
  {
    if (_handlerInstantiator == paramHandlerInstantiator) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, paramHandlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withInsertedAnnotationIntrospector(AnnotationIntrospector paramAnnotationIntrospector)
  {
    return withAnnotationIntrospector(AnnotationIntrospectorPair.create(paramAnnotationIntrospector, _annotationIntrospector));
  }
  
  public final BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy paramPropertyNamingStrategy)
  {
    if (_propertyNamingStrategy == paramPropertyNamingStrategy) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, paramPropertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withTypeFactory(TypeFactory paramTypeFactory)
  {
    if (_typeFactory == paramTypeFactory) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, paramTypeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withTypeResolverBuilder(TypeResolverBuilder<?> paramTypeResolverBuilder)
  {
    if (_typeResolverBuilder == paramTypeResolverBuilder) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker, _propertyNamingStrategy, _typeFactory, paramTypeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withVisibility(PropertyAccessor paramPropertyAccessor, JsonAutoDetect.Visibility paramVisibility)
  {
    return new BaseSettings(_classIntrospector, _annotationIntrospector, _visibilityChecker.withVisibility(paramPropertyAccessor, paramVisibility), _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
  
  public final BaseSettings withVisibilityChecker(VisibilityChecker<?> paramVisibilityChecker)
  {
    if (_visibilityChecker == paramVisibilityChecker) {
      return this;
    }
    return new BaseSettings(_classIntrospector, _annotationIntrospector, paramVisibilityChecker, _propertyNamingStrategy, _typeFactory, _typeResolverBuilder, _dateFormat, _handlerInstantiator, _locale, _timeZone, _defaultBase64);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.cfg.BaseSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */