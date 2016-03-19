package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.type.TypeBindings;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public final class AnnotatedMethod
  extends AnnotatedWithParams
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final transient Method _method;
  protected Class<?>[] _paramClasses;
  protected Serialization _serialization;
  
  public AnnotatedMethod(AnnotatedClass paramAnnotatedClass, Method paramMethod, AnnotationMap paramAnnotationMap, AnnotationMap[] paramArrayOfAnnotationMap)
  {
    super(paramAnnotatedClass, paramAnnotationMap, paramArrayOfAnnotationMap);
    if (paramMethod == null) {
      throw new IllegalArgumentException("Can not construct AnnotatedMethod with null Method");
    }
    _method = paramMethod;
  }
  
  protected AnnotatedMethod(Serialization paramSerialization)
  {
    super(null, null, null);
    _method = null;
    _serialization = paramSerialization;
  }
  
  public final Object call()
  {
    return _method.invoke(null, new Object[0]);
  }
  
  public final Object call(Object[] paramArrayOfObject)
  {
    return _method.invoke(null, paramArrayOfObject);
  }
  
  public final Object call1(Object paramObject)
  {
    return _method.invoke(null, new Object[] { paramObject });
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if ((paramObject == null) || (paramObject.getClass() != getClass())) {
        return false;
      }
    } while (_method == _method);
    return false;
  }
  
  public final Method getAnnotated()
  {
    return _method;
  }
  
  public final Class<?> getDeclaringClass()
  {
    return _method.getDeclaringClass();
  }
  
  public final String getFullName()
  {
    return getDeclaringClass().getName() + "#" + getName() + "(" + getParameterCount() + " params)";
  }
  
  public final Type getGenericParameterType(int paramInt)
  {
    Type[] arrayOfType = _method.getGenericParameterTypes();
    if (paramInt >= arrayOfType.length) {
      return null;
    }
    return arrayOfType[paramInt];
  }
  
  public final Type[] getGenericParameterTypes()
  {
    return _method.getGenericParameterTypes();
  }
  
  public final Type getGenericReturnType()
  {
    return _method.getGenericReturnType();
  }
  
  public final Type getGenericType()
  {
    return _method.getGenericReturnType();
  }
  
  public final Method getMember()
  {
    return _method;
  }
  
  public final int getModifiers()
  {
    return _method.getModifiers();
  }
  
  public final String getName()
  {
    return _method.getName();
  }
  
  public final int getParameterCount()
  {
    return getRawParameterTypes().length;
  }
  
  public final Class<?> getRawParameterType(int paramInt)
  {
    Class[] arrayOfClass = getRawParameterTypes();
    if (paramInt >= arrayOfClass.length) {
      return null;
    }
    return arrayOfClass[paramInt];
  }
  
  public final Class<?>[] getRawParameterTypes()
  {
    if (_paramClasses == null) {
      _paramClasses = _method.getParameterTypes();
    }
    return _paramClasses;
  }
  
  public final Class<?> getRawReturnType()
  {
    return _method.getReturnType();
  }
  
  public final Class<?> getRawType()
  {
    return _method.getReturnType();
  }
  
  public final JavaType getType(TypeBindings paramTypeBindings)
  {
    return getType(paramTypeBindings, _method.getTypeParameters());
  }
  
  public final Object getValue(Object paramObject)
  {
    try
    {
      paramObject = _method.invoke(paramObject, new Object[0]);
      return paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new IllegalArgumentException("Failed to getValue() with method " + getFullName() + ": " + ((IllegalAccessException)paramObject).getMessage(), (Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      throw new IllegalArgumentException("Failed to getValue() with method " + getFullName() + ": " + ((InvocationTargetException)paramObject).getMessage(), (Throwable)paramObject);
    }
  }
  
  public final boolean hasReturnType()
  {
    Class localClass = getRawReturnType();
    return (localClass != Void.TYPE) && (localClass != Void.class);
  }
  
  public final int hashCode()
  {
    return _method.getName().hashCode();
  }
  
  final Object readResolve()
  {
    Class localClass = _serialization.clazz;
    try
    {
      Object localObject = localClass.getDeclaredMethod(_serialization.name, _serialization.args);
      if (!((Method)localObject).isAccessible()) {
        ClassUtil.checkAndFixAccess((Member)localObject);
      }
      localObject = new AnnotatedMethod(null, (Method)localObject, null, null);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new IllegalArgumentException("Could not find method '" + _serialization.name + "' from Class '" + localClass.getName());
    }
  }
  
  public final void setValue(Object paramObject1, Object paramObject2)
  {
    try
    {
      _method.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    catch (IllegalAccessException paramObject1)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + ((IllegalAccessException)paramObject1).getMessage(), (Throwable)paramObject1);
    }
    catch (InvocationTargetException paramObject1)
    {
      throw new IllegalArgumentException("Failed to setValue() with method " + getFullName() + ": " + ((InvocationTargetException)paramObject1).getMessage(), (Throwable)paramObject1);
    }
  }
  
  public final String toString()
  {
    return "[method " + getFullName() + "]";
  }
  
  public final AnnotatedMethod withAnnotations(AnnotationMap paramAnnotationMap)
  {
    return new AnnotatedMethod(_context, _method, paramAnnotationMap, _paramAnnotations);
  }
  
  public final AnnotatedMethod withMethod(Method paramMethod)
  {
    return new AnnotatedMethod(_context, paramMethod, _annotations, _paramAnnotations);
  }
  
  final Object writeReplace()
  {
    return new AnnotatedMethod(new Serialization(_method));
  }
  
  private static final class Serialization
    implements Serializable
  {
    private static final long serialVersionUID = 1L;
    protected Class<?>[] args;
    protected Class<?> clazz;
    protected String name;
    
    public Serialization(Method paramMethod)
    {
      clazz = paramMethod.getDeclaringClass();
      name = paramMethod.getName();
      args = paramMethod.getParameterTypes();
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.AnnotatedMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */