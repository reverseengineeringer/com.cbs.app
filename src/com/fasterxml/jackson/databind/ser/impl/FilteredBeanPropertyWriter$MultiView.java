package com.fasterxml.jackson.databind.ser.impl;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.ser.BeanPropertyWriter;
import com.fasterxml.jackson.databind.util.NameTransformer;

final class FilteredBeanPropertyWriter$MultiView
  extends BeanPropertyWriter
{
  protected final BeanPropertyWriter _delegate;
  protected final Class<?>[] _views;
  
  protected FilteredBeanPropertyWriter$MultiView(BeanPropertyWriter paramBeanPropertyWriter, Class<?>[] paramArrayOfClass)
  {
    super(paramBeanPropertyWriter);
    _delegate = paramBeanPropertyWriter;
    _views = paramArrayOfClass;
  }
  
  public final void assignNullSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    _delegate.assignNullSerializer(paramJsonSerializer);
  }
  
  public final void assignSerializer(JsonSerializer<Object> paramJsonSerializer)
  {
    _delegate.assignSerializer(paramJsonSerializer);
  }
  
  public final MultiView rename(NameTransformer paramNameTransformer)
  {
    return new MultiView(_delegate.rename(paramNameTransformer), _views);
  }
  
  public final void serializeAsElement(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getActiveView();
    if (localClass != null)
    {
      int i = 0;
      int j = _views.length;
      while ((i < j) && (!_views[i].isAssignableFrom(localClass))) {
        i += 1;
      }
      if (i == j)
      {
        _delegate.serializeAsPlaceholder(paramObject, paramJsonGenerator, paramSerializerProvider);
        return;
      }
    }
    _delegate.serializeAsElement(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
  
  public final void serializeAsField(Object paramObject, JsonGenerator paramJsonGenerator, SerializerProvider paramSerializerProvider)
  {
    Class localClass = paramSerializerProvider.getActiveView();
    if (localClass != null)
    {
      int i = 0;
      int j = _views.length;
      while ((i < j) && (!_views[i].isAssignableFrom(localClass))) {
        i += 1;
      }
      if (i == j)
      {
        _delegate.serializeAsOmittedField(paramObject, paramJsonGenerator, paramSerializerProvider);
        return;
      }
    }
    _delegate.serializeAsField(paramObject, paramJsonGenerator, paramSerializerProvider);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.ser.impl.FilteredBeanPropertyWriter.MultiView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */