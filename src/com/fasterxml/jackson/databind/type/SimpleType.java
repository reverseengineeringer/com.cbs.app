package com.fasterxml.jackson.databind.type;

import com.fasterxml.jackson.databind.JavaType;
import java.util.Collection;
import java.util.Map;

public final class SimpleType
  extends TypeBase
{
  private static final long serialVersionUID = -800374828948534376L;
  protected final String[] _typeNames;
  protected final JavaType[] _typeParameters;
  protected final Class<?> _typeParametersFor;
  
  protected SimpleType(Class<?> paramClass)
  {
    this(paramClass, null, null, null, null, false, null);
  }
  
  @Deprecated
  protected SimpleType(Class<?> paramClass, String[] paramArrayOfString, JavaType[] paramArrayOfJavaType, Object paramObject1, Object paramObject2, boolean paramBoolean)
  {
    this(paramClass, paramArrayOfString, paramArrayOfJavaType, paramObject1, paramObject2, paramBoolean, null);
  }
  
  protected SimpleType(Class<?> paramClass1, String[] paramArrayOfString, JavaType[] paramArrayOfJavaType, Object paramObject1, Object paramObject2, boolean paramBoolean, Class<?> paramClass2)
  {
    super(paramClass1, 0, paramObject1, paramObject2, paramBoolean);
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {
      _typeNames = null;
    }
    for (_typeParameters = null;; _typeParameters = paramArrayOfJavaType)
    {
      _typeParametersFor = paramClass2;
      return;
      _typeNames = paramArrayOfString;
    }
  }
  
  public static SimpleType construct(Class<?> paramClass)
  {
    if (Map.class.isAssignableFrom(paramClass)) {
      throw new IllegalArgumentException("Can not construct SimpleType for a Map (class: " + paramClass.getName() + ")");
    }
    if (Collection.class.isAssignableFrom(paramClass)) {
      throw new IllegalArgumentException("Can not construct SimpleType for a Collection (class: " + paramClass.getName() + ")");
    }
    if (paramClass.isArray()) {
      throw new IllegalArgumentException("Can not construct SimpleType for an array (class: " + paramClass.getName() + ")");
    }
    return new SimpleType(paramClass);
  }
  
  public static SimpleType constructUnsafe(Class<?> paramClass)
  {
    return new SimpleType(paramClass, null, null, null, null, false, null);
  }
  
  protected final JavaType _narrow(Class<?> paramClass)
  {
    return new SimpleType(paramClass, _typeNames, _typeParameters, _valueHandler, _typeHandler, _asStatic, _typeParametersFor);
  }
  
  protected final String buildCanonicalName()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(_class.getName());
    if ((_typeParameters != null) && (_typeParameters.length > 0))
    {
      localStringBuilder.append('<');
      int j = 1;
      JavaType[] arrayOfJavaType = _typeParameters;
      int k = arrayOfJavaType.length;
      int i = 0;
      if (i < k)
      {
        JavaType localJavaType = arrayOfJavaType[i];
        if (j != 0) {
          j = 0;
        }
        for (;;)
        {
          localStringBuilder.append(localJavaType.toCanonical());
          i += 1;
          break;
          localStringBuilder.append(',');
        }
      }
      localStringBuilder.append('>');
    }
    return localStringBuilder.toString();
  }
  
  public final JavaType containedType(int paramInt)
  {
    if ((paramInt < 0) || (_typeParameters == null) || (paramInt >= _typeParameters.length)) {
      return null;
    }
    return _typeParameters[paramInt];
  }
  
  public final int containedTypeCount()
  {
    if (_typeParameters == null) {
      return 0;
    }
    return _typeParameters.length;
  }
  
  public final String containedTypeName(int paramInt)
  {
    if ((paramInt < 0) || (_typeNames == null) || (paramInt >= _typeNames.length)) {
      return null;
    }
    return _typeNames[paramInt];
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    for (;;)
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (paramObject.getClass() != getClass()) {
        return false;
      }
      Object localObject = (SimpleType)paramObject;
      if (_class != _class) {
        return false;
      }
      paramObject = _typeParameters;
      localObject = _typeParameters;
      if (paramObject == null)
      {
        if ((localObject != null) && (localObject.length != 0)) {
          return false;
        }
      }
      else
      {
        if (localObject == null) {
          return false;
        }
        if (paramObject.length != localObject.length) {
          return false;
        }
        int j = paramObject.length;
        int i = 0;
        while (i < j)
        {
          if (!paramObject[i].equals(localObject[i])) {
            return false;
          }
          i += 1;
        }
      }
    }
  }
  
  public final StringBuilder getErasedSignature(StringBuilder paramStringBuilder)
  {
    return _classSignature(_class, paramStringBuilder, true);
  }
  
  public final StringBuilder getGenericSignature(StringBuilder paramStringBuilder)
  {
    int i = 0;
    _classSignature(_class, paramStringBuilder, false);
    Object localObject = paramStringBuilder;
    if (_typeParameters != null)
    {
      paramStringBuilder.append('<');
      localObject = _typeParameters;
      int j = localObject.length;
      while (i < j)
      {
        paramStringBuilder = localObject[i].getGenericSignature(paramStringBuilder);
        i += 1;
      }
      paramStringBuilder.append('>');
      localObject = paramStringBuilder;
    }
    ((StringBuilder)localObject).append(';');
    return (StringBuilder)localObject;
  }
  
  public final Class<?> getParameterSource()
  {
    return _typeParametersFor;
  }
  
  public final boolean isContainerType()
  {
    return false;
  }
  
  public final JavaType narrowContentsBy(Class<?> paramClass)
  {
    throw new IllegalArgumentException("Internal error: SimpleType.narrowContentsBy() should never be called");
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(40);
    localStringBuilder.append("[simple type, class ").append(buildCanonicalName()).append(']');
    return localStringBuilder.toString();
  }
  
  public final JavaType widenContentsBy(Class<?> paramClass)
  {
    throw new IllegalArgumentException("Internal error: SimpleType.widenContentsBy() should never be called");
  }
  
  public final JavaType withContentTypeHandler(Object paramObject)
  {
    throw new IllegalArgumentException("Simple types have no content types; can not call withContenTypeHandler()");
  }
  
  public final SimpleType withContentValueHandler(Object paramObject)
  {
    throw new IllegalArgumentException("Simple types have no content types; can not call withContenValueHandler()");
  }
  
  public final SimpleType withStaticTyping()
  {
    if (_asStatic) {
      return this;
    }
    return new SimpleType(_class, _typeNames, _typeParameters, _valueHandler, _typeHandler, _asStatic, _typeParametersFor);
  }
  
  public final SimpleType withTypeHandler(Object paramObject)
  {
    return new SimpleType(_class, _typeNames, _typeParameters, _valueHandler, paramObject, _asStatic, _typeParametersFor);
  }
  
  public final SimpleType withValueHandler(Object paramObject)
  {
    if (paramObject == _valueHandler) {
      return this;
    }
    return new SimpleType(_class, _typeNames, _typeParameters, paramObject, _typeHandler, _asStatic, _typeParametersFor);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.SimpleType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */