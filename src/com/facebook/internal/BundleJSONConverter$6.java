package com.facebook.internal;

import android.os.Bundle;
import org.json.JSONArray;
import org.json.JSONObject;

final class BundleJSONConverter$6
  implements BundleJSONConverter.Setter
{
  public final void setOnBundle(Bundle paramBundle, String paramString, Object paramObject)
  {
    throw new IllegalArgumentException("Unexpected type from JSON");
  }
  
  public final void setOnJSON(JSONObject paramJSONObject, String paramString, Object paramObject)
  {
    JSONArray localJSONArray = new JSONArray();
    paramObject = (String[])paramObject;
    int j = paramObject.length;
    int i = 0;
    while (i < j)
    {
      localJSONArray.put(paramObject[i]);
      i += 1;
    }
    paramJSONObject.put(paramString, localJSONArray);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.BundleJSONConverter.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */