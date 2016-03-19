package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.widget.Toast;
import com.c.a.a.e;
import com.cbs.app.service.LiveFyreService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class EpisodeCommentsFragment$10
  extends e
{
  EpisodeCommentsFragment$10(EpisodeCommentsFragment paramEpisodeCommentsFragment) {}
  
  public final void a(Throwable paramThrowable)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure4:").append(paramThrowable.getLocalizedMessage());
    a.c(paramThrowable.getLocalizedMessage());
  }
  
  public final void a(Throwable paramThrowable, String paramString)
  {
    EpisodeCommentsFragment.e();
    a.c(paramString);
  }
  
  public final void a(Throwable paramThrowable, JSONArray paramJSONArray)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure2:").append(paramThrowable).append(" obj:").append(paramJSONArray);
    a.c("Unknown failure.");
  }
  
  public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
    if (paramJSONObject != null) {}
    for (;;)
    {
      try
      {
        paramThrowable = paramJSONObject.getString("msg");
        paramJSONObject = paramThrowable;
        if (paramThrowable == null) {
          paramJSONObject = "There was a problem commenting. Please try again later.";
        }
        a.a(paramJSONObject);
        return;
      }
      catch (JSONException paramThrowable)
      {
        paramThrowable.printStackTrace();
      }
      paramThrowable = null;
    }
  }
  
  public final void a(final JSONObject paramJSONObject)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onSuccess: ").append(paramJSONObject);
    try
    {
      paramJSONObject = paramJSONObject.getJSONObject("data");
      if (paramJSONObject == null) {}
    }
    catch (JSONException localJSONException)
    {
      try
      {
        localJSONObject = paramJSONObject.getJSONObject("authors");
        EpisodeCommentsFragment.e();
        a.b.a(localJSONObject);
      }
      catch (JSONException paramJSONObject)
      {
        for (;;)
        {
          try
          {
            paramJSONObject = paramJSONObject.getJSONArray("messages");
            int i = 0;
            if (i >= paramJSONObject.length()) {
              break;
            }
            EpisodeCommentsFragment.e();
            JSONObject localJSONObject = paramJSONObject.getJSONObject(i);
            a.b.b(localJSONObject);
            i += 1;
            continue;
            paramJSONObject = paramJSONObject;
            paramJSONObject.printStackTrace();
            paramJSONObject = null;
          }
          catch (JSONException paramJSONObject)
          {
            paramJSONObject.printStackTrace();
          }
          localJSONException = localJSONException;
          localJSONException.printStackTrace();
        }
      }
      paramJSONObject = a.getActivity();
      if (paramJSONObject != null)
      {
        EpisodeCommentsFragment.e();
        paramJSONObject.runOnUiThread(new Runnable()
        {
          public final void run()
          {
            EpisodeCommentsFragment.e();
            Toast.makeText(paramJSONObject, "Message posted.", 1).show();
            a.b.a(a.d);
            a.b();
          }
        });
      }
      a.e = null;
      a.b.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */