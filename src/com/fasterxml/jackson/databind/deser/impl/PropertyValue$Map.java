package com.fasterxml.jackson.databind.deser.impl;

import java.util.Map;

final class PropertyValue$Map
  extends PropertyValue
{
  final Object _key;
  
  public PropertyValue$Map(PropertyValue paramPropertyValue, Object paramObject1, Object paramObject2)
  {
    super(paramPropertyValue, paramObject1);
    _key = paramObject2;
  }
  
  public final void assign(Object paramObject)
  {
    ((Map)paramObject).put(_key, value);
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.deser.impl.PropertyValue.Map
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */