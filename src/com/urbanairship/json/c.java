package com.urbanairship.json;

import com.urbanairship.j;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONStringer;

public final class c
  implements Iterable<Map.Entry<String, JsonValue>>
{
  private final Map<String, JsonValue> a;
  
  public c(Map<String, JsonValue> paramMap)
  {
    if (paramMap == null) {}
    for (paramMap = new HashMap();; paramMap = new HashMap(paramMap))
    {
      a = paramMap;
      return;
    }
  }
  
  public final Set<Map.Entry<String, JsonValue>> a()
  {
    return a.entrySet();
  }
  
  final void a(JSONStringer paramJSONStringer)
  {
    paramJSONStringer.object();
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramJSONStringer.key((String)localEntry.getKey());
      ((JsonValue)localEntry.getValue()).a(paramJSONStringer);
    }
    paramJSONStringer.endObject();
  }
  
  public final boolean a(String paramString)
  {
    return a.containsKey(paramString);
  }
  
  public final JsonValue b(String paramString)
  {
    return (JsonValue)a.get(paramString);
  }
  
  public final boolean b()
  {
    return a.isEmpty();
  }
  
  public final JsonValue c(String paramString)
  {
    paramString = b(paramString);
    if (paramString != null) {
      return paramString;
    }
    return JsonValue.a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof c)) {
      return a.equals(a);
    }
    return false;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final Iterator<Map.Entry<String, JsonValue>> iterator()
  {
    return a().iterator();
  }
  
  public final String toString()
  {
    try
    {
      Object localObject = new JSONStringer();
      a((JSONStringer)localObject);
      localObject = ((JSONStringer)localObject).toString();
      return (String)localObject;
    }
    catch (JSONException localJSONException)
    {
      j.a("JsonMap - Failed to create JSON String.", localJSONException);
    }
    return "";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */