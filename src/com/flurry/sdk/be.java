package com.flurry.sdk;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class be
{
  private static final List<Class<? extends bi>> b = new ArrayList();
  private final String a = be.class.getSimpleName();
  private final Map<Class<? extends bi>, bi> c = new LinkedHashMap();
  
  public be()
  {
    synchronized (b)
    {
      Object localObject2 = new ArrayList(b);
      ??? = ((List)localObject2).iterator();
      for (;;)
      {
        if (((Iterator)???).hasNext())
        {
          localObject2 = (Class)((Iterator)???).next();
          try
          {
            bi localbi = (bi)((Class)localObject2).newInstance();
            synchronized (c)
            {
              c.put(localObject2, localbi);
            }
          }
          catch (Exception localException)
          {
            am.a(5, a, "Module session " + localObject2 + " is not available:", localException);
          }
        }
      }
    }
  }
  
  public static void a(Class<? extends bi> paramClass)
  {
    synchronized (b)
    {
      b.add(paramClass);
      return;
    }
  }
  
  private List<bi> d()
  {
    ArrayList localArrayList = new ArrayList();
    synchronized (c)
    {
      localArrayList.addAll(c.values());
      return localArrayList;
    }
  }
  
  public final void a()
  {
    try
    {
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).a();
      }
    }
    finally {}
  }
  
  public final void a(Context paramContext)
  {
    try
    {
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).a(paramContext);
      }
    }
    finally {}
  }
  
  public final bi b(Class<? extends bi> paramClass)
  {
    synchronized (c)
    {
      paramClass = (bi)c.get(paramClass);
      return paramClass;
    }
  }
  
  public final void b()
  {
    try
    {
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).b();
      }
    }
    finally {}
  }
  
  public final void c()
  {
    try
    {
      Iterator localIterator = d().iterator();
      while (localIterator.hasNext()) {
        ((bi)localIterator.next()).c();
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */