package com.fasterxml.jackson.databind.util;

import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import java.util.Collection;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

public final class EnumValues
{
  private final Class<Enum<?>> _enumClass;
  private final EnumMap<?, SerializableString> _values;
  
  private EnumValues(Class<Enum<?>> paramClass, Map<Enum<?>, SerializableString> paramMap)
  {
    _enumClass = paramClass;
    _values = new EnumMap(paramMap);
  }
  
  public static EnumValues construct(SerializationConfig paramSerializationConfig, Class<Enum<?>> paramClass)
  {
    if (paramSerializationConfig.isEnabled(SerializationFeature.WRITE_ENUMS_USING_TO_STRING)) {
      return constructFromToString(paramSerializationConfig, paramClass);
    }
    return constructFromName(paramSerializationConfig, paramClass);
  }
  
  public static EnumValues constructFromName(MapperConfig<?> paramMapperConfig, Class<Enum<?>> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])ClassUtil.findEnumType(paramClass).getEnumConstants();
    if (arrayOfEnum != null)
    {
      HashMap localHashMap = new HashMap();
      int j = arrayOfEnum.length;
      int i = 0;
      while (i < j)
      {
        Enum localEnum = arrayOfEnum[i];
        localHashMap.put(localEnum, paramMapperConfig.compileString(paramMapperConfig.getAnnotationIntrospector().findEnumValue(localEnum)));
        i += 1;
      }
      return new EnumValues(paramClass, localHashMap);
    }
    throw new IllegalArgumentException("Can not determine enum constants for Class " + paramClass.getName());
  }
  
  public static EnumValues constructFromToString(MapperConfig<?> paramMapperConfig, Class<Enum<?>> paramClass)
  {
    Enum[] arrayOfEnum = (Enum[])ClassUtil.findEnumType(paramClass).getEnumConstants();
    if (arrayOfEnum != null)
    {
      HashMap localHashMap = new HashMap();
      int j = arrayOfEnum.length;
      int i = 0;
      while (i < j)
      {
        Enum localEnum = arrayOfEnum[i];
        localHashMap.put(localEnum, paramMapperConfig.compileString(localEnum.toString()));
        i += 1;
      }
      return new EnumValues(paramClass, localHashMap);
    }
    throw new IllegalArgumentException("Can not determine enum constants for Class " + paramClass.getName());
  }
  
  public final Collection<Enum<?>> enums()
  {
    return _values.keySet();
  }
  
  public final Class<Enum<?>> getEnumClass()
  {
    return _enumClass;
  }
  
  public final EnumMap<?, SerializableString> internalMap()
  {
    return _values;
  }
  
  public final SerializableString serializedValueFor(Enum<?> paramEnum)
  {
    return (SerializableString)_values.get(paramEnum);
  }
  
  public final Collection<SerializableString> values()
  {
    return _values.values();
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.util.EnumValues
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */