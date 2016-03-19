package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.util.TokenBuffer;
import java.lang.reflect.Type;

@JacksonStdImpl
public class TokenBufferSerializer
  extends StdSerializer<TokenBuffer>
{
  public TokenBufferSerializer()
  {
    super(TokenBuffer.class);
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    paramJsonFormatVisitorWrapper.expectAnyFormat(paramJavaType);
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("any", true);
  }
  
  public void serialize(TokenBuffer paramTokenBuffer, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramTokenBuffer.serialize(paramJsonGenerator);
  }
  
  public final void serializeWithType(TokenBuffer paramTokenBuffer, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramTokenBuffer, paramJsonGenerator);
    serialize(paramTokenBuffer, paramJsonGenerator, paramSerializerProvider);
    paramTypeSerializer.writeTypeSuffixForScalar(paramTokenBuffer, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.TokenBufferSerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */