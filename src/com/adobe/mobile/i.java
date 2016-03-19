package com.adobe.mobile;

import android.content.SharedPreferences;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class i
{
  private static String a = null;
  private static String b = null;
  private static HashMap<String, Object> c = null;
  private static volatile boolean d = true;
  private static String e = null;
  private static volatile boolean f = true;
  
  private static String a()
  {
    try
    {
      String str = am.a().getString("AAMUserId", null);
      return str;
    }
    catch (am.b localb)
    {
      am.a("Audience Manager - Error getting uuid from shared preferences (%s).", new Object[] { localb.getMessage() });
    }
    return null;
  }
  
  public static void a(Map<String, Object> paramMap)
  {
    am.m().execute(new a(paramMap, null));
  }
  
  private static String b()
  {
    if ((f) && (af.a().d()))
    {
      f = false;
      e = String.format("http://%s/event?", new Object[] { af.a().o() });
    }
    return e;
  }
  
  private static HashMap<String, Object> c(JSONObject paramJSONObject)
  {
    localHashMap = new HashMap();
    try
    {
      paramJSONObject = paramJSONObject.getJSONArray("stuff");
      int i = 0;
      while (i < paramJSONObject.length())
      {
        JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
        if (localJSONObject != null) {
          localHashMap.put(localJSONObject.getString("cn"), localJSONObject.getString("cv"));
        }
        i += 1;
      }
      return localHashMap;
    }
    catch (JSONException paramJSONObject)
    {
      am.c("Audience Manager - No 'stuff' array in response (%s)", new Object[] { paramJSONObject.getLocalizedMessage() });
    }
  }
  
  private static String d(Map<String, Object> paramMap)
  {
    if ((paramMap == null) || (paramMap.size() <= 0)) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder(1024);
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      String str = (String)localEntry.getKey();
      Object localObject = localEntry.getValue();
      if ((str != null) && (str.length() > 0) && (localObject != null) && (localObject.toString().length() > 0) && (localEntry.getValue().getClass() == String.class)) {
        localStringBuilder.append("&c_").append(am.a(str.replace(".", "_"))).append("=").append(am.a(localObject.toString()));
      }
    }
    return localStringBuilder.toString();
  }
  
  public static final class a
    implements Runnable
  {
    public final Map<String, Object> a;
    public final h.a<Map<String, Object>> b;
    
    public a(Map<String, Object> paramMap, h.a<Map<String, Object>> parama)
    {
      a = paramMap;
      b = null;
    }
    
    public final void run()
    {
      localHashMap = new HashMap();
      do
      {
        do
        {
          try
          {
            boolean bool = af.a().d();
            if (!bool) {
              return;
            }
          }
          catch (IOException localIOException)
          {
            Object localObject3;
            StringBuilder localStringBuilder;
            am.b("Audience Manager - Unable to read response from server (%s)", new Object[] { localIOException.getLocalizedMessage() });
            return;
            ((BufferedReader)localObject3).close();
            Object localObject1 = new JSONObject(localIOException.toString());
            i.a((JSONObject)localObject1);
            i.a(((JSONObject)localObject1).getString("uuid"));
            localObject1 = i.b((JSONObject)localObject1);
            if (((HashMap)localObject1).size() > 0) {
              break label383;
            }
            am.b("Audience Manager - response was empty", new Object[0]);
            return;
            am.c("Audience Manager - response (%s)", new Object[] { localObject1 });
            i.c((Map)localObject1);
            localHashMap.putAll((Map)localObject1);
            return;
          }
          catch (JSONException localJSONException)
          {
            am.b("Audience Manager - Unable to parse JSON data (%s)", new Object[] { localJSONException.getLocalizedMessage() });
            return;
          }
          catch (Exception localException)
          {
            am.b("Audience Manager - Unexpected error parsing result (%s)", new Object[] { localException.getLocalizedMessage() });
            return;
          }
          finally
          {
            if (b == null) {
              break label547;
            }
            new Thread(new Runnable()
            {
              public final void run() {}
            }).start();
          }
          if (af.a().m() != ag.b) {
            break;
          }
          am.c("Audience Manager - Privacy status is set to opt out, no signals will be submitted.", new Object[0]);
        } while (b == null);
        new Thread(new Runnable()
        {
          public final void run() {}
        }).start();
        return;
        localObject3 = i.b(a);
        if (((String)localObject3).length() > 1) {
          break;
        }
        am.b("Audience Manager - Unable to create URL object", new Object[0]);
      } while (b == null);
      new Thread(new Runnable()
      {
        public final void run() {}
      }).start();
      return;
      am.c("Audience Manager - request (%s)", new Object[] { localObject3 });
      localStringBuilder = new StringBuilder();
      localObject3 = new DefaultHttpClient().execute(new HttpGet((String)localObject3));
      if (((HttpResponse)localObject3).getStatusLine().getStatusCode() == 200)
      {
        localObject3 = new BufferedReader(new InputStreamReader(((HttpResponse)localObject3).getEntity().getContent(), "UTF-8"));
        for (;;)
        {
          String str = ((BufferedReader)localObject3).readLine();
          if (str == null) {
            break;
          }
          localStringBuilder.append(str);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adobe.mobile.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */