package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;

final class FilteredBeanPropertyWriter$SingleView
  extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?> _view;
  
  protected FilteredBeanPropertyWriter$SingleView(BeanPropertyWriter paramBeanPropertyWriter, Class<?> paramClass)
  {
    super(paramBeanPropertyWriter);
    _delegate = paramBeanPropertyWriter;
    _view = paramClass;
  }
  
  public final void assignNullSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    _delegate.assignNullSerializer(paramJsonSerializer);
  }
  
  public final void assignSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    _delegate.assignSerializer(paramJsonSerializer);
  }
  
  public final SingleView rename(NameTransformer paramNameTransformer)
  {
    return new SingleView(_delegate.rename(paramNameTransformer), _view);
  }
  
  public final void serializeAsElement(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getActiveView();
    if ((localClass == null) || (_view.isAssignableFrom(localClass)))
    {
      _delegate.serializeAsElement(paramObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    _delegate.serializeAsPlaceholder(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public final void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getActiveView();
    if ((localClass == null) || (_view.isAssignableFrom(localClass)))
    {
      _delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
      return;
    }
    _delegate.serializeAsOmittedField(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter.SingleView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */