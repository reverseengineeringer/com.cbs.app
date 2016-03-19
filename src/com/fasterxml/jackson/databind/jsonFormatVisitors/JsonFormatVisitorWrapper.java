package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.SerializerProvider;

public abstract interface JsonFormatVisitorWrapper
  extends JsonFormatVisitorWithSerializerProvider
{
  public abstract JsonAnyFormatVisitor expectAnyFormat(JavaType paramJavaType);
  
  public abstract JsonArrayFormatVisitor expectArrayFormat(JavaType paramJavaType);
  
  public abstract JsonBooleanFormatVisitor expectBooleanFormat(JavaType paramJavaType);
  
  public abstract JsonIntegerFormatVisitor expectIntegerFormat(JavaType paramJavaType);
  
  public abstract JsonMapFormatVisitor expectMapFormat(JavaType paramJavaType);
  
  public abstract JsonNullFormatVisitor expectNullFormat(JavaType paramJavaType);
  
  public abstract JsonNumberFormatVisitor expectNumberFormat(JavaType paramJavaType);
  
  public abstract JsonObjectFormatVisitor expectObjectFormat(JavaType paramJavaType);
  
  public abstract JsonStringFormatVisitor expectStringFormat(JavaType paramJavaType);
  
  public static class Base
    implements JsonFormatVisitorWrapper
  {
    protected SerializerProvider _provider;
    
    public Base() {}
    
    public Base(SerializerProvider paramSerializerProvider)
    {
      _provider = paramSerializerProvider;
    }
    
    public JsonAnyFormatVisitor expectAnyFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonArrayFormatVisitor expectArrayFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonBooleanFormatVisitor expectBooleanFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonIntegerFormatVisitor expectIntegerFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonMapFormatVisitor expectMapFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonNullFormatVisitor expectNullFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonNumberFormatVisitor expectNumberFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonObjectFormatVisitor expectObjectFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public JsonStringFormatVisitor expectStringFormat(JavaType paramJavaType)
    {
      return null;
    }
    
    public SerializerProvider getProvider()
    {
      return _provider;
    }
    
    public void setProvider(SerializerProvider paramSerializerProvider)
    {
      _provider = paramSerializerProvider;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */