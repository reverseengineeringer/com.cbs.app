package com.cbs.app.service;

import android.util.Log;
import com.c.a.a.e;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class LiveFyreService$a
  extends e
{
  public LiveFyreService$a(LiveFyreService paramLiveFyreService) {}
  
  public final void a(Throwable paramThrowable, String paramString)
  {
    LiveFyreService.b();
    new StringBuilder("onFailure3: ").append(paramThrowable.getLocalizedMessage()).append(" s:").append(paramString);
    a.a = false;
  }
  
  public final void a(Throwable paramThrowable, JSONArray paramJSONArray)
  {
    LiveFyreService.b();
    new StringBuilder("onFailure2:").append(paramThrowable).append(" obj:").append(paramJSONArray);
    a.a = false;
  }
  
  public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
  {
    LiveFyreService.b();
    new StringBuilder("onFailure5: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
    a.a = false;
  }
  
  public final void a(JSONObject arg1)
  {
    LiveFyreService.b();
    new StringBuilder("streamer onSuccess: ").append(???);
    int i;
    JSONObject localJSONObject2;
    try
    {
      ??? = ???.getJSONObject("data");
      if (??? != null)
      {
        LiveFyreService.b();
        new StringBuilder("data: ").append(???.toString());
      }
    }
    catch (JSONException localJSONException1)
    {
      try
      {
        localJSONObject1 = ???.getJSONObject("states");
        if (localJSONObject1 != null)
        {
          LiveFyreService.b();
          new StringBuilder("states: ").append(localJSONObject1.toString());
          Iterator localIterator = localJSONObject1.keys();
          i = 0;
          if (localIterator.hasNext())
          {
            ??? = (String)localIterator.next();
            LiveFyreService.b();
          }
        }
      }
      catch (JSONException localJSONException1)
      {
        try
        {
          for (;;)
          {
            JSONObject localJSONObject1;
            ??? = localJSONObject1.get((String)???);
            if ((??? != null) && ((??? instanceof JSONObject)))
            {
              JSONObject localJSONObject3 = (JSONObject)???;
              LiveFyreService.b();
              new StringBuilder("comment222: ").append(localJSONObject3.toString());
              synchronized (LiveFyreService.g(a))
              {
                boolean bool = a.a(a.g, localJSONObject3);
                i = 1;
                if (!bool)
                {
                  LiveFyreService.b();
                  a.g.put(localJSONObject3);
                }
              }
              ??? = ???;
              Log.e(LiveFyreService.b(), "data not found");
              ??? = null;
            }
          }
          localJSONException1 = localJSONException1;
          Log.e(LiveFyreService.b(), "states not found");
          localJSONObject2 = null;
        }
        catch (JSONException localJSONException4)
        {
          for (;;)
          {
            Log.e(LiveFyreService.b(), "key not found");
            Object localObject3 = null;
          }
        }
      }
    }
    for (;;)
    {
      try
      {
        localJSONObject2 = ???.getJSONObject("authors");
        a.a(localJSONObject2);
      }
      catch (JSONException ???)
      {
        try
        {
          long l = ???.getLong("maxEventId");
          LiveFyreService.b(a, Long.valueOf(l).toString());
          LiveFyreService.b();
          new StringBuilder("-----------> lastEventId: ").append(LiveFyreService.h(a));
          if (i == 0) {
            break label496;
          }
          LiveFyreService.b();
        }
        catch (JSONException ???)
        {
          synchronized (LiveFyreService.g(a))
          {
            LiveFyreService.b();
            a.g = LiveFyreService.a(a.g, LiveFyreService.c(a));
            i = 0;
            int j = a.g.length();
            if (i < j) {
              try
              {
                a.g.getJSONObject(i).getJSONObject("content");
                i += 1;
                continue;
                localJSONException2 = localJSONException2;
                Log.e(LiveFyreService.b(), "authors not found");
                continue;
                ??? = ???;
                Log.e(LiveFyreService.b(), "maxEventId not found");
              }
              catch (JSONException localJSONException3)
              {
                Log.e(LiveFyreService.b(), "content not found");
                continue;
              }
            }
          }
        }
      }
      LiveFyreService.d(a);
      label496:
      a.a = false;
      return;
      i = 0;
      continue;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */