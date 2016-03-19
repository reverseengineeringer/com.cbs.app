package com.fasterxml.jackson.databind.jsonschema;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.SerializerProvider;
import java.lang.reflect.Type;

public abstract interface SchemaAware
{
  public abstract JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType);
  
  public abstract JsonNode getSchema(SerializerProvider paramSerializerProvider, Type paramType, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsonschema.SchemaAware
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */