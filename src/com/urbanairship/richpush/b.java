package com.urbanairship.richpush;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public final class b
{
  private static final b.a a = new b.a();
  private static final Object b = new Object();
  private final List<Object> c = new ArrayList();
  private final Set<String> d = new HashSet();
  private final Map<String, c> e = new HashMap();
  private final Map<String, c> f = new HashMap();
  private final d g;
  private final Executor h;
  
  b(Context paramContext)
  {
    this(new d(paramContext), Executors.newSingleThreadExecutor());
  }
  
  private b(d paramd, Executor paramExecutor)
  {
    g = paramd;
    h = paramExecutor;
  }
  
  private void b()
  {
    new Handler(Looper.getMainLooper()).post(new b.2(this));
  }
  
  public final c a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    synchronized (b)
    {
      if (e.containsKey(paramString))
      {
        paramString = (c)e.get(paramString);
        return paramString;
      }
    }
    paramString = (c)f.get(paramString);
    return paramString;
  }
  
  final void a()
  {
    Object localObject3 = g.a();
    for (;;)
    {
      HashSet localHashSet2;
      c localc;
      synchronized (b)
      {
        HashSet localHashSet1 = new HashSet(e.keySet());
        localHashSet2 = new HashSet(f.keySet());
        HashSet localHashSet3 = new HashSet(d);
        e.clear();
        f.clear();
        localObject3 = ((List)localObject3).iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localc = (c)((Iterator)localObject3).next();
        if ((a) || (localHashSet3.contains(localc.a()))) {
          d.add(localc.a());
        }
      }
      if (((Set)localObject2).contains(localc.a()))
      {
        b = true;
        e.put(localc.a(), localc);
      }
      else if (localHashSet2.contains(localc.a()))
      {
        b = false;
        f.put(localc.a(), localc);
      }
      else if (b)
      {
        e.put(localc.a(), localc);
      }
      else
      {
        f.put(localc.a(), localc);
      }
    }
    b();
  }
  
  public final void a(Set<String> paramSet)
  {
    h.execute(new b.1(this, paramSet));
    synchronized (b)
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        c localc = (c)e.get(str);
        if (localc != null)
        {
          b = false;
          e.remove(str);
          f.put(str, localc);
        }
      }
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */