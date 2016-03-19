package com.adobe.b.c.a.b.a.a;

import com.adobe.b.a.a.f;
import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.ArrayList;
import java.util.HashMap;

class e
{
  protected String a;
  protected c b;
  protected Double c;
  protected com.adobe.b.a.b.a d;
  protected f e;
  protected String f;
  private boolean g;
  private b h = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      HashMap localHashMap = (HashMap)paramAnonymousObject;
      Boolean localBoolean = Boolean.valueOf(false);
      paramAnonymousObject = localBoolean;
      if (localHashMap != null)
      {
        paramAnonymousObject = localBoolean;
        if (localHashMap.containsKey("reset")) {
          paramAnonymousObject = (Boolean)localHashMap.get("reset");
        }
      }
      b((Boolean)paramAnonymousObject);
      return null;
    }
  };
  private b i = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (HashMap)paramAnonymousObject;
      if ((paramAnonymousObject != null) && (((Boolean)((HashMap)paramAnonymousObject).get("reset")).booleanValue())) {}
      for (paramAnonymousObject = (Boolean)((HashMap)paramAnonymousObject).get("reset");; paramAnonymousObject = Boolean.valueOf(false))
      {
        a((Boolean)paramAnonymousObject);
        return null;
      }
    }
  };
  private b j = new b()
  {
    public final Object call(Object paramAnonymousObject)
    {
      paramAnonymousObject = (com.adobe.b.a.a)paramAnonymousObject;
      d.a(new com.adobe.b.a.a("clock:" + f + ".tick", ((com.adobe.b.a.a)paramAnonymousObject).b()));
      return null;
    }
  };
  
  e(f paramf, com.adobe.b.a.b.a parama, String paramString, double paramDouble, c paramc)
  {
    if (parama == null) {
      throw new Error("Reference to the channel object cannot be NULL.");
    }
    d = parama;
    if (paramf == null) {
      throw new Error("Reference to the pluginManager object cannot be NULL.");
    }
    e = paramf;
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL.");
    }
    b = paramc;
    a = getClass().getSimpleName();
    g = false;
    a(paramString, paramDouble);
    d.a("clock:" + f + ".resume", h);
    d.a("clock:" + f + ".pause", i);
    e.a("service.clock", "heartbeat." + f + ".tick", j, this);
  }
  
  private void a(String paramString, double paramDouble)
  {
    f = paramString;
    c = Double.valueOf(paramDouble);
    paramString = new HashMap();
    paramString.put("name", "heartbeat." + f);
    paramString.put("interval", c);
    e.a("service.clock", "create", paramString);
  }
  
  final void a(double paramDouble)
  {
    Object localObject = "is_paused.heartbeat." + f;
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localObject);
    localObject = (Boolean)((HashMap)e.a("service.clock", localArrayList)).get(localObject);
    a(Boolean.valueOf(true));
    a(f, paramDouble);
    if (!((Boolean)localObject).booleanValue()) {
      b(Boolean.valueOf(true));
    }
  }
  
  public void a(Boolean paramBoolean)
  {
    Object localObject = b;
    String str = a;
    new StringBuilder("Stopping timer: ").append(f);
    ((c)localObject).a(str);
    localObject = new HashMap();
    ((HashMap)localObject).put("name", "heartbeat." + f);
    ((HashMap)localObject).put("reset", paramBoolean);
    e.a("service.clock", "pause", localObject);
  }
  
  public void b(Boolean paramBoolean)
  {
    Object localObject = b;
    String str = a;
    new StringBuilder("Starting timer: ").append(f);
    ((c)localObject).a(str);
    localObject = new HashMap();
    ((HashMap)localObject).put("name", "heartbeat." + f);
    ((HashMap)localObject).put("reset", paramBoolean);
    e.a("service.clock", "resume", localObject);
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.c.a.b.a.a.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */