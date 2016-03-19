package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.lang.reflect.Array;

public final class ArrayType
  extends TypeBase
{
  private static final long serialVersionUID = 9040058063449087477L;
  protected final JavaType _componentType;
  protected final Object _emptyArray;
  
  private ArrayType(JavaType paramJavaType, Object paramObject1, Object paramObject2, Object paramObject3, boolean paramBoolean)
  {
    super(paramObject1.getClass(), paramJavaType.hashCode(), paramObject2, paramObject3, paramBoolean);
    _componentType = paramJavaType;
    _emptyArray = paramObject1;
  }
  
  public static ArrayType construct(JavaType paramJavaType, Object paramObject1, Object paramObject2)
  {
    return new ArrayType(paramJavaType, Array.newInstance(paramJavaType.getRawClass(), 0), null, null, false);
  }
  
  protected final JavaType _narrow(Class<?> paramClass)
  {
    if (!paramClass.isArray()) {
      throw new IllegalArgumentException("Incompatible narrowing operation: trying to narrow " + toString() + " to class " + paramClass.getName());
    }
    paramClass = paramClass.getComponentType();
    return construct(TypeFactory.defaultInstance().constructType(paramClass), _valueHandler, _typeHandler);
  }
  
  protected final String buildCanonicalName()
  {
    return _class.getName();
  }
  
  public final JavaType containedType(int paramInt)
  {
    if (paramInt == 0) {
      return _componentType;
    }
    return null;
  }
  
  public final int containedTypeCount()
  {
    return 1;
  }
  
  public final String containedTypeName(int paramInt)
  {
    if (paramInt == 0) {
      return "E";
    }
    return null;
  }
  
  public final boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (paramObject == null);
      bool1 = bool2;
    } while (paramObject.getClass() != getClass());
    paramObject = (ArrayType)paramObject;
    return _componentType.equals(_componentType);
  }
  
  public final JavaType getContentType()
  {
    return _componentType;
  }
  
  public final StringBuilder getErasedSignature(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append('[');
    return _componentType.getErasedSignature(paramStringBuilder);
  }
  
  public final StringBuilder getGenericSignature(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append('[');
    return _componentType.getGenericSignature(paramStringBuilder);
  }
  
  public final Class<?> getParameterSource()
  {
    return null;
  }
  
  public final boolean hasGenericTypes()
  {
    return _componentType.hasGenericTypes();
  }
  
  public final boolean isAbstract()
  {
    return false;
  }
  
  public final boolean isArrayType()
  {
    return true;
  }
  
  public final boolean isConcrete()
  {
    return true;
  }
  
  public final boolean isContainerType()
  {
    return true;
  }
  
  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    if (paramClass == _componentType.getRawClass()) {
      return this;
    }
    return construct(_componentType.narrowBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public final String toString()
  {
    return "[array type, component type: " + _componentType + "]";
  }
  
  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    if (paramClass == _componentType.getRawClass()) {
      return this;
    }
    return construct(_componentType.widenBy(paramClass), _valueHandler, _typeHandler);
  }
  
  public final ArrayType withContentTypeHandler(Object paramObject)
  {
    if (paramObject == _componentType.getTypeHandler()) {
      return this;
    }
    return new ArrayType(_componentType.withTypeHandler(paramObject), _emptyArray, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final ArrayType withContentValueHandler(Object paramObject)
  {
    if (paramObject == _componentType.getValueHandler()) {
      return this;
    }
    return new ArrayType(_componentType.withValueHandler(paramObject), _emptyArray, _valueHandler, _typeHandler, _asStatic);
  }
  
  public final ArrayType withStaticTyping()
  {
    if (_asStatic) {
      return this;
    }
    return new ArrayType(_componentType.withStaticTyping(), _emptyArray, _valueHandler, _typeHandler, true);
  }
  
  public final ArrayType withTypeHandler(Object paramObject)
  {
    if (paramObject == _typeHandler) {
      return this;
    }
    return new ArrayType(_componentType, _emptyArray, _valueHandler, paramObject, _asStatic);
  }
  
  public final ArrayType withValueHandler(Object paramObject)
  {
    if (paramObject == _valueHandler) {
      return this;
    }
    return new ArrayType(_componentType, _emptyArray, paramObject, _typeHandler, _asStatic);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.ArrayType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */