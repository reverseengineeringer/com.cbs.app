package com.adobe.b.c.b.a;

import com.adobe.b.a.a.f;
import com.adobe.b.a.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class a
  extends com.adobe.b.a.a.a
{
  private c i;
  private b j = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      if (((HashMap)paramAnonymousObject).containsKey("repeat_count")) {}
      for (int i = ((Integer)((HashMap)paramAnonymousObject).get("repeat_count")).intValue();; i = -1)
      {
        a.a(a.this).a((String)((HashMap)paramAnonymousObject).get("name"), ((Double)((HashMap)paramAnonymousObject).get("interval")).doubleValue(), i);
        return null;
      }
    }
  };
  private b k = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      c localc = a.a(a.this);
      String str = (String)((HashMap)paramAnonymousObject).get("name");
      if (((HashMap)paramAnonymousObject).get("reset") != null) {}
      for (boolean bool = true;; bool = false)
      {
        localc.b(str, bool);
        return null;
      }
    }
  };
  private b l = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      c localc = a.a(a.this);
      String str = (String)((HashMap)paramAnonymousObject).get("name");
      if (((HashMap)paramAnonymousObject).get("reset") != null) {}
      for (boolean bool = true;; bool = false)
      {
        localc.a(str, bool);
        return null;
      }
    }
  };
  private b m = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      a.a(a.this).a((String)((HashMap)paramAnonymousObject).get("name"));
      return null;
    }
  };
  
  public a(final com.adobe.b.a.c paramc)
  {
    super("service.clock");
    if (paramc == null) {
      throw new Error("Reference to the logger cannot be NULL.");
    }
    b = paramc;
    i = new c(this, b);
    paramc = new HashMap();
    paramc.put("is_paused", new b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        return Boolean.valueOf(a.a(a.this).b((String)paramAnonymousObject));
      }
    });
    d = new b()
    {
      public final Object call(Object paramAnonymousObject)
      {
        String str = null;
        Iterator localIterator = null;
        paramAnonymousObject = (ArrayList)paramAnonymousObject;
        Object localObject = localIterator;
        if (paramAnonymousObject != null)
        {
          if (((ArrayList)paramAnonymousObject).size() <= 0) {
            localObject = localIterator;
          }
        }
        else {
          return localObject;
        }
        localIterator = ((ArrayList)paramAnonymousObject).iterator();
        paramAnonymousObject = str;
        for (;;)
        {
          localObject = paramAnonymousObject;
          if (!localIterator.hasNext()) {
            break;
          }
          str = (String)localIterator.next();
          localObject = paramAnonymousObject;
          if (paramAnonymousObject == null) {
            localObject = new HashMap();
          }
          paramAnonymousObject = localObject;
          if (str.startsWith("is_paused"))
          {
            String[] arrayOfString = str.split("is_paused.");
            paramAnonymousObject = localObject;
            if (arrayOfString.length > 0)
            {
              ((Map)localObject).put(str, ((b)paramc.get("is_paused")).call(arrayOfString[1]));
              paramAnonymousObject = localObject;
            }
          }
        }
      }
    };
  }
  
  public final void a(f paramf)
  {
    super.a(paramf);
    e.a(this, "create", j);
    e.a(this, "resume", l);
    e.a(this, "pause", k);
    e.a(this, "destroy", m);
  }
  
  final void a(String paramString, double paramDouble, int paramInt)
  {
    paramString = paramString + ".tick";
    HashMap localHashMap = new HashMap();
    localHashMap.put("name", paramString);
    localHashMap.put("interval", Double.valueOf(paramDouble));
    localHashMap.put("tick", Integer.valueOf(paramInt));
    a(paramString, localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */