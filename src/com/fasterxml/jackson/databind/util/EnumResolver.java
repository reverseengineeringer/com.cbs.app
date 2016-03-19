package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.databind.AnnotationIntrospector;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class EnumResolver<T extends Enum<T>>
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final Class<T> _enumClass;
  protected final T[] _enums;
  protected final HashMap<String, T> _enumsById;
  
  protected EnumResolver(Class<T> paramClass, T[] paramArrayOfT, HashMap<String, T> paramHashMap)
  {
    _enumClass = paramClass;
    _enums = paramArrayOfT;
    _enumsById = paramHashMap;
  }
  
  public static <ET extends Enum<ET>> EnumResolver<ET> constructFor(Class<ET> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    if (arrayOfEnum == null) {
      throw new IllegalArgumentException("No enum constants for class " + paramClass.getName());
    }
    HashMap localHashMap = new HashMap();
    int j = arrayOfEnum.length;
    int i = 0;
    while (i < j)
    {
      Enum localEnum = arrayOfEnum[i];
      localHashMap.put(paramAnnotationIntrospector.findEnumValue(localEnum), localEnum);
      i += 1;
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }
  
  public static EnumResolver<?> constructUnsafe(Class<?> paramClass, AnnotationIntrospector paramAnnotationIntrospector)
  {
    return constructFor(paramClass, paramAnnotationIntrospector);
  }
  
  public static EnumResolver<?> constructUnsafeUsingMethod(Class<?> paramClass, Method paramMethod)
  {
    return constructUsingMethod(paramClass, paramMethod);
  }
  
  public static EnumResolver<?> constructUnsafeUsingToString(Class<?> paramClass)
  {
    return constructUsingToString(paramClass);
  }
  
  public static <ET extends Enum<ET>> EnumResolver<ET> constructUsingMethod(Class<ET> paramClass, Method paramMethod)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    HashMap localHashMap = new HashMap();
    int i = arrayOfEnum.length;
    for (;;)
    {
      int j = i - 1;
      if (j >= 0)
      {
        Enum localEnum = arrayOfEnum[j];
        try
        {
          Object localObject = paramMethod.invoke(localEnum, new Object[0]);
          i = j;
          if (localObject != null)
          {
            localHashMap.put(localObject.toString(), localEnum);
            i = j;
          }
        }
        catch (Exception paramClass)
        {
          throw new IllegalArgumentException("Failed to access @JsonValue of Enum value " + localEnum + ": " + paramClass.getMessage());
        }
      }
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }
  
  public static <ET extends Enum<ET>> EnumResolver<ET> constructUsingToString(Class<ET> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])paramClass.getEnumConstants();
    HashMap localHashMap = new HashMap();
    int i = arrayOfEnum.length;
    for (;;)
    {
      i -= 1;
      if (i < 0) {
        break;
      }
      Enum localEnum = arrayOfEnum[i];
      localHashMap.put(localEnum.toString(), localEnum);
    }
    return new EnumResolver(paramClass, arrayOfEnum, localHashMap);
  }
  
  public T findEnum(String paramString)
  {
    return (Enum)_enumsById.get(paramString);
  }
  
  public T getEnum(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= _enums.length)) {
      return null;
    }
    return _enums[paramInt];
  }
  
  public Class<T> getEnumClass()
  {
    return _enumClass;
  }
  
  public List<T> getEnums()
  {
    ArrayList localArrayList = new ArrayList(_enums.length);
    Enum[] arrayOfEnum = _enums;
    int j = arrayOfEnum.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(arrayOfEnum[i]);
      i += 1;
    }
    return localArrayList;
  }
  
  public int lastValidIndex()
  {
    return _enums.length - 1;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.EnumResolver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */