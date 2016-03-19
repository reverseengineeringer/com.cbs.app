package com.fasterxml.jackson.databind.introspect;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public final class AnnotatedMethodMap
  implements Iterable<AnnotatedMethod>
{
  protected LinkedHashMap<MemberKey, AnnotatedMethod> _methods;
  
  public final void add(AnnotatedMethod paramAnnotatedMethod)
  {
    if (_methods == null) {
      _methods = new LinkedHashMap();
    }
    _methods.put(new MemberKey(paramAnnotatedMethod.getAnnotated()), paramAnnotatedMethod);
  }
  
  public final AnnotatedMethod find(String paramString, Class<?>[] paramArrayOfClass)
  {
    if (_methods == null) {
      return null;
    }
    return (AnnotatedMethod)_methods.get(new MemberKey(paramString, paramArrayOfClass));
  }
  
  public final AnnotatedMethod find(Method paramMethod)
  {
    if (_methods == null) {
      return null;
    }
    return (AnnotatedMethod)_methods.get(new MemberKey(paramMethod));
  }
  
  public final boolean isEmpty()
  {
    return (_methods == null) || (_methods.size() == 0);
  }
  
  public final Iterator<AnnotatedMethod> iterator()
  {
    if (_methods != null) {
      return _methods.values().iterator();
    }
    return Collections.emptyList().iterator();
  }
  
  public final AnnotatedMethod remove(AnnotatedMethod paramAnnotatedMethod)
  {
    return remove(paramAnnotatedMethod.getAnnotated());
  }
  
  public final AnnotatedMethod remove(Method paramMethod)
  {
    if (_methods != null) {
      return (AnnotatedMethod)_methods.remove(new MemberKey(paramMethod));
    }
    return null;
  }
  
  public final int size()
  {
    if (_methods == null) {
      return 0;
    }
    return _methods.size();
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.databind.introspect.AnnotatedMethodMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */