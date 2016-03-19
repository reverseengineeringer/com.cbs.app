package com.fasterxml.jackson.databind.deser;

import com.fasterxml.jackson.databind.DeserializationConfig;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.introspect.AnnotatedParameter;
import com.fasterxml.jackson.databind.introspect.AnnotatedWithParams;

public abstract class ValueInstantiator
{
  protected Object _createFromStringFallbacks(DeserializationContext paramDeserializationContext, String paramString)
  {
    if (canCreateFromBoolean())
    {
      String str = paramString.trim();
      if ("true".equals(str)) {
        return createFromBoolean(paramDeserializationContext, true);
      }
      if ("false".equals(str)) {
        return createFromBoolean(paramDeserializationContext, false);
      }
    }
    if ((paramString.length() == 0) && (paramDeserializationContext.isEnabled(DeserializationFeature.ACCEPT_EMPTY_STRING_AS_NULL_OBJECT))) {
      return null;
    }
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " from String value ('" + paramString + "'); no single-String constructor/factory method");
  }
  
  public boolean canCreateFromBoolean()
  {
    return false;
  }
  
  public boolean canCreateFromDouble()
  {
    return false;
  }
  
  public boolean canCreateFromInt()
  {
    return false;
  }
  
  public boolean canCreateFromLong()
  {
    return false;
  }
  
  public boolean canCreateFromObjectWith()
  {
    return false;
  }
  
  public boolean canCreateFromString()
  {
    return false;
  }
  
  public boolean canCreateUsingDefault()
  {
    return getDefaultCreator() != null;
  }
  
  public boolean canCreateUsingDelegate()
  {
    return false;
  }
  
  public boolean canInstantiate()
  {
    return (canCreateUsingDefault()) || (canCreateUsingDelegate()) || (canCreateFromObjectWith()) || (canCreateFromString()) || (canCreateFromInt()) || (canCreateFromLong()) || (canCreateFromDouble()) || (canCreateFromBoolean());
  }
  
  public Object createFromBoolean(DeserializationContext paramDeserializationContext, boolean paramBoolean)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Boolean value (" + paramBoolean + ")");
  }
  
  public Object createFromDouble(DeserializationContext paramDeserializationContext, double paramDouble)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Floating-point number (" + paramDouble + ", double)");
  }
  
  public Object createFromInt(DeserializationContext paramDeserializationContext, int paramInt)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Integer number (" + paramInt + ", int)");
  }
  
  public Object createFromLong(DeserializationContext paramDeserializationContext, long paramLong)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " from Integer number (" + paramLong + ", long)");
  }
  
  public Object createFromObjectWith(DeserializationContext paramDeserializationContext, Object[] paramArrayOfObject)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " with arguments");
  }
  
  public Object createFromString(DeserializationContext paramDeserializationContext, String paramString)
  {
    return _createFromStringFallbacks(paramDeserializationContext, paramString);
  }
  
  public Object createUsingDefault(DeserializationContext paramDeserializationContext)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + "; no default creator found");
  }
  
  public Object createUsingDelegate(DeserializationContext paramDeserializationContext, Object paramObject)
  {
    throw paramDeserializationContext.mappingException("Can not instantiate value of type " + getValueTypeDesc() + " using delegate");
  }
  
  public AnnotatedWithParams getDefaultCreator()
  {
    return null;
  }
  
  public AnnotatedWithParams getDelegateCreator()
  {
    return null;
  }
  
  public JavaType getDelegateType(DeserializationConfig paramDeserializationConfig)
  {
    return null;
  }
  
  public SettableBeanProperty[] getFromObjectArguments(DeserializationConfig paramDeserializationConfig)
  {
    return null;
  }
  
  public AnnotatedParameter getIncompleteParameter()
  {
    return null;
  }
  
  public abstract String getValueTypeDesc();
  
  public AnnotatedWithParams getWithArgsCreator()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.ValueInstantiator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */