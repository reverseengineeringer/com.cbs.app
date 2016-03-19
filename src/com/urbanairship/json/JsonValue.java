package com.urbanairship.json;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.d.h;
import com.urbanairship.j;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;
import org.json.JSONTokener;

public class JsonValue
  implements Parcelable
{
  public static final Parcelable.Creator<JsonValue> CREATOR = new JsonValue.1();
  public static final JsonValue a = new JsonValue(null);
  private final Object b;
  
  private JsonValue(Object paramObject)
  {
    b = paramObject;
  }
  
  public static JsonValue a(Object paramObject)
  {
    if ((paramObject == null) || (paramObject == JSONObject.NULL)) {
      paramObject = a;
    }
    Object localObject;
    do
    {
      return (JsonValue)paramObject;
      if ((paramObject instanceof JsonValue)) {
        return (JsonValue)paramObject;
      }
      if (((paramObject instanceof c)) || ((paramObject instanceof b)) || ((paramObject instanceof Boolean)) || ((paramObject instanceof Integer)) || ((paramObject instanceof Long)) || ((paramObject instanceof String))) {
        return new JsonValue(paramObject);
      }
      if (!(paramObject instanceof d)) {
        break;
      }
      localObject = ((d)paramObject).e();
      paramObject = localObject;
    } while (localObject != null);
    return a;
    if (((paramObject instanceof Byte)) || ((paramObject instanceof Short))) {
      return new JsonValue(Integer.valueOf(((Number)paramObject).intValue()));
    }
    if ((paramObject instanceof Character)) {
      return new JsonValue(((Character)paramObject).toString());
    }
    if ((paramObject instanceof Float)) {
      return new JsonValue(Double.valueOf(((Number)paramObject).doubleValue()));
    }
    if ((paramObject instanceof Double))
    {
      localObject = (Double)paramObject;
      if ((((Double)localObject).isInfinite()) || (((Double)localObject).isNaN())) {
        throw new a("Invalid Double value: " + localObject);
      }
      return new JsonValue(paramObject);
    }
    try
    {
      if ((paramObject instanceof JSONArray)) {
        return a((JSONArray)paramObject);
      }
      if ((paramObject instanceof JSONObject)) {
        return a((JSONObject)paramObject);
      }
      if ((paramObject instanceof Collection)) {
        return a((Collection)paramObject);
      }
      if (paramObject.getClass().isArray()) {
        return b(paramObject);
      }
      if ((paramObject instanceof Map))
      {
        paramObject = a((Map)paramObject);
        return (JsonValue)paramObject;
      }
    }
    catch (a paramObject)
    {
      throw ((Throwable)paramObject);
    }
    catch (Exception paramObject)
    {
      throw new a("Failed to wrap value.", (Throwable)paramObject);
    }
    throw new a("Illegal object: " + paramObject);
  }
  
  public static JsonValue a(Object paramObject, JsonValue paramJsonValue)
  {
    try
    {
      paramObject = a(paramObject);
      return (JsonValue)paramObject;
    }
    catch (a paramObject) {}
    return paramJsonValue;
  }
  
  private static JsonValue a(Collection paramCollection)
  {
    ArrayList localArrayList = new ArrayList();
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext())
    {
      Object localObject = paramCollection.next();
      if (localObject != null) {
        localArrayList.add(a(localObject));
      }
    }
    return new JsonValue(new b(localArrayList));
  }
  
  private static JsonValue a(Map<?, ?> paramMap)
  {
    HashMap localHashMap = new HashMap();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (!(localEntry.getKey() instanceof String)) {
        throw new a("Only string map keys are accepted.");
      }
      if (localEntry.getValue() != null) {
        localHashMap.put((String)localEntry.getKey(), a(localEntry.getValue()));
      }
    }
    return new JsonValue(new c(localHashMap));
  }
  
  private static JsonValue a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList(paramJSONArray.length());
    int i = 0;
    while (i < paramJSONArray.length())
    {
      if (!paramJSONArray.isNull(i)) {
        localArrayList.add(a(paramJSONArray.opt(i)));
      }
      i += 1;
    }
    return new JsonValue(new b(localArrayList));
  }
  
  private static JsonValue a(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!paramJSONObject.isNull(str)) {
        localHashMap.put(str, a(paramJSONObject.opt(str)));
      }
    }
    return new JsonValue(new c(localHashMap));
  }
  
  private static JsonValue b(Object paramObject)
  {
    int j = Array.getLength(paramObject);
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      Object localObject = Array.get(paramObject, i);
      if (localObject != null) {
        localArrayList.add(a(localObject));
      }
      i += 1;
    }
    return new JsonValue(new b(localArrayList));
  }
  
  public static JsonValue b(String paramString)
  {
    if (h.a(paramString)) {
      return a;
    }
    paramString = new JSONTokener(paramString);
    try
    {
      paramString = a(paramString.nextValue());
      return paramString;
    }
    catch (JSONException paramString)
    {
      throw new a("Unable to parse string", paramString);
    }
  }
  
  public static JsonValue c(String paramString)
  {
    return a(paramString, a);
  }
  
  public final long a(long paramLong)
  {
    if (g()) {}
    do
    {
      return paramLong;
      if ((b instanceof Long)) {
        return ((Long)b).longValue();
      }
    } while (!(b instanceof Number));
    return ((Number)b).longValue();
  }
  
  public final String a()
  {
    return a(null);
  }
  
  public final String a(String paramString)
  {
    if (g()) {}
    while (!(b instanceof String)) {
      return null;
    }
    return (String)b;
  }
  
  final void a(JSONStringer paramJSONStringer)
  {
    if (g())
    {
      paramJSONStringer.value(null);
      return;
    }
    if ((b instanceof b))
    {
      ((b)b).a(paramJSONStringer);
      return;
    }
    if ((b instanceof c))
    {
      ((c)b).a(paramJSONStringer);
      return;
    }
    paramJSONStringer.value(b);
  }
  
  public final boolean a(boolean paramBoolean)
  {
    if (g()) {}
    while (!(b instanceof Boolean)) {
      return paramBoolean;
    }
    return ((Boolean)b).booleanValue();
  }
  
  public final int b()
  {
    if (g()) {}
    do
    {
      return 2;
      if ((b instanceof Integer)) {
        return ((Integer)b).intValue();
      }
    } while (!(b instanceof Number));
    return ((Number)b).intValue();
  }
  
  public final double c()
  {
    if (g()) {}
    do
    {
      return 0.0D;
      if ((b instanceof Double)) {
        return ((Double)b).doubleValue();
      }
    } while (!(b instanceof Number));
    return ((Number)b).doubleValue();
  }
  
  public final Number d()
  {
    if ((g()) || (!(b instanceof Number))) {
      return null;
    }
    return (Number)b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public final b e()
  {
    if ((g()) || (!(b instanceof b))) {
      return null;
    }
    return (b)b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof JsonValue)) {
      return false;
    }
    paramObject = (JsonValue)paramObject;
    if (g()) {
      return ((JsonValue)paramObject).g();
    }
    return b.equals(b);
  }
  
  public final c f()
  {
    if ((g()) || (!(b instanceof c))) {
      return null;
    }
    return (c)b;
  }
  
  public final boolean g()
  {
    return b == null;
  }
  
  public final boolean h()
  {
    return b instanceof String;
  }
  
  public int hashCode()
  {
    int i = 17;
    if (b != null) {
      i = b.hashCode() + 527;
    }
    return i;
  }
  
  public final boolean i()
  {
    return b instanceof Double;
  }
  
  public final boolean j()
  {
    return b instanceof Number;
  }
  
  public final boolean k()
  {
    return b instanceof Boolean;
  }
  
  public final boolean l()
  {
    return b instanceof c;
  }
  
  public final boolean m()
  {
    return b instanceof b;
  }
  
  public String toString()
  {
    if (g()) {
      return "null";
    }
    try
    {
      if ((b instanceof String)) {
        return JSONObject.quote((String)b);
      }
      if ((b instanceof Number)) {
        return JSONObject.numberToString((Number)b);
      }
      if (((b instanceof c)) || ((b instanceof b))) {
        return b.toString();
      }
      String str = String.valueOf(b);
      return str;
    }
    catch (JSONException localJSONException)
    {
      j.a("JsonValue - Failed to create JSON String.", localJSONException);
    }
    return "";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(toString());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.json.JsonValue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */