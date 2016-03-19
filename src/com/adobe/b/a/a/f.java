package com.adobe.b.a.a;

import com.adobe.b.a.b.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class f
{
  private Map<String, c> a;
  private Map<String, List<b>> b;
  private String c;
  private com.adobe.b.a.c d;
  private com.adobe.b.a.b.a e;
  private com.adobe.b.a.b.a f;
  private d g;
  private boolean h;
  private com.adobe.b.c.a i;
  
  public f(com.adobe.b.a.c paramc)
  {
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL");
    }
    c = f.class.getSimpleName();
    d = paramc;
    h = false;
    a = new HashMap();
    b = new HashMap();
    g = new d(d);
    e = g.a("ctrl_channel");
    f = g.a("data_channel");
  }
  
  public final Object a(String paramString, ArrayList<String> paramArrayList)
  {
    if (h) {
      return null;
    }
    paramString = (c)a.get(paramString);
    if ((paramString == null) || (paramArrayList == null) || (paramArrayList.size() == 0)) {
      return null;
    }
    return paramString.a(paramArrayList);
  }
  
  public final void a()
  {
    if (h) {}
    for (;;)
    {
      return;
      Iterator localIterator = a.values().iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).a();
      }
    }
  }
  
  public final void a(c paramc)
  {
    if (h) {
      return;
    }
    String str1 = paramc.b();
    if (a.get(str1) != null)
    {
      com.adobe.b.a.c localc = d;
      String str2 = c;
      new StringBuilder("#addPlugin > Replacing plugin: ").append(paramc.b());
      localc.b(str2);
    }
    a.put(str1, paramc);
    paramc.a(this);
  }
  
  public final void a(c paramc, String paramString, com.adobe.b.a.b paramb)
  {
    f.a(paramc.b() + ":" + paramString, paramb);
  }
  
  public final void a(com.adobe.b.a.a parama)
  {
    Object localObject1 = parama.a();
    Object localObject2 = (ArrayList)b.get(localObject1);
    if (h) {
      return;
    }
    if (localObject2 != null)
    {
      Object localObject3 = new HashMap();
      localObject1 = new HashMap();
      Object localObject4 = ((ArrayList)localObject2).iterator();
      Object localObject5;
      e locale;
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = ((b)((Iterator)localObject4).next()).c().iterator();
        while (((Iterator)localObject5).hasNext())
        {
          locale = (e)((Iterator)localObject5).next();
          if (!((Map)localObject3).containsKey(locale.a())) {
            ((Map)localObject3).put(locale.a(), new ArrayList());
          }
          if (!((List)((Map)localObject3).get(locale.a())).contains(locale.b())) {
            ((List)((Map)localObject3).get(locale.a())).add(locale.b());
          }
        }
      }
      localObject4 = ((Map)localObject3).keySet().iterator();
      while (((Iterator)localObject4).hasNext())
      {
        localObject5 = (String)((Iterator)localObject4).next();
        if (((Map)localObject3).containsKey(localObject5)) {
          ((Map)localObject1).put(localObject5, a((String)localObject5, (ArrayList)((Map)localObject3).get(localObject5)));
        }
      }
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (b)((Iterator)localObject2).next();
        localObject4 = new HashMap();
        ((Map)localObject4).put("_behaviour", localObject3);
        ((Map)localObject4).put("_eventData", parama.b());
        localObject5 = ((b)localObject3).c().iterator();
        while (((Iterator)localObject5).hasNext())
        {
          locale = (e)((Iterator)localObject5).next();
          HashMap localHashMap = (HashMap)((Map)localObject1).get(locale.a());
          ((Map)localObject4).put(locale.d(), localHashMap.get(locale.b()));
        }
        a(((b)localObject3).b().b(), ((b)localObject3).a(), localObject4);
      }
    }
    f.a(parama);
  }
  
  public final void a(com.adobe.b.a.e parame, c paramc, String paramString, ArrayList<e> paramArrayList)
  {
    String str = parame.a();
    parame = new b(parame, paramc, paramString, paramArrayList);
    if (!b.containsKey(str)) {
      b.put(str, new ArrayList());
    }
    ((List)b.get(str)).add(parame);
  }
  
  public final void a(com.adobe.b.c.a parama)
  {
    i = parama;
    parama = new com.adobe.b.a.a("error", parama);
    e.a(parama);
  }
  
  public final void a(String paramString1, String paramString2, com.adobe.b.a.b paramb, Object paramObject)
  {
    if (h) {
      return;
    }
    f.a(paramString1 + ":" + paramString2, paramb, paramObject);
  }
  
  public final void a(String paramString1, String paramString2, Object paramObject)
  {
    f.a(paramString1 + ":" + paramString2, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */