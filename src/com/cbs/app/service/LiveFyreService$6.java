package com.cbs.app.service;

import android.app.Activity;
import android.util.Log;
import com.c.a.a.e;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class LiveFyreService$6
  extends e
{
  LiveFyreService$6(LiveFyreService paramLiveFyreService) {}
  
  public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
  {
    LiveFyreService.b();
    new StringBuilder("onFailure: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
    LiveFyreService.b(a);
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    LiveFyreService.b();
    try
    {
      localObject = paramJSONObject.getJSONObject("authors");
      a.a((JSONObject)localObject);
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        for (;;)
        {
          Object localObject = paramJSONObject.getJSONArray("content");
          a.a((JSONArray)localObject);
          try
          {
            paramJSONObject = paramJSONObject.getJSONObject("meta");
            if (paramJSONObject != null)
            {
              long l = paramJSONObject.getLong("last");
              LiveFyreService.b(a, Long.valueOf(l).toString());
            }
          }
          catch (JSONException paramJSONObject)
          {
            for (;;)
            {
              Log.e(LiveFyreService.b(), "meta or last not found");
            }
          }
          paramJSONObject = a;
          e += 1;
          LiveFyreService.b();
          new StringBuilder("parsedPageCount: ").append(a.e);
          LiveFyreService.b();
          new StringBuilder("pages: ").append(a.f);
          if (a.e == a.f)
          {
            LiveFyreService.b();
            new StringBuilder("pageContentLength2:").append(a.g.length());
            a.g = LiveFyreService.a(a.g, LiveFyreService.c(a));
            LiveFyreService.b();
            new StringBuilder("pageContentLength3:").append(a.g.length());
            LiveFyreService.d(a);
            ((Activity)LiveFyreService.e(a)).runOnUiThread(new Runnable()
            {
              public final void run()
              {
                synchronized (LiveFyreService.f(a))
                {
                  a.a();
                  return;
                }
              }
            });
          }
          return;
          localJSONException1 = localJSONException1;
          Log.e(LiveFyreService.b(), "authors not found");
        }
      }
      catch (JSONException localJSONException2)
      {
        for (;;)
        {
          Log.e(LiveFyreService.b(), "content not found");
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */