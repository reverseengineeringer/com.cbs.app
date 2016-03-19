package com.adobe.mobile;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;

final class ae
{
  protected static final Integer a = Integer.valueOf(750183);
  private static o b = null;
  private static final Object c = new Object();
  private static int d = -1;
  private static int e = -1;
  private static m f = null;
  private static final Object g = new Object();
  
  protected static o a()
  {
    synchronized (c)
    {
      o localo = b;
      return localo;
    }
  }
  
  protected static void a(m paramm)
  {
    synchronized (g)
    {
      f = paramm;
      return;
    }
  }
  
  protected static void a(o paramo)
  {
    synchronized (c)
    {
      b = paramo;
      return;
    }
  }
  
  protected static void a(Map<String, Object> paramMap1, final Map<String, Object> paramMap2, final Map<String, Object> paramMap3)
  {
    if (am.o()) {
      return;
    }
    am.k().execute(new Runnable()
    {
      public final void run()
      {
        Object localObject3 = null;
        Object localObject4 = af.a().q();
        if ((localObject4 == null) || (((ArrayList)localObject4).size() <= 0)) {}
        Object localObject2;
        Object localObject1;
        do
        {
          do
          {
            return;
            while ((a != null) && (a.containsKey("pev2")) && (a.get("pev2").toString().equals("ADBINTERNAL:In-App Message"))) {}
            Iterator localIterator;
            if ((paramMap2 != null) && (paramMap2.size() > 0))
            {
              localObject2 = new HashMap(paramMap2.size());
              localIterator = paramMap2.entrySet().iterator();
              for (;;)
              {
                localObject1 = localObject2;
                if (!localIterator.hasNext()) {
                  break;
                }
                localObject1 = (Map.Entry)localIterator.next();
                ((HashMap)localObject2).put(((String)((Map.Entry)localObject1).getKey()).toLowerCase(), ((Map.Entry)localObject1).getValue());
              }
            }
            localObject1 = null;
            localObject2 = localObject3;
            if (a != null)
            {
              localObject2 = localObject3;
              if (a.size() > 0)
              {
                localObject3 = new HashMap(a.size());
                localIterator = a.entrySet().iterator();
                for (;;)
                {
                  localObject2 = localObject3;
                  if (!localIterator.hasNext()) {
                    break;
                  }
                  localObject2 = (Map.Entry)localIterator.next();
                  ((HashMap)localObject3).put(((String)((Map.Entry)localObject2).getKey()).toLowerCase(), ((Map.Entry)localObject2).getValue());
                }
              }
            }
            localObject3 = ((ArrayList)localObject4).iterator();
          } while (!((Iterator)localObject3).hasNext());
          localObject4 = (m)((Iterator)localObject3).next();
        } while (!((m)localObject4).a((Map)localObject2, (Map)localObject1, paramMap3));
        ((m)localObject4).d();
      }
    });
  }
  
  protected static void b()
  {
    am.k().execute(new Runnable()
    {
      public final void run()
      {
        Object localObject = af.a().q();
        if ((localObject == null) || (((ArrayList)localObject).size() <= 0)) {}
        for (;;)
        {
          return;
          localObject = ((ArrayList)localObject).iterator();
          while (((Iterator)localObject).hasNext()) {
            nextf = false;
          }
        }
      }
    });
  }
  
  protected static int c()
  {
    return d;
  }
  
  protected static int d()
  {
    return e;
  }
  
  protected static m e()
  {
    synchronized (g)
    {
      m localm = f;
      return localm;
    }
  }
  
  protected static enum a
  {
    private final int e;
    
    private a(int paramInt)
    {
      e = paramInt;
    }
    
    protected final int a()
    {
      return e;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */