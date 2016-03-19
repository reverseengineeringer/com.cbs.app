package com.google.c.b;

import com.google.c.a.d;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

public abstract class r<E>
  extends AbstractCollection<E>
  implements Serializable
{
  private transient t<E> a;
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    Iterator localIterator = iterator();
    while (localIterator.hasNext())
    {
      paramArrayOfObject[paramInt] = localIterator.next();
      paramInt += 1;
    }
    return paramInt;
  }
  
  @Deprecated
  public final boolean add(E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract g<E> b();
  
  t<E> c()
  {
    switch (size())
    {
    default: 
      return new ad(this, toArray());
    case 0: 
      return t.e();
    }
    return t.a(b().next());
  }
  
  @Deprecated
  public final void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean contains(Object paramObject)
  {
    return (paramObject != null) && (super.contains(paramObject));
  }
  
  public t<E> d()
  {
    t localt2 = a;
    t localt1 = localt2;
    if (localt2 == null)
    {
      localt1 = c();
      a = localt1;
    }
    return localt1;
  }
  
  @Deprecated
  public final boolean remove(Object paramObject)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean removeAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean retainAll(Collection<?> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public final Object[] toArray()
  {
    int i = size();
    if (i == 0) {
      return ac.a;
    }
    Object[] arrayOfObject = new Object[i];
    a(arrayOfObject, 0);
    return arrayOfObject;
  }
  
  public final <T> T[] toArray(T[] paramArrayOfT)
  {
    d.a(paramArrayOfT);
    int i = size();
    Object localObject;
    if (paramArrayOfT.length < i) {
      localObject = ac.a(paramArrayOfT, i);
    }
    for (;;)
    {
      a((Object[])localObject, 0);
      return (T[])localObject;
      localObject = paramArrayOfT;
      if (paramArrayOfT.length > i)
      {
        paramArrayOfT[i] = null;
        localObject = paramArrayOfT;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.c.b.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */