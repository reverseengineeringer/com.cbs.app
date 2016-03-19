package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.annotation.ObjectIdGenerator;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

public final class WritableObjectId
{
  public final ObjectIdGenerator<?> generator;
  public Object id;
  protected boolean idWritten = false;
  
  public WritableObjectId(ObjectIdGenerator<?> paramObjectIdGenerator)
  {
    generator = paramObjectIdGenerator;
  }
  
  public final Object generateId(Object paramObject)
  {
    paramObject = generator.generateId(paramObject);
    id = paramObject;
    return paramObject;
  }
  
  public final void writeAsField(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, ObjectIdWriter paramObjectIdWriter)
  {
    idWritten = true;
    if (paramJsonGenerator.canWriteObjectId()) {
      paramJsonGenerator.writeObjectId(String.valueOf(id));
    }
    SerializableString localSerializableString;
    do
    {
      return;
      localSerializableString = propertyName;
    } while (localSerializableString == null);
    paramJsonGenerator.writeFieldName(localSerializableString);
    serializer.serialize(id, paramJsonGenerator, paramSerializerProvider);
  }
  
  public final boolean writeAsId(JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, ObjectIdWriter paramObjectIdWriter)
  {
    if ((id != null) && ((idWritten) || (alwaysAsId)))
    {
      if (paramJsonGenerator.canWriteObjectId()) {
        paramJsonGenerator.writeObjectRef(String.valueOf(id));
      }
      for (;;)
      {
        return true;
        serializer.serialize(id, paramJsonGenerator, paramSerializerProvider);
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.WritableObjectId
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */