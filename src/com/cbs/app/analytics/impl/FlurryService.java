package com.cbs.app.analytics.impl;

import android.app.Application;
import android.content.Context;
import com.cbs.app.analytics.Action;
import com.cbs.app.view.utils.Util;
import com.flurry.android.a;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class FlurryService
{
  private static String a = null;
  
  public static void a(Application paramApplication)
  {
    if (paramApplication != null)
    {
      if (!Util.m(paramApplication)) {
        break label42;
      }
      a.a(true);
      if (!Util.G(paramApplication)) {
        break label57;
      }
      if (!Util.e(paramApplication)) {
        break label49;
      }
      a = "C877XMQYMJ9SK6FN6DQS";
    }
    for (;;)
    {
      a.a(paramApplication, a);
      return;
      label42:
      a.a(false);
      break;
      label49:
      a = "3NBY28XV8JVG4P62W8KF";
      continue;
      label57:
      if (Util.e(paramApplication)) {
        a = "CBWHZSTXZZCQDW7NJFFK";
      } else {
        a = "NHVQTM7TQCK98ZZWRZ4X";
      }
    }
  }
  
  public static void a(Context paramContext)
  {
    if (a != null) {
      a.a(paramContext);
    }
  }
  
  public static void a(Action paramAction, HashMap<String, Object> paramHashMap)
  {
    new StringBuilder("postAction: ").append(paramAction.getName());
    HashMap localHashMap = new HashMap();
    if (paramHashMap != null)
    {
      Iterator localIterator = paramHashMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (Map.Entry)localIterator.next();
        String str = (String)((Map.Entry)localObject).getKey();
        localObject = ((Map.Entry)localObject).getValue().toString();
        if ((!str.contains("evar_")) && (!str.contains("appState")) && (!str.contains("prop_")) && (!str.contains("sendAction10")) && (!str.contains("pageView")) && (!str.contains("eVar")) && (!str.contains("events")) && (!str.contains("eProp")))
        {
          new StringBuilder().append(str).append(" = ").append((String)localObject);
          localHashMap.put(str, localObject);
        }
      }
      if (paramHashMap.containsKey("pageView")) {
        a.a();
      }
      a.a(paramAction.getName(), localHashMap);
    }
  }
  
  public static void b(Context paramContext)
  {
    a.b(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.FlurryService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */