package com.adobe.b.a.a;

import com.adobe.b.a.b;
import com.adobe.b.a.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class a
  implements c
{
  protected String a;
  protected com.adobe.b.a.c b;
  protected String c;
  protected Object d;
  protected f e;
  protected boolean f;
  protected boolean g;
  protected boolean h;
  
  public a(String paramString)
  {
    c = paramString;
    h = false;
    f = false;
    g = true;
    d = new HashMap();
    a = getClass().getSimpleName();
    b = new com.adobe.b.a.d();
  }
  
  public final Object a(ArrayList<String> paramArrayList)
  {
    if ((!g) || (!h))
    {
      paramArrayList = b;
      localObject = a;
      new StringBuilder("Unable to retrieve plugin data.. Plugin: ").append(c).append(". Enabled: ").append(g).append(". Initialized: ").append(h).append(".");
      paramArrayList.c((String)localObject);
    }
    do
    {
      do
      {
        do
        {
          return null;
        } while (d == null);
        if ((d instanceof b)) {
          return ((b)d).call(paramArrayList);
        }
      } while (!(d instanceof HashMap));
      paramArrayList = paramArrayList.iterator();
    } while (!paramArrayList.hasNext());
    paramArrayList = (String)paramArrayList.next();
    Object localObject = ((HashMap)d).get(paramArrayList);
    HashMap localHashMap = new HashMap();
    if ((localObject instanceof b)) {
      return localHashMap.put(paramArrayList, ((b)localObject).call(paramArrayList));
    }
    return localHashMap.put(paramArrayList, ((HashMap)d).get(paramArrayList));
  }
  
  public void a()
  {
    h = true;
    a("initialized", null);
  }
  
  public void a(d paramd) {}
  
  public void a(f paramf)
  {
    e = paramf;
    if (f) {
      e.a(new com.adobe.b.c.a("Invalid State.", "Plugin already destroyed."));
    }
  }
  
  protected final void a(String paramString, Object paramObject)
  {
    paramString = new com.adobe.b.a.a(new e(c, paramString).a(), null);
    paramString.a(paramObject);
    e.a(paramString);
  }
  
  public final String b()
  {
    return c;
  }
  
  protected boolean c()
  {
    if (!g)
    {
      b.a(a, "#_canProcess() > Plugin disabled.");
      return false;
    }
    if (f)
    {
      b.a(a, "#_canProcess() > Plugin destroyed.");
      return false;
    }
    return true;
  }
  
  public String toString()
  {
    return "<plugin: " + c + ">";
  }
}

/* Location:
 * Qualified Name:     com.adobe.b.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */