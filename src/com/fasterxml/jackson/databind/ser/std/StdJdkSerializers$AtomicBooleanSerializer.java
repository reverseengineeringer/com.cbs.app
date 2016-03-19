package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.lang.reflect.Type;
import java.util.concurrent.atomic.AtomicBoolean;

public class StdJdkSerializers$AtomicBooleanSerializer
  extends StdScalarSerializer<AtomicBoolean>
{
  public StdJdkSerializers$AtomicBooleanSerializer()
  {
    super(AtomicBoolean.class, false);
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    paramJsonFormatVisitorWrapper.expectBooleanFormat(paramJavaType);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("boolean", true);
  }
  
  public void serialize(AtomicBoolean paramAtomicBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeBoolean(paramAtomicBoolean.get());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdJdkSerializers.AtomicBooleanSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */