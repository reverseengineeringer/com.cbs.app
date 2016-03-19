package com.fasterxml.jackson.annotation;

import java.util.UUID;

public class ObjectIdGenerators
{
  private static abstract class Base<T>
    extends ObjectIdGenerator<T>
  {
    protected final Class<?> _scope;
    
    protected Base(Class<?> paramClass)
    {
      _scope = paramClass;
    }
    
    public boolean canUseFor(ObjectIdGenerator<?> paramObjectIdGenerator)
    {
      return (paramObjectIdGenerator.getClass() == getClass()) && (paramObjectIdGenerator.getScope() == _scope);
    }
    
    public abstract T generateId(Object paramObject);
    
    public final Class<?> getScope()
    {
      return _scope;
    }
  }
  
  public static final class IntSequenceGenerator
    extends ObjectIdGenerators.Base<Integer>
  {
    private static final long serialVersionUID = 1L;
    protected transient int _nextValue;
    
    public IntSequenceGenerator()
    {
      this(Object.class, -1);
    }
    
    public IntSequenceGenerator(Class<?> paramClass, int paramInt)
    {
      super();
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
  
  public static abstract class None
    extends ObjectIdGenerator<Object>
  {}
  
  public static abstract class PropertyGenerator
    extends ObjectIdGenerators.Base<Object>
  {
    private static final long serialVersionUID = 1L;
    
    protected PropertyGenerator(Class<?> paramClass)
    {
      super();
    }
  }
  
  public static final class UUIDGenerator
    extends ObjectIdGenerators.Base<UUID>
  {
    private static final long serialVersionUID = 1L;
    
    public UUIDGenerator()
    {
      this(Object.class);
    }
    
    private UUIDGenerator(Class<?> paramClass)
    {
      super();
    }
    
    public final boolean canUseFor(ObjectIdGenerator<?> paramObjectIdGenerator)
    {
      return paramObjectIdGenerator.getClass() == getClass();
    }
    
    public final ObjectIdGenerator<UUID> forScope(Class<?> paramClass)
    {
      return this;
    }
    
    public final UUID generateId(Object paramObject)
    {
      return UUID.randomUUID();
    }
    
    public final ObjectIdGenerator.IdKey key(Object paramObject)
    {
      return new ObjectIdGenerator.IdKey(getClass(), null, paramObject);
    }
    
    public final ObjectIdGenerator<UUID> newForSerialization(Object paramObject)
    {
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.fasterxml.jackson.annotation.ObjectIdGenerators
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */