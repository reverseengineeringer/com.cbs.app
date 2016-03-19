package com.adobe.adobepass.accessenabler.c;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.util.Pair;
import com.adobe.adobepass.accessenabler.a.j;
import com.adobe.adobepass.accessenabler.a.k;
import com.adobe.adobepass.accessenabler.d.c;
import com.adobe.adobepass.accessenabler.d.f;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class a
{
  private static final int[] b = { 2, 1 };
  private SQLiteDatabase a = null;
  private boolean c;
  private String d;
  private Map<String, com.adobe.adobepass.accessenabler.a.a> e;
  private Map<String, k> f;
  private b g;
  private j h;
  
  public a(b paramb, j paramj)
  {
    g = paramb;
    h = paramj;
  }
  
  private boolean a(int paramInt)
  {
    if (!h.d(d))
    {
      c.a("StorageImporter", "MVPD is not valid in storage v" + paramInt);
      return false;
    }
    Object localObject3 = (com.adobe.adobepass.accessenabler.a.a)e.get("GenericRequestor");
    Object localObject2 = (k)f.get("GenericRequestor");
    Object localObject1 = localObject3;
    Iterator localIterator;
    if (!a((com.adobe.adobepass.accessenabler.a.a)localObject3, d))
    {
      localObject3 = (com.adobe.adobepass.accessenabler.a.a)e.get(h.b());
      k localk = (k)f.get(h.b());
      localObject1 = localObject3;
      localObject2 = localk;
      if (!a((com.adobe.adobepass.accessenabler.a.a)localObject3, d))
      {
        localIterator = e.keySet().iterator();
        localObject2 = localk;
        localObject1 = localObject3;
      }
    }
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject1 = (String)localIterator.next();
        localObject2 = (com.adobe.adobepass.accessenabler.a.a)e.get(localObject1);
        localObject1 = (k)f.get(localObject1);
        if (a((com.adobe.adobepass.accessenabler.a.a)localObject2, d))
        {
          localObject3 = localObject2;
          localObject2 = localObject1;
          localObject1 = localObject3;
        }
      }
      else
      {
        if (a((com.adobe.adobepass.accessenabler.a.a)localObject1, d))
        {
          if (!((com.adobe.adobepass.accessenabler.a.a)localObject1).b().equals(h.b()))
          {
            localObject3 = new j(null);
            ((j)localObject3).a(((com.adobe.adobepass.accessenabler.a.a)localObject1).b());
            g.a((j)localObject3);
          }
          g.c(d);
          g.a(c, false);
          g.a((com.adobe.adobepass.accessenabler.a.a)localObject1, false);
          g.a((k)localObject2, false);
          g.k();
          if (!((com.adobe.adobepass.accessenabler.a.a)localObject1).b().equals(h.b())) {
            g.a(h);
          }
          return true;
        }
        return false;
      }
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  private static boolean a(com.adobe.adobepass.accessenabler.a.a parama, String paramString)
  {
    return (parama != null) && (parama.a()) && (parama.c() != null) && (parama.c().equals(paramString));
  }
  
  private boolean b(int paramInt)
  {
    Object localObject1;
    try
    {
      Cursor localCursor = a.query(true, "storage", new String[] { "_id", "key", "value" }, null, null, null, null, null, null);
      localObject1 = new ArrayList();
      if (localCursor == null) {
        break label586;
      }
      localCursor.moveToFirst();
      while (!localCursor.isAfterLast())
      {
        ((List)localObject1).add(new Pair(localCursor.getString(1), localCursor.getString(2)));
        localCursor.moveToNext();
      }
      localException1.close();
    }
    catch (Exception localException1)
    {
      c.a("StorageImporter", "Failed to extract data from storage v" + paramInt + ": " + localException1.toString());
      return false;
    }
    break label586;
    Iterator localIterator = ((List)localObject1).iterator();
    label158:
    Object localObject2;
    if (localIterator.hasNext())
    {
      localObject2 = (Pair)localIterator.next();
      if (((String)first).equals("canAuthenticate")) {
        if ((second == null) || (!((String)second).equalsIgnoreCase("true"))) {
          break label605;
        }
      }
    }
    label586:
    label605:
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      break label158;
      if (((String)first).equals("currentMvpdId"))
      {
        d = ((String)second);
        break label158;
      }
      bool = ((String)first).contains(localException1);
      if (bool) {
        for (;;)
        {
          try
          {
            if (((String)first).equals(localException1))
            {
              localObject1 = "GenericRequestor";
              localObject2 = new com.adobe.adobepass.accessenabler.a.a(new String(f.a((String)second)), false);
              if (!((com.adobe.adobepass.accessenabler.a.a)localObject2).a()) {
                break;
              }
              e.put(localObject1, localObject2);
            }
          }
          catch (Exception localException2)
          {
            c.a("StorageImporter", "Failed to import authentication token. " + localException2.toString());
            return false;
          }
          localObject1 = ((String)first).substring(0, ((String)first).indexOf("_" + localException2));
        }
      }
      bool = ((String)first).contains("metadataToken");
      if (!bool) {
        break label158;
      }
      for (;;)
      {
        try
        {
          if (((String)first).equals("metadataToken"))
          {
            localObject1 = "GenericRequestor";
            localObject2 = k.c(new String(f.a((String)second)));
            if (localObject2 == null) {
              break;
            }
            f.put(localObject1, localObject2);
          }
        }
        catch (Exception localException3)
        {
          c.a("StorageImporter", "Failed to import metadata token. " + localException3.toString());
          return false;
        }
        localObject1 = ((String)first).substring(0, ((String)first).indexOf("_metadataToken"));
      }
      c.a("StorageImporter", "Extracted data from storage v" + paramInt);
      return true;
      if (paramInt == 1)
      {
        str = "authenticationToken";
        break;
      }
      String str = "authnToken";
      break;
    }
  }
  
  private boolean c(int paramInt)
  {
    Object localObject1 = Environment.getExternalStorageDirectory();
    StringBuilder localStringBuilder = new StringBuilder().append(((File)localObject1).getPath()).append(File.separator).append(".adobepassdb");
    if (paramInt == 0) {}
    for (localObject1 = "";; localObject1 = "_" + paramInt)
    {
      localObject1 = (String)localObject1;
      Object localObject2;
      try
      {
        a = SQLiteDatabase.openDatabase((String)localObject1, null, 268435472);
        localObject1 = a.query("storage", new String[] { "_id", "key", "value" }, null, null, null, null, null, null);
      }
      catch (Exception localException1)
      {
        localObject2 = null;
      }
      try
      {
        ((Cursor)localObject1).close();
        return true;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
    }
    c.a("StorageImporter", "Unable to initialize database for token import.");
    if (localObject2 != null) {
      ((Cursor)localObject2).close();
    }
    if (a != null) {
      a.close();
    }
    return false;
  }
  
  public final void a()
  {
    int[] arrayOfInt = b;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = arrayOfInt[i];
      c.a("StorageImporter", "Trying to import from storage v" + k);
      c = false;
      d = null;
      e = new HashMap();
      f = new HashMap();
      if ((c(k)) && (b(k)) && (a(k)))
      {
        c.a("StorageImporter", "Successfully imported tokens from storage v" + k);
        return;
      }
      i += 1;
    }
    c.a("StorageImporter", "No valid tokens found in previous storage versions.");
  }
}

/* Location:
 * Qualified Name:     com.adobe.adobepass.accessenabler.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */