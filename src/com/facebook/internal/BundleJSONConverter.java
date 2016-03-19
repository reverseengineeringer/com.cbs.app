package com.facebook.internal;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

public class BundleJSONConverter
{
  private static final Map<Class<?>, Setter> SETTERS;
  
  static
  {
    HashMap localHashMap = new HashMap();
    SETTERS = localHashMap;
    localHashMap.put(Boolean.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousBundle.putBoolean(paramAnonymousString, ((Boolean)paramAnonymousObject).booleanValue());
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    SETTERS.put(Integer.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousBundle.putInt(paramAnonymousString, ((Integer)paramAnonymousObject).intValue());
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    SETTERS.put(Long.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousBundle.putLong(paramAnonymousString, ((Long)paramAnonymousObject).longValue());
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    SETTERS.put(Double.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousBundle.putDouble(paramAnonymousString, ((Double)paramAnonymousObject).doubleValue());
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    SETTERS.put(String.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousBundle.putString(paramAnonymousString, (String)paramAnonymousObject);
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousJSONObject.put(paramAnonymousString, paramAnonymousObject);
      }
    });
    SETTERS.put(String[].class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        throw new IllegalArgumentException("Unexpected type from JSON");
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        JSONArray localJSONArray = new JSONArray();
        paramAnonymousObject = (String[])paramAnonymousObject;
        int j = paramAnonymousObject.length;
        int i = 0;
        while (i < j)
        {
          localJSONArray.put(paramAnonymousObject[i]);
          i += 1;
        }
        paramAnonymousJSONObject.put(paramAnonymousString, localJSONArray);
      }
    });
    SETTERS.put(JSONArray.class, new Setter()
    {
      public final void setOnBundle(Bundle paramAnonymousBundle, String paramAnonymousString, Object paramAnonymousObject)
      {
        paramAnonymousObject = (JSONArray)paramAnonymousObject;
        ArrayList localArrayList = new ArrayList();
        if (((JSONArray)paramAnonymousObject).length() == 0)
        {
          paramAnonymousBundle.putStringArrayList(paramAnonymousString, localArrayList);
          return;
        }
        int i = 0;
        while (i < ((JSONArray)paramAnonymousObject).length())
        {
          Object localObject = ((JSONArray)paramAnonymousObject).get(i);
          if ((localObject instanceof String))
          {
            localArrayList.add((String)localObject);
            i += 1;
          }
          else
          {
            throw new IllegalArgumentException("Unexpected type in an array: " + localObject.getClass());
          }
        }
        paramAnonymousBundle.putStringArrayList(paramAnonymousString, localArrayList);
      }
      
      public final void setOnJSON(JSONObject paramAnonymousJSONObject, String paramAnonymousString, Object paramAnonymousObject)
      {
        throw new IllegalArgumentException("JSONArray's are not supported in bundles.");
      }
    });
  }
  
  public static Bundle convertToBundle(JSONObject paramJSONObject)
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if ((localObject != null) && (localObject != JSONObject.NULL)) {
        if ((localObject instanceof JSONObject))
        {
          localBundle.putBundle(str, convertToBundle((JSONObject)localObject));
        }
        else
        {
          Setter localSetter = (Setter)SETTERS.get(localObject.getClass());
          if (localSetter == null) {
            throw new IllegalArgumentException("Unsupported type: " + localObject.getClass());
          }
          localSetter.setOnBundle(localBundle, str, localObject);
        }
      }
    }
    return localBundle;
  }
  
  public static JSONObject convertToJSON(Bundle paramBundle)
  {
    JSONObject localJSONObject = new JSONObject();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject1 = paramBundle.get(str);
      if (localObject1 != null)
      {
        Object localObject2;
        if ((localObject1 instanceof List))
        {
          localObject2 = new JSONArray();
          localObject1 = ((List)localObject1).iterator();
          while (((Iterator)localObject1).hasNext()) {
            ((JSONArray)localObject2).put((String)((Iterator)localObject1).next());
          }
          localJSONObject.put(str, localObject2);
        }
        else if ((localObject1 instanceof Bundle))
        {
          localJSONObject.put(str, convertToJSON((Bundle)localObject1));
        }
        else
        {
          localObject2 = (Setter)SETTERS.get(localObject1.getClass());
          if (localObject2 == null) {
            throw new IllegalArgumentException("Unsupported type: " + localObject1.getClass());
          }
          ((Setter)localObject2).setOnJSON(localJSONObject, str, localObject1);
        }
      }
    }
    return localJSONObject;
  }
  
  public static abstract interface Setter
  {
    public abstract void setOnBundle(Bundle paramBundle, String paramString, Object paramObject);
    
    public abstract void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.BundleJSONConverter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */