package com.adobe.b.a.b;

import com.adobe.b.a.b;
import com.adobe.b.a.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
{
  private String a;
  private c b;
  private String c;
  private Map<String, List<a>> d;
  private Map<String, b> e;
  private Map<String, b> f;
  private boolean g;
  
  public a(String paramString, c paramc)
  {
    c = paramString;
    d = new HashMap();
    e = new HashMap();
    f = new HashMap();
    g = false;
    if (paramc == null) {
      throw new Error("Reference to the logger object cannot be NULL");
    }
    a = a.class.getSimpleName();
    b = paramc;
  }
  
  public final Object a(String paramString)
  {
    try
    {
      if (g) {
        return null;
      }
      Object localObject = (b)e.get(paramString);
      if (localObject == null)
      {
        localObject = b;
        String str = a;
        new StringBuilder("#request > No request handler for: ").append(paramString);
        ((c)localObject).c(str);
        return null;
      }
      paramString = ((b)localObject).call(null);
      return paramString;
    }
    finally {}
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	com/adobe/b/a/b/a:g	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: getfield 54	com/adobe/b/a/b/a:b	Lcom/adobe/b/a/c;
    //   16: aload_0
    //   17: getfield 52	com/adobe/b/a/b/a:a	Ljava/lang/String;
    //   20: invokeinterface 82 2 0
    //   25: aload_0
    //   26: monitorenter
    //   27: aload_0
    //   28: getfield 37	com/adobe/b/a/b/a:g	Z
    //   31: ifeq +36 -> 67
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_0
    //   37: getfield 33	com/adobe/b/a/b/a:e	Ljava/util/Map;
    //   40: invokeinterface 85 1 0
    //   45: aload_0
    //   46: getfield 35	com/adobe/b/a/b/a:f	Ljava/util/Map;
    //   49: invokeinterface 85 1 0
    //   54: aload_0
    //   55: iconst_1
    //   56: putfield 37	com/adobe/b/a/b/a:g	Z
    //   59: aload_0
    //   60: monitorexit
    //   61: return
    //   62: astore_1
    //   63: aload_0
    //   64: monitorexit
    //   65: aload_1
    //   66: athrow
    //   67: aload_0
    //   68: getfield 31	com/adobe/b/a/b/a:d	Ljava/util/Map;
    //   71: invokeinterface 85 1 0
    //   76: aload_0
    //   77: monitorexit
    //   78: goto -42 -> 36
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	a
    //   62	4	1	localObject1	Object
    //   81	4	1	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   2	11	62	finally
    //   12	27	62	finally
    //   36	61	62	finally
    //   63	65	62	finally
    //   84	86	62	finally
    //   27	36	81	finally
    //   67	78	81	finally
    //   82	84	81	finally
  }
  
  public final void a(com.adobe.b.a.a parama)
  {
    Iterator localIterator;
    Object localObject2;
    Object localObject1;
    label92:
    int j;
    for (;;)
    {
      List localList;
      try
      {
        if (g) {
          return;
        }
        localIterator = d.entrySet().iterator();
        if (!localIterator.hasNext()) {
          break label239;
        }
        localObject2 = (Map.Entry)localIterator.next();
        localObject1 = (String)((Map.Entry)localObject2).getKey();
        localList = (List)((Map.Entry)localObject2).getValue();
        localObject2 = parama.a();
        if (localObject1 != null) {
          break label155;
        }
        localObject1 = "";
      }
      finally {}
      if (((String)localObject1).equals(localObject2))
      {
        j = 1;
        label155:
        label158:
        if (j != 0)
        {
          localObject1 = localList.iterator();
          if (((Iterator)localObject1).hasNext())
          {
            ((a)((Iterator)localObject1).next()).a().call(parama);
          }
          else
          {
            continue;
            break label242;
          }
        }
      }
      else
      {
        localObject1 = ((String)localObject1).split(":");
        localObject2 = ((String)localObject2).split(":");
        if (localObject1.length == localObject2.length) {
          break label254;
        }
        j = 0;
      }
    }
    int k;
    for (;;)
    {
      j = i;
      if (k >= localObject1.length) {
        break;
      }
      if (i == 0) {
        break label273;
      }
      if (localObject1[k].equals("*")) {
        break label262;
      }
      if (!localObject1[k].equals(localObject2[k])) {
        break label273;
      }
      break label262;
      label239:
      return;
      label242:
      if (localObject2 != null) {
        break label158;
      }
      localObject2 = "";
      break label92;
      label254:
      k = 0;
      i = 1;
    }
    label262:
    label273:
    for (int i = 1;; i = 0)
    {
      k += 1;
      break;
    }
  }
  
  public final void a(String paramString, b paramb)
  {
    try
    {
      if (g) {
        return;
      }
      f.put(paramString, paramb);
      return;
    }
    finally {}
  }
  
  public final void a(String paramString, b paramb, Object paramObject)
  {
    try
    {
      if (g) {
        return;
      }
      if (!d.containsKey(paramString)) {
        d.put(paramString, new ArrayList());
      }
      ((List)d.get(paramString)).add(new a(paramb, paramObject));
      return;
    }
    finally {}
  }
  
  public final void a(String paramString, Object paramObject)
  {
    if (g) {
      return;
    }
    Object localObject = (b)f.get(paramString);
    if (localObject == null)
    {
      paramObject = b;
      localObject = a;
      new StringBuilder("#command > No command handler for: ").append(paramString);
      ((c)paramObject).c((String)localObject);
      return;
    }
    ((b)localObject).call(paramObject);
  }
  
  public final void b(String paramString, b paramb)
  {
    try
    {
      if (g) {
        return;
      }
      e.put(paramString, paramb);
      return;
    }
    finally {}
  }
  
  public String toString()
  {
    return "<channel: " + c + ">";
  }
  
  private static final class a
  {
    private final b a;
    private final Object b;
    
    a(b paramb, Object paramObject)
    {
      if (paramb == null) {
        throw new Error("Event handler callback cannot be null");
      }
      a = paramb;
      if (paramObject == null) {
        throw new Error("Event handler context cannot be null");
      }
      b = paramObject;
    }
    
    public final b a()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */