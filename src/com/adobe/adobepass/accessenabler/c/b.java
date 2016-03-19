package com.adobe.adobepass.accessenabler.c;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Environment;
import com.adobe.adobepass.accessenabler.a.a.a;
import com.adobe.adobepass.accessenabler.a.g;
import com.adobe.adobepass.accessenabler.a.h;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.a.k;
import com.adobe.adobepass.accessenabler.d.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
{
  private Context a;
  private j b;
  private Map c;
  private String d;
  
  public b(Context paramContext)
  {
    a = paramContext;
    try
    {
      paramContext = Environment.getExternalStorageDirectory();
      d = (paramContext.getPath() + File.separator + ".adobepassdb_3");
      if (!new File(d).exists())
      {
        c = new HashMap();
        k();
        return;
      }
      g();
      return;
    }
    catch (Exception paramContext)
    {
      d = null;
      c.b("StorageManager", "Cannot access external storage: " + paramContext.toString());
    }
  }
  
  private static Map a(Map paramMap, String paramString)
  {
    if ((paramMap == null) || (paramString == null)) {
      return null;
    }
    Object localObject2 = paramMap.get(paramString);
    Object localObject1;
    if (localObject2 != null)
    {
      localObject1 = localObject2;
      if ((localObject2 instanceof Map)) {}
    }
    else
    {
      localObject1 = new HashMap();
      paramMap.put(paramString, localObject1);
    }
    return (Map)localObject1;
  }
  
  private Map d(String paramString)
  {
    paramString = e(paramString);
    Object localObject = (String)paramString.get("currentMvpdId");
    if (localObject == null) {
      paramString = null;
    }
    do
    {
      return paramString;
      localObject = a(paramString, (String)localObject);
      if (!((Map)localObject).containsKey("canAuthenticate")) {
        ((Map)localObject).put("canAuthenticate", Boolean.FALSE);
      }
      paramString = (String)localObject;
    } while (((Map)localObject).containsKey("authzTokens"));
    ((Map)localObject).put("authzTokens", new HashMap());
    return (Map)localObject;
  }
  
  private Map e(String paramString)
  {
    return a(l(), paramString);
  }
  
  private Map l()
  {
    return a(c, "requestorBucket");
  }
  
  private Map m()
  {
    return a(c, "passiveAuthnCookies");
  }
  
  public final com.adobe.adobepass.accessenabler.a.a a(j paramj, String paramString, a.a parama, boolean paramBoolean)
  {
    if (paramj == null) {
      return null;
    }
    Map localMap = l();
    Iterator localIterator = localMap.keySet().iterator();
    for (;;)
    {
      if (localIterator.hasNext())
      {
        Object localObject1 = localIterator.next();
        if (!(localObject1 instanceof String)) {
          continue;
        }
        String str = (String)localObject1;
        if ((localObject1.equals(paramj.b())) && (!paramBoolean)) {
          continue;
        }
        try
        {
          Object localObject2 = (Map)localMap.get(str);
          localObject1 = (String)((Map)localObject2).get("currentMvpdId");
          if ((localObject1 != null) && ((paramString == null) || (((String)localObject1).equals(paramString))))
          {
            localObject2 = new com.adobe.adobepass.accessenabler.a.a((String)((Map)((Map)localObject2).get(localObject1)).get("authnToken"), false);
            g localg = paramj.c((String)localObject1);
            if ((paramj.d((String)localObject1)) && (((com.adobe.adobepass.accessenabler.a.a)localObject2).a()) && (localg != null))
            {
              boolean bool2;
              if (parama != a.a.c)
              {
                bool2 = localg.e();
                localObject1 = a.a.a;
                if (parama != localObject1) {
                  break label223;
                }
              }
              label223:
              for (boolean bool1 = true; bool2 == bool1; bool1 = false) {
                return (com.adobe.adobepass.accessenabler.a.a)localObject2;
              }
            }
          }
        }
        catch (Exception localException)
        {
          c.b("StorageManager", "No valid authn token found for requestor " + str + ": " + localException.toString());
        }
      }
    }
    return null;
  }
  
  public final com.adobe.adobepass.accessenabler.a.a a(boolean paramBoolean)
  {
    Map localMap1 = e(b.b());
    Object localObject = d(b.b());
    if (localObject != null)
    {
      localObject = (String)((Map)localObject).get("authnToken");
      if (localObject == null) {}
    }
    for (localObject = new com.adobe.adobepass.accessenabler.a.a((String)localObject, false);; localObject = null)
    {
      if (!paramBoolean) {}
      while ((localObject != null) && (((com.adobe.adobepass.accessenabler.a.a)localObject).a())) {
        return (com.adobe.adobepass.accessenabler.a.a)localObject;
      }
      localObject = c();
      localObject = a(b, (String)localObject, a.a.b, false);
      if (localObject != null)
      {
        localMap1.put("currentMvpdId", ((com.adobe.adobepass.accessenabler.a.a)localObject).c());
        localMap1 = d(b.b());
        localMap1.put("canAuthenticate", Boolean.TRUE);
        localMap1.put("authnToken", ((com.adobe.adobepass.accessenabler.a.a)localObject).k());
        Map localMap2 = d(((com.adobe.adobepass.accessenabler.a.a)localObject).b());
        localMap1.put("userMeta", (String)localMap2.get("userMeta"));
        localMap1.put("preAuthorizedResources", (String)localMap2.get("preAuthorizedResources"));
        k();
      }
      return (com.adobe.adobepass.accessenabler.a.a)localObject;
    }
  }
  
  public final com.adobe.adobepass.accessenabler.a.b a(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    Map localMap = d(b.b());
    if (localMap == null) {
      return null;
    }
    paramString = (String)((Map)localMap.get("authzTokens")).get(paramString);
    if (paramString == null) {
      return null;
    }
    return new com.adobe.adobepass.accessenabler.a.b(paramString, false);
  }
  
  public final Map<String, ArrayList<String>> a()
  {
    Object localObject1 = m();
    Object localObject2 = c();
    if (localObject2 == null) {
      localObject1 = new HashMap();
    }
    do
    {
      return (Map<String, ArrayList<String>>)localObject1;
      localObject2 = (Map)((Map)localObject1).get(localObject2);
      localObject1 = localObject2;
    } while (localObject2 != null);
    return new HashMap();
  }
  
  public final void a(com.adobe.adobepass.accessenabler.a.a parama)
  {
    a(parama, true);
  }
  
  protected final void a(com.adobe.adobepass.accessenabler.a.a parama, boolean paramBoolean)
  {
    Map localMap = d(b.b());
    if (localMap == null) {}
    do
    {
      return;
      localMap.put("authnToken", parama.k());
    } while (!paramBoolean);
    k();
  }
  
  public final void a(h paramh)
  {
    Map localMap = d(b.b());
    if (localMap != null)
    {
      localMap.put("preAuthorizedResources", paramh.a());
      k();
    }
  }
  
  public final void a(j paramj)
  {
    b = paramj;
  }
  
  public final void a(k paramk)
  {
    a(paramk, true);
  }
  
  protected final void a(k paramk, boolean paramBoolean)
  {
    k localk = d();
    if (localk == null) {}
    for (;;)
    {
      if (paramk != null)
      {
        paramk = paramk.c();
        if (paramk != null) {
          d(b.b()).put("userMeta", paramk);
        }
      }
      if (paramBoolean) {
        k();
      }
      return;
      localk.a(paramk);
      paramk = localk;
    }
  }
  
  public final void a(String paramString, com.adobe.adobepass.accessenabler.a.b paramb)
  {
    if (paramString != null)
    {
      Map localMap = d(b.b());
      if (localMap != null)
      {
        ((Map)localMap.get("authzTokens")).put(paramString, paramb.d());
        k();
      }
    }
  }
  
  public final void a(Map<String, ArrayList<String>> paramMap)
  {
    String str = c();
    if (str == null) {
      return;
    }
    m().put(str, paramMap);
    k();
  }
  
  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    Map localMap = d(b.b());
    if (localMap == null) {}
    do
    {
      return;
      localMap.put("canAuthenticate", Boolean.valueOf(paramBoolean1));
    } while (!paramBoolean2);
    k();
  }
  
  public final void b(String paramString)
  {
    c(paramString);
  }
  
  public final void b(boolean paramBoolean)
  {
    a(paramBoolean, true);
  }
  
  public final boolean b()
  {
    Object localObject = d(b.b());
    if (localObject == null) {
      return false;
    }
    localObject = (Boolean)((Map)localObject).get("canAuthenticate");
    return (((Boolean)localObject).booleanValue()) && (((Boolean)localObject).equals(Boolean.TRUE));
  }
  
  public final String c()
  {
    return (String)e(b.b()).get("currentMvpdId");
  }
  
  protected final void c(String paramString)
  {
    Map localMap = e(b.b());
    if (paramString != null) {
      localMap.put("currentMvpdId", paramString);
    }
    do
    {
      return;
      paramString = (String)localMap.get("currentMvpdId");
    } while (paramString == null);
    localMap.remove("currentMvpdId");
    localMap.remove(paramString);
  }
  
  public final k d()
  {
    Map localMap = d(b.b());
    if (localMap == null) {
      return null;
    }
    return k.c((String)localMap.get("userMeta"));
  }
  
  public final h e()
  {
    Object localObject = d(b.b());
    if (localObject == null) {
      return null;
    }
    localObject = (String)((Map)localObject).get("preAuthorizedResources");
    if (localObject == null) {
      return null;
    }
    return new h((String)localObject);
  }
  
  public final void f()
  {
    int i;
    try
    {
      Object localObject = a.getSharedPreferences("adobePassStorageKey", 0);
      i = ((SharedPreferences)localObject).getInt("previouslyImported", 0);
      if (i < 3)
      {
        localObject = ((SharedPreferences)localObject).edit();
        ((SharedPreferences.Editor)localObject).putInt("previouslyImported", 3);
        ((SharedPreferences.Editor)localObject).commit();
        if (a(b, null, a.a.c, true) == null)
        {
          c.a("StorageManager", "Starting import.");
          new a(this, b).a();
          return;
        }
        c.a("StorageManager", "No need to perform import, a valid token for the current requestor already exists.");
        return;
      }
    }
    catch (Exception localException)
    {
      c.b("StorageManager", "Token import operation failed with exception: " + localException.toString());
      return;
    }
    c.a("StorageManager", "Previous import was performed by v" + i);
  }
  
  public final void g()
  {
    if (c == null) {
      c = new HashMap();
    }
    if (d == null)
    {
      c.b("StorageManager", "External storage unavailable for read operation.");
      return;
    }
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(d);
      ObjectInputStream localObjectInputStream = new ObjectInputStream(localFileInputStream);
      Map localMap = (Map)localObjectInputStream.readObject();
      if (localMap != null) {
        c = localMap;
      }
      localObjectInputStream.close();
      localFileInputStream.close();
      return;
    }
    catch (Exception localException)
    {
      c.b("StorageManager", "Error while reading from storage: " + localException.toString());
    }
  }
  
  public final void h()
  {
    Object localObject = d(b.b());
    if (localObject == null) {}
    do
    {
      return;
      localObject = (String)((Map)localObject).get("authnToken");
    } while (localObject == null);
    for (;;)
    {
      try
      {
        localObject = new com.adobe.adobepass.accessenabler.a.a((String)localObject, false);
        boolean bool = b.c(((com.adobe.adobepass.accessenabler.a.a)localObject).c()).e();
        if ((((com.adobe.adobepass.accessenabler.a.a)localObject).b() == null) || (!((com.adobe.adobepass.accessenabler.a.a)localObject).b().equals(b.b()))) {
          continue;
        }
        i = 1;
        if ((i == 0) && (bool)) {
          l().put(b.b(), new HashMap());
        }
      }
      catch (Exception localException)
      {
        int i;
        c.a("StorageManager", localException.toString());
        l().put(b.b(), new HashMap());
        continue;
      }
      k();
      return;
      i = 0;
    }
  }
  
  public final void i()
  {
    Map localMap = d(b.b());
    if (localMap != null)
    {
      localMap.remove("authnToken");
      localMap.remove("userMeta");
      localMap.remove("preAuthorizedResources");
      localMap.put(new HashMap(), "authzTokens");
      k();
    }
  }
  
  public final void j()
  {
    c = new HashMap();
    k();
  }
  
  protected final void k()
  {
    if (d == null)
    {
      c.a("StorageManager", "External storage unavailable for write operation.");
      return;
    }
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(d);
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localFileOutputStream);
      localObjectOutputStream.writeObject(c);
      localObjectOutputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      c.b("StorageManager", "Error while writing to storage: " + localException.toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */