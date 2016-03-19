package com.google.e;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class g
  extends i
  implements Iterable<i>
{
  private final List<i> a = new ArrayList();
  
  public final int a()
  {
    return a.size();
  }
  
  public final i a(int paramInt)
  {
    return (i)a.get(paramInt);
  }
  
  public final void a(i parami)
  {
    Object localObject = parami;
    if (parami == null) {
      localObject = k.a;
    }
    a.add(localObject);
  }
  
  public final Number b()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).b();
    }
    throw new IllegalStateException();
  }
  
  public final String c()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).c();
    }
    throw new IllegalStateException();
  }
  
  public final double d()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).d();
    }
    throw new IllegalStateException();
  }
  
  public final long e()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).e();
    }
    throw new IllegalStateException();
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof g)) && (a.equals(a)));
  }
  
  public final int f()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).f();
    }
    throw new IllegalStateException();
  }
  
  public final boolean g()
  {
    if (a.size() == 1) {
      return ((i)a.get(0)).g();
    }
    throw new IllegalStateException();
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final Iterator<i> iterator()
  {
    return a.iterator();
  }
}

/* Location:
 * Qualified Name:     com.google.e.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */