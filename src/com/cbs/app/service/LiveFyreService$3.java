package com.cbs.app.service;

import android.util.Log;
import java.util.Comparator;
import org.json.JSONException;
import org.json.JSONObject;

final class LiveFyreService$3
  implements Comparator<JSONObject>
{
  private static int a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    int k = 0;
    try
    {
      i = paramJSONObject1.getInt("replies");
    }
    catch (JSONException localJSONException3)
    {
      try
      {
        j = paramJSONObject1.getInt("likes");
        m = i + j;
      }
      catch (JSONException localJSONException3)
      {
        try
        {
          i = paramJSONObject2.getInt("replies");
        }
        catch (JSONException localJSONException3)
        {
          try
          {
            for (;;)
            {
              j = paramJSONObject2.getInt("likes");
              i += j;
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
                  label78:
                  Log.e(LiveFyreService.b(), "content not found");
                  paramJSONObject1 = Long.valueOf(0L);
                }
              }
              try
              {
                l = paramJSONObject2.getJSONObject("content").getLong("createdAt");
                paramJSONObject2 = Long.valueOf(l);
              }
              catch (JSONException paramJSONObject2)
              {
                Log.e(LiveFyreService.b(), "content not found");
                paramJSONObject2 = Long.valueOf(0L);
                break label78;
                if (m >= i) {
                  break label267;
                }
                i = 1;
                break label145;
                i = -1;
                break label145;
              }
              LiveFyreService.b();
              new StringBuilder("h 1: ").append(m).append("h 2:").append(i);
              LiveFyreService.b();
              new StringBuilder("c 1: ").append(paramJSONObject1).append(" c 2:").append(paramJSONObject2);
              if (m != i) {
                break label256;
              }
              i = paramJSONObject2.compareTo(paramJSONObject1);
              label145:
              LiveFyreService.b();
              LiveFyreService.b();
              return i;
              localJSONException1 = localJSONException1;
              Log.e(LiveFyreService.b(), "replies not found");
              i = 0;
              continue;
              localJSONException2 = localJSONException2;
              Log.e(LiveFyreService.b(), "likes not found");
              j = 0;
              continue;
              localJSONException3 = localJSONException3;
              Log.e(LiveFyreService.b(), "replies not found");
              i = 0;
            }
          }
          catch (JSONException localJSONException4)
          {
            for (;;)
            {
              Log.e(LiveFyreService.b(), "likes not found");
              int j = k;
            }
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */