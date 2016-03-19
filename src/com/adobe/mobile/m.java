package com.adobe.mobile;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class m
{
  private static final Long k = Long.valueOf(0L);
  private static final Map<String, Class> l = new HashMap() {};
  private static HashMap<String, Integer> m;
  private static final Object n = new Object();
  private static final Map<String, ae.a> o = new HashMap() {};
  protected String a;
  protected ae.a b;
  protected Date c;
  protected Date d;
  protected boolean e;
  protected boolean f;
  protected int g;
  protected ArrayList<ArrayList<String>> h;
  protected ArrayList<q> i;
  protected ArrayList<q> j;
  
  protected static m a(JSONObject paramJSONObject)
  {
    Object localObject = "";
    try
    {
      str = paramJSONObject.getString("template");
      boolean bool;
      return null;
    }
    catch (JSONException paramJSONObject)
    {
      try
      {
        localObject = (m)((Class)l.get(str)).newInstance();
        bool = ((m)localObject).b(paramJSONObject);
        if (!bool) {
          break label109;
        }
        return (m)localObject;
      }
      catch (NullPointerException paramJSONObject)
      {
        for (;;)
        {
          String str;
          paramJSONObject = str;
        }
      }
      paramJSONObject = paramJSONObject;
      am.b("Messages - template is required for in-app message", new Object[0]);
      return null;
    }
    catch (NullPointerException paramJSONObject)
    {
      paramJSONObject = (JSONObject)localObject;
      am.b("Messages - invalid template specified for message (%s)", new Object[] { paramJSONObject });
      return null;
    }
    catch (IllegalAccessException paramJSONObject)
    {
      am.b("Messages - unable to create instance of message (%s)", new Object[] { paramJSONObject.getMessage() });
      return null;
    }
    catch (InstantiationException paramJSONObject)
    {
      am.b("Messages - unable to create instance of message (%s)", new Object[] { paramJSONObject.getMessage() });
      return null;
    }
  }
  
  private static String a(Map<String, Integer> paramMap)
  {
    return new JSONObject(paramMap).toString();
  }
  
  private static HashMap<String, Integer> a(String paramString)
  {
    localHashMap = new HashMap();
    try
    {
      paramString = new JSONObject(paramString);
      Iterator localIterator = paramString.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localHashMap.put(str, Integer.valueOf(paramString.getInt(str)));
      }
      return localHashMap;
    }
    catch (JSONException paramString)
    {
      am.a("Messages- Unable to deserialize blacklist(%s)", new Object[] { paramString.getMessage() });
    }
  }
  
  protected static HashMap<String, Integer> c()
  {
    try
    {
      Object localObject = am.a().getString("messagesBlackList", null);
      if (localObject == null) {
        return new HashMap();
      }
      localObject = a((String)localObject);
      return (HashMap<String, Integer>)localObject;
    }
    catch (am.b localb)
    {
      am.c("Messaging - Unable to get shared preferences while loading blacklist. (%s)", new Object[] { localb.getMessage() });
    }
    return new HashMap();
  }
  
  private void h()
  {
    synchronized (n)
    {
      if (m == null) {
        m = c();
      }
      m.put(a, Integer.valueOf(b.a()));
      am.c("Messages - adding message \"%s\" to blacklist", new Object[] { a });
      try
      {
        SharedPreferences.Editor localEditor = am.r();
        localEditor.putString("messagesBlackList", a(m));
        localEditor.commit();
        return;
      }
      catch (am.b localb)
      {
        for (;;)
        {
          am.a("Messages - Error persisting blacklist map (%s).", new Object[] { localb.getMessage() });
        }
      }
    }
  }
  
  protected final void a()
  {
    if (b()) {
      synchronized (n)
      {
        m.remove(a);
        am.c("Messages - removing message \"%s\" from blacklist", new Object[] { a });
        try
        {
          SharedPreferences.Editor localEditor = am.r();
          localEditor.putString("messagesBlackList", a(m));
          localEditor.commit();
          return;
        }
        catch (am.b localb)
        {
          for (;;)
          {
            am.a("Messages - Error persisting blacklist map (%s).", new Object[] { localb.getMessage() });
          }
        }
      }
    }
  }
  
  protected final boolean a(Map<String, Object> paramMap1, Map<String, Object> paramMap2, Map<String, Object> paramMap3)
  {
    if ((f) && (g != am.v()) && ((this instanceof n))) {
      return true;
    }
    if ((ae.e() != null) && (!(this instanceof p))) {
      return false;
    }
    if (((paramMap1 == null) || (paramMap1.size() <= 0)) && ((paramMap2 == null) || (paramMap2.size() <= 0))) {
      return false;
    }
    if (b()) {
      return false;
    }
    try
    {
      if (!g.a(am.s()))
      {
        boolean bool = e;
        if (!bool) {
          return false;
        }
      }
    }
    catch (am.b paramMap1)
    {
      return false;
    }
    Object localObject = new Date(am.p() * 1000L);
    if (((Date)localObject).before(c)) {
      return false;
    }
    if ((d != null) && (((Date)localObject).after(d))) {
      return false;
    }
    localObject = i.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (!((q)((Iterator)localObject).next()).a(new Map[] { paramMap3 })) {
        return false;
      }
    }
    paramMap2 = am.b(paramMap2);
    paramMap3 = j.iterator();
    while (paramMap3.hasNext()) {
      if (!((q)paramMap3.next()).a(new Map[] { paramMap1, paramMap2 })) {
        return false;
      }
    }
    return true;
  }
  
  protected final boolean b()
  {
    for (;;)
    {
      synchronized (n)
      {
        if (m == null) {
          m = c();
        }
        if (m.get(a) != null)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  protected boolean b(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return false;
    }
    try
    {
      a = paramJSONObject.getString("messageId");
      if (a.length() <= 0)
      {
        am.b("Messages - Unable to create message, messageId is empty", new Object[0]);
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create message, messageId is required", new Object[0]);
      return false;
    }
    Object localObject;
    try
    {
      localObject = paramJSONObject.getString("showRule");
      b = ((ae.a)o.get(localObject));
      if ((b == null) || (b == ae.a.a))
      {
        am.b("Messages - Unable to create message \"%s\", showRule not valid (%s)", new Object[] { a, localObject });
        return false;
      }
    }
    catch (JSONException paramJSONObject)
    {
      am.b("Messages - Unable to create message \"%s\", showRule is required", new Object[] { a });
      return false;
    }
    try
    {
      c = new Date(paramJSONObject.getLong("startDate") * 1000L);
    }
    catch (JSONException localJSONException2)
    {
      try
      {
        d = new Date(paramJSONObject.getLong("endDate") * 1000L);
      }
      catch (JSONException localJSONException2)
      {
        try
        {
          for (;;)
          {
            e = paramJSONObject.getBoolean("showOffline");
            i = new ArrayList();
            try
            {
              localObject = paramJSONObject.getJSONArray("audiences");
              i2 = ((JSONArray)localObject).length();
              i1 = 0;
              while (i1 < i2)
              {
                JSONObject localJSONObject2 = ((JSONArray)localObject).getJSONObject(i1);
                i.add(q.a(localJSONObject2));
                i1 += 1;
              }
              localJSONException1 = localJSONException1;
              am.c("Messages - Tried to read startDate from message \"%s\" but none found. Using default value", new Object[] { a });
              c = new Date(k.longValue() * 1000L);
            }
            catch (JSONException localJSONException4)
            {
              int i2;
              int i1;
              am.c("Messages - failed to read audience for message \"%s\", error: %s", new Object[] { a, localJSONException4.getMessage() });
              j = new ArrayList();
              try
              {
                paramJSONObject = paramJSONObject.getJSONArray("triggers");
                i2 = paramJSONObject.length();
                i1 = 0;
                while (i1 < i2)
                {
                  JSONObject localJSONObject1 = paramJSONObject.getJSONObject(i1);
                  j.add(q.a(localJSONObject1));
                  i1 += 1;
                }
                return true;
              }
              catch (JSONException paramJSONObject)
              {
                am.c("Messages - failed to read trigger for message \"%s\", error: %s", new Object[] { a, paramJSONObject.getMessage() });
                if (j.size() > 0) {
                  break label493;
                }
                am.b("Messages - Unable to load message \"%s\" - at least one valid trigger is required for a message", new Object[] { a });
                return false;
                f = false;
              }
            }
            localJSONException2 = localJSONException2;
            am.c("Messages - Tried to read endDate from message \"%s\" but none found. Using default value", new Object[] { a });
          }
        }
        catch (JSONException localJSONException3)
        {
          for (;;)
          {
            am.c("Messages - Tried to read showOffline from message \"%s\" but none found. Using default value", new Object[] { a });
            e = false;
          }
        }
      }
    }
  }
  
  protected void d()
  {
    g = am.v();
    ae.a(this);
  }
  
  protected final void e()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("a.message.id", a);
    localHashMap.put("a.message.viewed", Integer.valueOf(1));
    d.a("In-App Message", localHashMap, am.p());
    if (b == ae.a.c) {
      h();
    }
    ae.a(null);
  }
  
  protected final void f()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("a.message.id", a);
    localHashMap.put("a.message.clicked", Integer.valueOf(1));
    d.a("In-App Message", localHashMap, am.p());
    if ((b == ae.a.c) || (b == ae.a.d)) {
      h();
    }
    ae.a(null);
  }
  
  protected final String g()
  {
    return "Message ID: " + a + "; Show Rule: " + b.toString() + "; Blacklisted: " + b();
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */