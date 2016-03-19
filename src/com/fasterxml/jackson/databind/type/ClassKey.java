package com.fasterxml.jackson.databind.type;

import java.io.Serializable;

public final class ClassKey
  implements Serializable, Comparable<ClassKey>
{
  private static final long serialVersionUID = 1L;
  private Class<?> _class;
  private String _className;
  private int _hashCode;
  
  public ClassKey()
  {
    _class = null;
    _className = null;
    _hashCode = 0;
  }
  
  public ClassKey(Class<?> paramClass)
  {
    _class = paramClass;
    _className = paramClass.getName();
    _hashCode = _className.hashCode();
  }
  
  public final int compareTo(ClassKey paramClassKey)
  {
    return _className.compareTo(_className);
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
  
  public final int hashCode()
  {
    return _hashCode;
  }
  
  public final void reset(Class<?> paramClass)
  {
    _class = paramClass;
    _className = paramClass.getName();
    _hashCode = _className.hashCode();
  }
  
  public final String toString()
  {
    return _className;
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.type.ClassKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */