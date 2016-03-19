package com.google.c.b;

import java.io.Serializable;
import java.util.Map;
import java.util.Map.Entry;

public abstract class u<K, V>
  implements Serializable, Map<K, V>
{
  private static final Map.Entry<?, ?>[] a = new Map.Entry[0];
  private transient z<Map.Entry<K, V>> b;
  private transient z<K> c;
  private transient r<V> d;
  
  public static <K, V> u<K, V> b(K paramK, V paramV)
  {
    return q.a(paramK, paramV);
  }
  
  static <K, V> v.a<K, V> c(K paramK, V paramV)
  {
    k.a(paramK, paramV);
    return new v.a(paramK, paramV);
  }
  
  public static <K, V> u<K, V> h()
  {
    return q.f();
  }
  
  abstract z<Map.Entry<K, V>> a();
  
  z<K> b()
  {
    return new x(this);
  }
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return get(paramObject) != null;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return g().contains(paramObject);
  }
  
  public z<Map.Entry<K, V>> d()
  {
    z localz2 = b;
    z localz1 = localz2;
    if (localz2 == null)
    {
      localz1 = a();
      b = localz1;
    }
    return localz1;
  }
  
  public z<K> e()
  {
    z localz2 = c;
    z localz1 = localz2;
    if (localz2 == null)
    {
      localz1 = b();
      c = localz1;
    }
    return localz1;
  }
  
  public boolean equals(Object paramObject)
  {
    return ab.a(this, paramObject);
  }
  
  public r<V> g()
  {
    r localr = d;
    Object localObject = localr;
    if (localr == null)
    {
      localObject = new y(this);
      d = ((r)localObject);
    }
    return (r<V>)localObject;
  }
  
  public abstract V get(Object paramObject);
  
  public int hashCode()
  {
    return d().hashCode();
  }
  
  public boolean isEmpty()
  {
    return size() == 0;
  }
  
  @Deprecated
  public final V put(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final V remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  public String toString()
  {
    return ab.a(this);
  }
}

/* Location:
 * Qualified Name:     com.google.c.b.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */