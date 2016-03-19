package com.adobe.b.c.a.b.a.c;

import com.adobe.b.c.a.b.a.d.a.f;
import com.adobe.b.c.a.b.a.d.a.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
{
  private String a;
  private com.adobe.b.a.c b;
  private com.adobe.b.a.b.a c;
  private boolean d;
  private boolean e;
  private com.adobe.b.a.b.c f;
  private Map<String, ArrayList<com.adobe.b.c.a.b.a.d.b.a>> g;
  private Map<String, HashMap<String, Long>> h;
  private com.adobe.b.a.b i = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (HashMap)paramAnonymousObject;
      if (a.a(a.this)) {}
      do
      {
        return null;
        paramAnonymousObject = (com.adobe.b.c.a.b.a.d.b.a)((HashMap)paramAnonymousObject).get("report");
        if (paramAnonymousObject != null)
        {
          String str = ((com.adobe.b.c.a.b.a.d.b.a)paramAnonymousObject).d().a();
          if (!a.b(a.this).containsKey(str)) {
            a.b(a.this).put(str, new ArrayList());
          }
          ((ArrayList)a.b(a.this).get(str)).add(paramAnonymousObject);
        }
      } while (a.c(a.this));
      a.a(a.this, true);
      paramAnonymousObject = new HashMap();
      ((HashMap)paramAnonymousObject).put("reset", Boolean.valueOf(true));
      ((HashMap)paramAnonymousObject).put("repeat_count", Integer.valueOf(1));
      a.d(a.this).a("clock:flush_filter.resume", paramAnonymousObject);
      return null;
    }
  };
  private com.adobe.b.a.b j = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (a.a(a.this)) {
        return null;
      }
      paramAnonymousObject = a.b(a.this).keySet().iterator();
      while (((Iterator)paramAnonymousObject).hasNext())
      {
        localObject = (String)((Iterator)paramAnonymousObject).next();
        localObject = a.c(a.b(a.a((ArrayList)a.b(a.this).get(localObject))));
        a.a(a.this, (ArrayList)localObject);
        localObject = ((ArrayList)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          com.adobe.b.c.a.b.a.d.b.a locala = (com.adobe.b.c.a.b.a.d.b.a)((Iterator)localObject).next();
          HashMap localHashMap = new HashMap();
          localHashMap.put("report", locala);
          a.d(a.this).a(new com.adobe.b.a.a("filter:data_available", localHashMap));
        }
      }
      a.b(a.this).clear();
      Object localObject = (String)a.d(a.this).a("session_id");
      if (a.e(a.this).containsKey(localObject)) {}
      for (paramAnonymousObject = (HashMap)a.e(a.this).get(localObject);; paramAnonymousObject = new HashMap())
      {
        a.e(a.this).clear();
        a.e(a.this).put(localObject, paramAnonymousObject);
        a.a(a.this, false);
        return null;
      }
    }
  };
  private com.adobe.b.a.b k = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = ((com.adobe.b.a.a)paramAnonymousObject).b();
      a.g(a.this).a(new com.adobe.b.a.b.b(a.f(a.this), paramAnonymousObject));
      return null;
    }
  };
  private com.adobe.b.a.b l = new com.adobe.b.a.b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.g(a.this).a(new com.adobe.b.a.b.b(a.h(a.this), this));
      return null;
    }
  };
  
  public a(com.adobe.b.a.b.a parama, com.adobe.b.a.c paramc)
  {
    if (parama == null) {
      throw new Error("Reference to the channel object cannot be NULL.");
    }
    c = parama;
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL.");
    }
    a = a.class.getSimpleName();
    b = paramc;
    d = false;
    e = false;
    g = new HashMap();
    h = new HashMap();
    f = new com.adobe.b.a.b.c();
    c.a("context:report_available", k, this);
    c.a("clock:flush_filter.tick", l, this);
  }
  
  private static ArrayList<com.adobe.b.c.a.b.a.d.b.a> d(ArrayList<com.adobe.b.c.a.b.a.d.b.a> paramArrayList)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      com.adobe.b.c.a.b.a.d.b.a locala = (com.adobe.b.c.a.b.a.d.b.a)paramArrayList.next();
      if ((locala.e().a() == "play") || (locala.e().a() == "buffer") || (locala.e().a() == "start")) {
        localArrayList.add(locala);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */