package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;

public abstract interface JsonArrayFormatVisitor
  extends JsonFormatVisitorWithSerializerProvider
{
  public abstract void itemsFormat(JsonFormatTypes paramJsonFormatTypes);
  
  public abstract void itemsFormat(JsonFormatVisitable paramJsonFormatVisitable, JavaType paramJavaType);
  
  public static class Base
    implements JsonArrayFormatVisitor
  {
    protected SerializerProvider _provider;
    
    public Base() {}
    
    public Base(SerializerProvider paramSerializerProvider)
    {
      _provider = paramSerializerProvider;
    }
    
    public SerializerProvider getProvider()
    {
      return _provider;
    }
    
    public void itemsFormat(JsonFormatTypes paramJsonFormatTypes) {}
    
    public void itemsFormat(JsonFormatVisitable paramJsonFormatVisitable, JavaType paramJavaType) {}
    
    public void setProvider(SerializerProvider paramSerializerProvider)
    {
      _provider = paramSerializerProvider;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */