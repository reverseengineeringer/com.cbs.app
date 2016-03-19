package com.cbs.app.service;

import android.util.Log;
import com.c.a.a.e;
import org.json.JSONException;
import org.json.JSONObject;

final class LiveFyreService$5
  extends e
{
  LiveFyreService$5(LiveFyreService paramLiveFyreService) {}
  
  public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
  {
    LiveFyreService.b();
    new StringBuilder("onFailure: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
    LiveFyreService.b(a);
  }
  
  public final void a(JSONObject paramJSONObject)
  {
    int j = 1;
    k = 0;
    LiveFyreService.b();
    new StringBuilder("onSuccess3: ").append(paramJSONObject);
    a.b = paramJSONObject;
    LiveFyreService.b();
    new StringBuilder("data:").append(paramJSONObject.toString());
    for (;;)
    {
      try
      {
        a.d = paramJSONObject.getJSONObject("collectionSettings");
        if (a.d == null) {
          continue;
        }
        LiveFyreService.a(a, a.d.getString("collectionId"));
        if (LiveFyreService.a(a) != null)
        {
          LiveFyreService.b();
          new StringBuilder("collectionId: ").append(LiveFyreService.a(a));
          a.c = a.d.getJSONObject("archiveInfo");
          paramJSONObject = a.c;
          if (paramJSONObject == null) {
            continue;
          }
        }
      }
      catch (JSONException paramJSONObject)
      {
        Log.e(LiveFyreService.b(), "collectionSettings not found");
        int i = k;
        continue;
        LiveFyreService.b();
        i = k;
        continue;
        LiveFyreService.b();
        a.getPageContent();
        return;
        i = 0;
        continue;
        i = 0;
        continue;
      }
      try
      {
        a.f = a.c.getInt("nPages");
        LiveFyreService.b();
        new StringBuilder("nPages: ").append(a.f);
        i = 1;
        LiveFyreService.b(a, a.d.getString("event"));
        if (i == 0) {
          continue;
        }
        paramJSONObject = LiveFyreService.a(a);
        if (paramJSONObject == null) {
          continue;
        }
        i = j;
        LiveFyreService.b();
        if (i != 0) {
          continue;
        }
        LiveFyreService.b();
        LiveFyreService.b(a);
        return;
      }
      catch (JSONException paramJSONObject)
      {
        Log.e(LiveFyreService.b(), "nPages not found");
      }
      LiveFyreService.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.LiveFyreService.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */