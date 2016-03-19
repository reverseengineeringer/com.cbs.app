package com.google.c.b;

import com.google.c.a.c;
import com.google.c.a.d;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public abstract class t<E>
  extends r<E>
  implements List<E>, RandomAccess
{
  private static final t<Object> a = new ae(ac.a);
  
  public static <E> t<E> a(E paramE)
  {
    return new e(paramE);
  }
  
  static <E> t<E> a(Object[] paramArrayOfObject)
  {
    int i = paramArrayOfObject.length;
    switch (i)
    {
    default: 
      Object[] arrayOfObject = paramArrayOfObject;
      if (i < paramArrayOfObject.length) {
        arrayOfObject = ac.b(paramArrayOfObject, i);
      }
      return new ae(arrayOfObject);
    case 0: 
      return a;
    }
    return new e(paramArrayOfObject[0]);
  }
  
  public static <E> t<E> e()
  {
    return a;
  }
  
  int a(Object[] paramArrayOfObject, int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      paramArrayOfObject[(paramInt + i)] = get(i);
      i += 1;
    }
    return paramInt + j;
  }
  
  public h<E> a(int paramInt)
  {
    return new t.1(this, size(), paramInt);
  }
  
  public t<E> a(int paramInt1, int paramInt2)
  {
    d.a(paramInt1, paramInt2, size());
    switch (paramInt2 - paramInt1)
    {
    default: 
      return b(paramInt1, paramInt2);
    case 0: 
      return a;
    }
    return a(get(paramInt1));
  }
  
  @Deprecated
  public final void add(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final boolean addAll(int paramInt, Collection<? extends E> paramCollection)
  {
    throw new UnsupportedOperationException();
  }
  
  public g<E> b()
  {
    return a(0);
  }
  
  t<E> b(int paramInt1, int paramInt2)
  {
    return new t.a(this, paramInt1, paramInt2 - paramInt1);
  }
  
  public boolean contains(Object paramObject)
  {
    return indexOf(paramObject) >= 0;
  }
  
  public final t<E> d()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == d.a(this)) {}
    do
    {
      return true;
      if (!(paramObject instanceof List)) {
        break;
      }
      paramObject = (List)paramObject;
    } while ((size() == ((List)paramObject).size()) && (aa.a(iterator(), ((List)paramObject).iterator())));
    return false;
  }
  
  public int hashCode()
  {
    int j = 1;
    int k = size();
    int i = 0;
    while (i < k)
    {
      j = j * 31 + get(i).hashCode() ^ 0xFFFFFFFF ^ 0xFFFFFFFF;
      i += 1;
    }
    return j;
  }
  
  public int indexOf(Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator();
      while (localListIterator.hasNext()) {
        if (c.a(paramObject, localListIterator.next())) {
          return localListIterator.previousIndex();
        }
      }
    }
    return -1;
  }
  
  public int lastIndexOf(Object paramObject)
  {
    if (paramObject != null)
    {
      ListIterator localListIterator = listIterator(size());
      while (localListIterator.hasPrevious()) {
        if (c.a(paramObject, localListIterator.previous())) {
          return localListIterator.nextIndex();
        }
      }
    }
    return -1;
  }
  
  @Deprecated
  public final E remove(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public final E set(int paramInt, E paramE)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     com.google.c.b.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */