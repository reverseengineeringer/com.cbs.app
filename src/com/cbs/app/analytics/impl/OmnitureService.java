package com.cbs.app.analytics.impl;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.adobe.a.b.e;
import com.cbs.app.analytics.Action;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class OmnitureService
{
  private static final String a = OmnitureService.class.getSimpleName();
  private static String b = null;
  
  public static void a() {}
  
  public static void a(Context paramContext)
  {
    Activity localActivity;
    if ((paramContext != null) && ((paramContext instanceof Activity)))
    {
      localActivity = (Activity)paramContext;
      paramContext = e.a(paramContext.getApplicationContext());
      if (!Util.m(localActivity)) {
        break label51;
      }
    }
    label51:
    for (b = "cbsicbsapp-dev,cbsicbsiall-dev";; b = "cbsicbsapp,cbsicbsiall")
    {
      paramContext.a(b, "om.cbsi.com");
      paramContext.b(localActivity);
      return;
    }
  }
  
  public static void a(Context paramContext, Action paramAction, HashMap<String, Object> paramHashMap)
  {
    String str1 = paramAction.getName();
    Object localObject2 = null;
    Object localObject4 = null;
    if (paramContext != null)
    {
      e locale = e.a(paramContext.getApplicationContext());
      locale.k();
      Object localObject3 = b;
      int i = 0;
      int j = 0;
      Object localObject1 = localObject3;
      HashSet localHashSet;
      if (paramHashMap != null)
      {
        localHashSet = new HashSet();
        Iterator localIterator = paramHashMap.entrySet().iterator();
        localObject1 = localObject3;
        i = j;
        localObject2 = localObject4;
        if (localIterator.hasNext())
        {
          localObject3 = (String)((Map.Entry)localIterator.next()).getKey();
          localObject4 = paramHashMap.get(localObject3);
          if (!(localObject4 instanceof String)) {
            break label726;
          }
          String str2 = (String)localObject4;
          if (((String)localObject3).contains("evar_"))
          {
            locale.a(Integer.valueOf(((String)localObject3).substring(((String)localObject3).lastIndexOf('_') + 1)).intValue(), str2);
            localHashSet.add(localObject3);
          }
          if (((String)localObject3).contains("prop_"))
          {
            locale.b(Integer.valueOf(((String)localObject3).substring(((String)localObject3).lastIndexOf('_') + 1)).intValue(), str2);
            localHashSet.add(localObject3);
          }
          if (((String)localObject3).contains("appState"))
          {
            paramAction.setAppState(str2);
            localHashSet.add(localObject3);
          }
          if (((String)localObject3).contains("campaign"))
          {
            locale.e(str2);
            localHashSet.add(localObject3);
          }
          if (((String)localObject3).contains("pageView"))
          {
            localHashSet.add(localObject3);
            i = 1;
          }
          if (!((String)localObject3).contains("events")) {
            break label723;
          }
          localObject2 = localObject4.toString();
          label318:
          if (!((String)localObject3).contains("rsid")) {
            break label729;
          }
          localObject1 = localObject4.toString();
        }
      }
      label723:
      label726:
      label729:
      for (;;)
      {
        break;
        paramHashMap.keySet().removeAll(localHashSet);
        localObject4 = paramAction.getAppState();
        localObject3 = localObject4;
        if (!((String)localObject4).contains("cbscom:")) {
          localObject3 = "cbscom:" + (String)localObject4;
        }
        locale.d((String)localObject3);
        locale.a((String)localObject1, "om.cbsi.com");
        localObject1 = "androidphone";
        if (Util.h(paramContext)) {
          localObject1 = "androidtablet";
        }
        locale.a(58, (String)localObject1);
        locale.b(58, (String)localObject1);
        locale.a(2, "us");
        locale.b(2, "us");
        locale.a(3, "native app");
        locale.b(3, "native app");
        locale.a(5, "cbsicbsapp");
        locale.b(5, "cbsicbsapp");
        locale.b(9, "D=User-Agent");
        paramContext = new Hashtable();
        if ((paramAction != null) && (localObject2 != null) && (paramHashMap != null) && (!paramHashMap.containsKey("appState"))) {
          new StringBuilder("legacy event: ").append(paramAction.getName());
        }
        if (i != 0) {}
        try
        {
          new StringBuilder("trackAppState: ").append(locale.n());
          if (localObject2 != null)
          {
            locale.f((String)localObject2);
            if ((str1 != null) && (!str1.isEmpty())) {
              locale.a(46, str1);
            }
          }
          locale.a(locale.n(), paramContext);
          return;
        }
        catch (Exception paramContext)
        {
          Log.e(a, "omniture exception:" + paramContext.getLocalizedMessage());
          return;
        }
        new StringBuilder("trackEvents: ").append((String)localObject2).append("  evar46: ").append(str1);
        if ((str1 != null) && (!str1.isEmpty())) {
          locale.a(46, str1);
        }
        if ((paramHashMap != null) && (paramHashMap.size() > 0))
        {
          locale.b((String)localObject2, paramContext);
          return;
        }
        paramContext = (Context)localObject2;
        if (localObject2 == null) {
          paramContext = "event19";
        }
        locale.b(paramContext);
        return;
        break label318;
      }
    }
  }
  
  public static void b(Context paramContext)
  {
    if ((paramContext != null) && ((paramContext instanceof Activity)))
    {
      paramContext = e.a(paramContext.getApplicationContext());
      paramContext.a(b, "om.cbsi.com");
      paramContext.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.analytics.impl.OmnitureService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */