package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import java.lang.reflect.Type;

@JacksonStdImpl
public final class BooleanSerializer
  extends NonTypedScalarSerializerBase<Boolean>
{
  private static final long serialVersionUID = 1L;
  protected final boolean _forPrimitive;
  
  public BooleanSerializer(boolean paramBoolean)
  {
    super(Boolean.class);
    _forPrimitive = paramBoolean;
  }
  
  public final void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper != null) {
      paramJsonFormatVisitorWrapper.expectBooleanFormat(paramJavaType);
    }
  }
  
  public final JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    if (!_forPrimitive) {}
    for (boolean bool = true;; bool = false) {
      return createSchemaNode("boolean", bool);
    }
  }
  
  public final void serialize(Boolean paramBoolean, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeBoolean(paramBoolean.booleanValue());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.BooleanSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */