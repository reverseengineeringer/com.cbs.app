package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import java.io.Serializable;

public final class ObjectWriter$Prefetch
  implements Serializable
{
  public static final Prefetch empty = new Prefetch(null, null, null);
  private static final long serialVersionUID = 1L;
  public final JavaType rootType;
  public final TypeSerializer typeSerializer;
  public final JsonSerializer<Object> valueSerializer;
  
  private ObjectWriter$Prefetch(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer, TypeSerializer paramTypeSerializer)
  {
    rootType = paramJavaType;
    valueSerializer = paramJsonSerializer;
    typeSerializer = paramTypeSerializer;
  }
  
  public static Prefetch construct(JavaType paramJavaType, JsonSerializer<Object> paramJsonSerializer)
  {
    if ((paramJavaType == null) && (paramJsonSerializer == null)) {
      return empty;
    }
    return new Prefetch(paramJavaType, paramJsonSerializer, null);
  }
  
  public static Prefetch construct(JavaType paramJavaType, TypeSerializer paramTypeSerializer)
  {
    if ((paramJavaType == null) && (paramTypeSerializer == null)) {
      return empty;
    }
    return new Prefetch(paramJavaType, null, paramTypeSerializer);
  }
  
  public final boolean hasSerializer()
  {
    return (valueSerializer != null) || (typeSerializer != null);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ObjectWriter.Prefetch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */