package com.fasterxml.jackson.databind.deser.impl;

import com.fasterxml.jackson.databind.deser.SettableBeanProperty;

final class PropertyValue$Regular
  extends PropertyValue
{
  final SettableBeanProperty _property;
  
  public PropertyValue$Regular(PropertyValue paramPropertyValue, Object paramObject, SettableBeanProperty paramSettableBeanProperty)
  {
    super(paramPropertyValue, paramObject);
    _property = paramSettableBeanProperty;
  }
  
  public final void assign(Object paramObject)
  {
    _property.set(paramObject, value);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.PropertyValue.Regular
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */