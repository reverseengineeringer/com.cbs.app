package com.google.e;

import java.util.Map.Entry;
import java.util.Set;

public final class l
  extends i
{
  private final com.google.e.b.g<String, i> a = new com.google.e.b.g();
  
  public final g a(String paramString)
  {
    return (g)a.get(paramString);
  }
  
  public final Set<Map.Entry<String, i>> a()
  {
    return a.entrySet();
  }
  
  public final void a(String paramString, i parami)
  {
    Object localObject = parami;
    if (parami == null) {
      localObject = k.a;
    }
    a.put(paramString, localObject);
  }
  
  public final boolean equals(Object paramObject)
  {
    return (paramObject == this) || (((paramObject instanceof l)) && (a.equals(a)));
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.google.e.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */