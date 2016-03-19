package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.databind.JsonDeserializer;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;

public class JdkDeserializers
{
  private static final HashSet<String> _classNames;
  
  static
  {
    int j = 0;
    _classNames = new HashSet();
    int i = 0;
    while (i < 4)
    {
      localObject1 = new Class[] { UUID.class, AtomicBoolean.class, StackTraceElement.class, ByteBuffer.class }[i];
      _classNames.add(((Class)localObject1).getName());
      i += 1;
    }
    Object localObject1 = FromStringDeserializer.types();
    int k = localObject1.length;
    i = j;
    while (i < k)
    {
      Object localObject2 = localObject1[i];
      _classNames.add(((Class)localObject2).getName());
      i += 1;
    }
  }
  
  public static JsonDeserializer<?> find(Class<?> paramClass, String paramString)
  {
    if (_classNames.contains(paramString))
    {
      paramString = FromStringDeserializer.findDeserializer(paramClass);
      if (paramString != null) {
        return paramString;
      }
      if (paramClass == UUID.class) {
        return new UUIDDeserializer();
      }
      if (paramClass == StackTraceElement.class) {
        return new StackTraceElementDeserializer();
      }
      if (paramClass == AtomicBoolean.class) {
        return new AtomicBooleanDeserializer();
      }
      if (paramClass == ByteBuffer.class) {
        return new ByteBufferDeserializer();
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.std.JdkDeserializers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */