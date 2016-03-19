package com.fasterxml.jackson.annotation;

public final class ObjectIdGenerators$IntSequenceGenerator
  extends ObjectIdGenerators.Base<Integer>
{
  private static final long serialVersionUID = 1L;
  protected transient int _nextValue;
  
  public ObjectIdGenerators$IntSequenceGenerator()
  {
    this(Object.class, -1);
  }
  
  public ObjectIdGenerators$IntSequenceGenerator(Class<?> paramClass, int paramInt)
  {
    super(paramClass);
    _nextValue = paramInt;
  }
  
  public final ObjectIdGenerator<Integer> forScope(Class<?> paramClass)
  {
    if (_scope == paramClass) {
      return this;
    }
    return new IntSequenceGenerator(paramClass, _nextValue);
  }
  
  public final Integer generateId(Object paramObject)
  {
    int i = _nextValue;
    _nextValue += 1;
    return Integer.valueOf(i);
  }
  
  protected final int initialValue()
  {
    return 1;
  }
  
  public final ObjectIdGenerator.IdKey key(Object paramObject)
  {
    return new ObjectIdGenerator.IdKey(getClass(), _scope, paramObject);
  }
  
  public final ObjectIdGenerator<Integer> newForSerialization(Object paramObject)
  {
    return new IntSequenceGenerator(_scope, initialValue());
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.annotation.ObjectIdGenerators.IntSequenceGenerator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */