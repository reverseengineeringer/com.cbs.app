package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableBeanProperty;
import com.fasterxml.jackson.databind.jsontype.TypeDeserializer;
import com.fasterxml.jackson.databind.jsontype.TypeIdResolver;

final class ExternalTypeHandler$ExtTypedProperty
{
  private final SettableBeanProperty _property;
  private final TypeDeserializer _typeDeserializer;
  private final String _typePropertyName;
  
  public ExternalTypeHandler$ExtTypedProperty(SettableBeanProperty paramSettableBeanProperty, TypeDeserializer paramTypeDeserializer)
  {
    _property = paramSettableBeanProperty;
    _typeDeserializer = paramTypeDeserializer;
    _typePropertyName = paramTypeDeserializer.getPropertyName();
  }
  
  public final String getDefaultTypeId()
  {
    Class localClass = _typeDeserializer.getDefaultImpl();
    if (localClass == null) {
      return null;
    }
    return _typeDeserializer.getTypeIdResolver().idFromValueAndType(null, localClass);
  }
  
  public final SettableBeanProperty getProperty()
  {
    return _property;
  }
  
  public final String getTypePropertyName()
  {
    return _typePropertyName;
  }
  
  public final boolean hasDefaultType()
  {
    return _typeDeserializer.getDefaultImpl() != null;
  }
  
  public final boolean hasTypePropertyName(String paramString)
  {
    return paramString.equals(_typePropertyName);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.ExternalTypeHandler.ExtTypedProperty
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */