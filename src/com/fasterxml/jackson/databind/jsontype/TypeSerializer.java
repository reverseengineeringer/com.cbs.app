package com.fasterxml.jackson.databind.jsontype;

import com.fasterxml.jackson.annotation.JsonTypeInfo.As;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.BeanProperty;

public abstract class TypeSerializer
{
  public abstract TypeSerializer forProperty(BeanProperty paramBeanProperty);
  
  public abstract String getPropertyName();
  
  public abstract TypeIdResolver getTypeIdResolver();
  
  public abstract JsonTypeInfo.As getTypeInclusion();
  
  public abstract void writeCustomTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeCustomTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeCustomTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeCustomTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeCustomTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeCustomTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, String paramString);
  
  public abstract void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator);
  
  public void writeTypePrefixForArray(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    writeTypePrefixForArray(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator);
  
  public void writeTypePrefixForObject(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    writeTypePrefixForObject(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator);
  
  public void writeTypePrefixForScalar(Object paramObject, JsonGenerator paramJsonGenerator, Class<?> paramClass)
  {
    writeTypePrefixForScalar(paramObject, paramJsonGenerator);
  }
  
  public abstract void writeTypeSuffixForArray(Object paramObject, JsonGenerator paramJsonGenerator);
  
  public abstract void writeTypeSuffixForObject(Object paramObject, JsonGenerator paramJsonGenerator);
  
  public abstract void writeTypeSuffixForScalar(Object paramObject, JsonGenerator paramJsonGenerator);
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsontype.TypeSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */