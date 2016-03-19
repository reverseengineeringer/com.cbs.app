package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsontype.TypeSerializer;
import com.fasterxml.jackson.databind.node.ObjectNode;
import java.lang.reflect.Type;

@JacksonStdImpl
public class StdArraySerializers$ByteArraySerializer
  extends StdSerializer<byte[]>
{
  public StdArraySerializers$ByteArraySerializer()
  {
    super(byte[].class);
  }
  
  public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper paramJsonFormatVisitorWrapper, JavaType paramJavaType)
  {
    if (paramJsonFormatVisitorWrapper != null)
    {
      paramJsonFormatVisitorWrapper = paramJsonFormatVisitorWrapper.expectArrayFormat(paramJavaType);
      if (paramJsonFormatVisitorWrapper != null) {
        paramJsonFormatVisitorWrapper.itemsFormat(JsonFormatTypes.STRING);
      }
    }
  }
  
  public JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType)
  {
    return createSchemaNode("array", true).set("items", createSchemaNode("string"));
  }
  
  public boolean isEmpty(SerializerProvider paramSerializerProvider, byte[] paramArrayOfByte)
  {
    return (paramArrayOfByte == null) || (paramArrayOfByte.length == 0);
  }
  
  public void serialize(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    paramJsonGenerator.writeBinary(paramSerializerProvider.getConfig().getBase64Variant(), paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void serializeWithType(byte[] paramArrayOfByte, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider, TypeSerializer paramTypeSerializer)
  {
    paramTypeSerializer.writeTypePrefixForScalar(paramArrayOfByte, paramJsonGenerator);
    paramJsonGenerator.writeBinary(paramSerializerProvider.getConfig().getBase64Variant(), paramArrayOfByte, 0, paramArrayOfByte.length);
    paramTypeSerializer.writeTypeSuffixForScalar(paramArrayOfByte, paramJsonGenerator);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.std.StdArraySerializers.ByteArraySerializer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */