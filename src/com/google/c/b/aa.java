package com.google.c.b;

import com.google.c.a.c;
import com.google.c.a.d;
import com.google.c.a.e;
import com.google.c.a.f;
import java.util.Iterator;

public final class aa
{
  static final h<Object> a = new aa.1();
  private static final Iterator<Object> b = new aa.4();
  
  @Deprecated
  public static <T> g<T> a()
  {
    return a;
  }
  
  public static <T> g<T> a(T paramT)
  {
    return new aa.3(paramT);
  }
  
  static <T> h<T> a(T[] paramArrayOfT, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      d.a(bool);
      d.a(paramInt1, paramInt1 + paramInt2, paramArrayOfT.length);
      d.b(paramInt3, paramInt2);
      if (paramInt2 != 0) {
        break;
      }
      return a;
    }
    return new aa.2(paramInt2, paramInt3, paramArrayOfT, paramInt1);
  }
  
  public static boolean a(Iterator<?> paramIterator, Object paramObject)
  {
    boolean bool = false;
    paramObject = f.a(paramObject);
    if (paramObject == null) {
      throw new NullPointerException(String.valueOf("predicate"));
    }
    int i = 0;
    if (paramIterator.hasNext()) {
      if (!((e)paramObject).a(paramIterator.next())) {}
    }
    for (;;)
    {
      if (i != -1) {
        bool = true;
      }
      return bool;
      i += 1;
      break;
      i = -1;
    }
  }
  
  public static boolean a(Iterator<?> paramIterator1, Iterator<?> paramIterator2)
  {
    if (paramIterator1.hasNext()) {
      if (paramIterator2.hasNext()) {}
    }
    while (paramIterator2.hasNext())
    {
      return false;
      if (c.a(paramIterator1.next(), paramIterator2.next())) {
        break;
      }
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.c.b.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */