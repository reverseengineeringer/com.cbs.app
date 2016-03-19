package com.flurry.sdk;

import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ad<K, V>
{
  private final Map<K, List<V>> a = new HashMap();
  private int b;
  
  private List<V> a(K paramK, boolean paramBoolean)
  {
    List localList = (List)a.get(paramK);
    Object localObject = localList;
    if (paramBoolean)
    {
      localObject = localList;
      if (localList == null) {
        if (b <= 0) {
          break label63;
        }
      }
    }
    label63:
    for (localObject = new ArrayList(b);; localObject = new ArrayList())
    {
      a.put(paramK, localObject);
      return (List<V>)localObject;
    }
  }
  
  public final Collection<Map.Entry<K, V>> a()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = a.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      Iterator localIterator2 = ((List)localEntry.getValue()).iterator();
      while (localIterator2.hasNext())
      {
        Object localObject = localIterator2.next();
        localArrayList.add(new AbstractMap.SimpleImmutableEntry(localEntry.getKey(), localObject));
      }
    }
    return localArrayList;
  }
  
  public final List<V> a(K paramK)
  {
    if (paramK == null) {
      paramK = Collections.emptyList();
    }
    List localList;
    do
    {
      return paramK;
      localList = a(paramK, false);
      paramK = localList;
    } while (localList != null);
    return Collections.emptyList();
  }
  
  public final void a(K paramK, V paramV)
  {
    if (paramK == null) {
      return;
    }
    a(paramK, true).add(paramV);
  }
  
  public final boolean b(K paramK)
  {
    return (List)a.remove(paramK) != null;
  }
  
  public final boolean b(K paramK, V paramV)
  {
    boolean bool1 = false;
    if (paramK == null) {}
    List localList;
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        localList = a(paramK, false);
      } while (localList == null);
      bool2 = localList.remove(paramV);
      bool1 = bool2;
    } while (localList.size() != 0);
    a.remove(paramK);
    return bool2;
  }
  
  public final boolean c(K paramK, V paramV)
  {
    if (paramK == null) {}
    do
    {
      return false;
      paramK = a(paramK, false);
    } while (paramK == null);
    return paramK.contains(paramV);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */