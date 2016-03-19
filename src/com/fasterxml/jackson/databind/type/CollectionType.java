package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;

public final class CollectionType
  extends CollectionLikeType
{
  private static final long serialVersionUID = -7834910259750909424L;
  
  private CollectionType(Class<?> paramClass, JavaType paramJavaType, Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    super(paramClass, paramJavaType, paramObject1, paramObject2, paramBoolean);
  }
  
  public static CollectionType construct(Class<?> paramClass, JavaType paramJavaType)
  {
    return new CollectionType(paramClass, paramJavaType, null, null, false);
  }
  
  protected final JavaType _narrow(Class<?> paramClass)
  {
    return new CollectionType(paramClass, _elementType, null, null, _asStatic);
  }
  
  public final Class<?> getParameterSource()
  {
    return Collection.class;
  }
  
  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.narrowBy(paramClass), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final String toString()
  {
    return "[collection type; class " + _class.getName() + ", contains " + _elementType + "]";
  }
  
  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _elementType.getRawClass()) {
      return this;
    }
    return new CollectionType(_class, _elementType.widenBy(paramClass), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final CollectionType withContentTypeHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType.withTypeHandler(paramObject), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final CollectionType withContentValueHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType.withValueHandler(paramObject), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final CollectionType withStaticTyping()
  {
    if (_asStatic) {
      return this;
    }
    return new CollectionType(_class, _elementType.withStaticTyping(), _valueHandler, _typeHandler, true);
  }
  
  public final CollectionType withTypeHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType, _valueHandler, paramObject, _asStatic);
  }
  
  public final CollectionType withValueHandler(Object paramObject)
  {
    return new CollectionType(_class, _elementType, paramObject, _typeHandler, _asStatic);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.CollectionType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */