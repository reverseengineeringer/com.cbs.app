package com.cbs.app.service;

import android.util.Log;
import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

final class LiveFyreService$1
  implements Comparator<JSONObject>
{
  private static int a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    localLong2 = Long.valueOf(0L);
    localLong1 = Long.valueOf(0L);
    try
    {
      l = paramJSONObject1.getJSONObject("content").getLong("createdAt");
      paramJSONObject1 = Long.valueOf(l);
    }
    catch (JSONException paramJSONObject1)
    {
      for (;;)
      {
        long l;
        label46:
        Log.e(LiveFyreService.b(), "comparator content");
        paramJSONObject1 = localLong2;
      }
    }
    try
    {
      l = paramJSONObject2.getJSONObject("content").getLong("createdAt");
      paramJSONObject2 = Long.valueOf(l);
    }
    catch (JSONException paramJSONObject2)
    {
      Log.e(LiveFyreService.b(), "comparator content");
      paramJSONObject2 = localLong1;
      break label46;
    }
    return paramJSONObject2.compareTo(paramJSONObject1);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */