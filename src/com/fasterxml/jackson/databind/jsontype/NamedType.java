package com.fasterxml.jackson.databind.jsontype;

import java.io.Serializable;

public final class NamedType
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  protected final Class<?> _class;
  protected final int _hashCode;
  protected String _name;
  
  public NamedType(Class<?> paramClass)
  {
    this(paramClass, null);
  }
  
  public NamedType(Class<?> paramClass, String paramString)
  {
    _class = paramClass;
    _hashCode = paramClass.getName().hashCode();
    setName(paramString);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (paramObject.getClass() != getClass()) {
        return false;
      }
    } while (_class == _class);
    return false;
  }
  
  public final String getName()
  {
    return _name;
  }
  
  public final Class<?> getType()
  {
    return _class;
  }
  
  public final boolean hasName()
  {
    return _name != null;
  }
  
  public final int hashCode()
  {
    return _hashCode;
  }
  
  public final void setName(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() != 0) {}
    }
    else
    {
      str = null;
    }
    _name = str;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("[NamedType, class ").append(_class.getName()).append(", name: ");
    if (_name == null) {}
    for (String str = "null";; str = "'" + _name + "'") {
      return str + "]";
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.jsontype.NamedType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */