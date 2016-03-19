package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.urbanairship.BaseIntentService.a;
import com.urbanairship.d.f;
import com.urbanairship.json.JsonValue;
import com.urbanairship.json.a;
import com.urbanairship.json.b;
import com.urbanairship.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class l
  extends BaseIntentService.a
{
  private final j a;
  private final g b;
  private final m c;
  
  public l(Context paramContext, com.urbanairship.l paraml)
  {
    this(paramContext, paraml, new m(p.a().l()), p.a().m(), p.a().m().k());
  }
  
  private l(Context paramContext, com.urbanairship.l paraml, m paramm, j paramj, g paramg)
  {
    super(paramContext, paraml);
    c = paramm;
    a = paramj;
    b = paramg;
  }
  
  private static void a(Bundle paramBundle, Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    label125:
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ArrayList localArrayList = paramBundle.getStringArrayList(str);
      if (localArrayList != null)
      {
        if (paramMap1.containsKey(str)) {
          ((Set)paramMap1.get(str)).addAll(localArrayList);
        }
        for (;;)
        {
          if (!paramMap2.containsKey(str)) {
            break label125;
          }
          ((Set)paramMap2.get(str)).removeAll(localArrayList);
          break;
          paramMap1.put(str, new HashSet(localArrayList));
        }
      }
    }
  }
  
  private static void a(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      try
      {
        paramString = JsonValue.b(paramString);
        if (paramString.l())
        {
          if (paramString.f().a("warnings"))
          {
            Iterator localIterator = paramString.f().b("warnings").e().iterator();
            while (localIterator.hasNext())
            {
              JsonValue localJsonValue = (JsonValue)localIterator.next();
              new StringBuilder("Tag Groups warnings: ").append(localJsonValue);
            }
          }
          if (!paramString.f().a("error")) {}
        }
      }
      catch (a paramString)
      {
        com.urbanairship.j.a("Unable to parse tag group response", paramString);
        return;
      }
    }
    new StringBuilder("Tag Groups error: ").append(paramString.f().b("error"));
  }
  
  private void a(String paramString, Map<String, Set<String>> paramMap)
  {
    b().a(paramString, JsonValue.a(paramMap, null));
  }
  
  private Map<String, Set<String>> b(String paramString)
  {
    HashMap localHashMap = null;
    try
    {
      localObject = JsonValue.b(b().a(paramString));
      paramString = (String)localObject;
    }
    catch (a locala)
    {
      for (;;)
      {
        Object localObject;
        HashSet localHashSet;
        Iterator localIterator;
        com.urbanairship.j.a("Unable to parse pending tag groups.", locala);
        b().c(paramString);
        paramString = localHashMap;
        continue;
        if (!localHashSet.isEmpty()) {
          localHashMap.put(locala.getKey(), localHashSet);
        }
      }
    }
    localHashMap = new HashMap();
    if ((paramString != null) && (paramString.l()))
    {
      paramString = paramString.f().iterator();
      if (paramString.hasNext())
      {
        localObject = (Map.Entry)paramString.next();
        localHashSet = new HashSet();
        localIterator = ((JsonValue)((Map.Entry)localObject).getValue()).e().iterator();
        while (localIterator.hasNext())
        {
          JsonValue localJsonValue = (JsonValue)localIterator.next();
          if (localJsonValue.h()) {
            localHashSet.add(localJsonValue.a());
          }
        }
      }
    }
    return localHashMap;
  }
  
  protected final void a(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    int i = -1;
    switch (str1.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        if (str1.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"))
        {
          i = 0;
          continue;
          if (str1.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"))
          {
            i = 1;
            continue;
            if (str1.equals("com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    boolean bool = paramIntent.getAction().equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS");
    String str2;
    if (bool) {
      str2 = "com.urbanairship.push.PENDING_ADD_TAG_GROUPS";
    }
    Map localMap1;
    Map localMap2;
    Object localObject;
    for (str1 = "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS";; str1 = "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY")
    {
      localMap1 = b(str2);
      localMap2 = b(str1);
      localObject = paramIntent.getBundleExtra("com.urbanairship.push.EXTRA_ADD_TAG_GROUPS");
      if (localObject != null)
      {
        a((Bundle)localObject, localMap1, localMap2);
        paramIntent.removeExtra("com.urbanairship.push.EXTRA_ADD_TAG_GROUPS");
      }
      localObject = paramIntent.getBundleExtra("com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS");
      if (localObject != null)
      {
        a((Bundle)localObject, localMap2, localMap1);
        paramIntent.removeExtra("com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS");
      }
      if ((!localMap1.isEmpty()) || (!localMap2.isEmpty())) {
        break;
      }
      b().c(str2);
      b().c(str1);
      return;
      str2 = "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY";
    }
    if (bool)
    {
      localObject = a.t();
      if (localObject == null) {}
    }
    else
    {
      for (localObject = c.b((String)localObject, localMap1, localMap2); (localObject == null) || (f.b(((com.urbanairship.b.c)localObject).a())); localObject = c.a(b.a(), localMap1, localMap2))
      {
        a(str2, localMap1);
        a(str1, localMap2);
        b(paramIntent);
        return;
        if (b.a() == null) {
          break label495;
        }
      }
      if (f.a(((com.urbanairship.b.c)localObject).a()))
      {
        new StringBuilder("Update tag groups succeeded with status: ").append(((com.urbanairship.b.c)localObject).a());
        a(((com.urbanairship.b.c)localObject).b());
        b().c(str2);
        b().c(str1);
        return;
      }
      new StringBuilder("Update tag groups failed with status: ").append(((com.urbanairship.b.c)localObject).a());
      a(((com.urbanairship.b.c)localObject).b());
      if ((((com.urbanairship.b.c)localObject).a() == 403) || (((com.urbanairship.b.c)localObject).a() == 400))
      {
        b().c(str2);
        b().c(str1);
        return;
      }
    }
    label495:
    a(str2, localMap1);
    a(str1, localMap2);
    return;
    b().c("com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY");
    b().c("com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY");
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */