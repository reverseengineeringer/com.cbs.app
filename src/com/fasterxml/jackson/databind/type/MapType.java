package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Map;

public final class MapType
  extends MapLikeType
{
  private static final long serialVersionUID = -811146779148281500L;
  
  private MapType(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2, Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    super(paramClass, paramJavaType1, paramJavaType2, paramObject1, paramObject2, paramBoolean);
  }
  
  public static MapType construct(Class<?> paramClass, JavaType paramJavaType1, JavaType paramJavaType2)
  {
    return new MapType(paramClass, paramJavaType1, paramJavaType2, null, null, false);
  }
  
  protected final JavaType _narrow(Class<?> paramClass)
  {
    return new MapType(paramClass, _keyType, _valueType, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final Class<?> getParameterSource()
  {
    return Map.class;
  }
  
  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.narrowBy(paramClass), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final JavaType narrowKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.narrowBy(paramClass), _valueType, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final String toString()
  {
    return "[map type; class " + _class.getName() + ", " + _keyType + " -> " + _valueType + "]";
  }
  
  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _valueType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType, _valueType.widenBy(paramClass), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final JavaType widenKey(Class<?> paramClass)
  {
    if (paramClass == _keyType.getRawClass()) {
      return this;
    }
    return new MapType(_class, _keyType.widenBy(paramClass), _valueType, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final MapType withContentTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType.withTypeHandler(paramObject), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final MapType withContentValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType.withValueHandler(paramObject), _valueHandler, _typeHandler, _asStatic);
  }
  
  public final MapType withKeyTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType.withTypeHandler(paramObject), _valueType, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final MapType withKeyValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType.withValueHandler(paramObject), _valueType, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final MapType withStaticTyping()
  {
    if (_asStatic) {
      return this;
    }
    return new MapType(_class, _keyType.withStaticTyping(), _valueType.withStaticTyping(), _valueHandler, _typeHandler, true);
  }
  
  public final MapType withTypeHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType, _valueHandler, paramObject, _asStatic);
  }
  
  public final MapType withValueHandler(Object paramObject)
  {
    return new MapType(_class, _keyType, _valueType, paramObject, _typeHandler, _asStatic);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.MapType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */