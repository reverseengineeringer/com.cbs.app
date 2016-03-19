package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.widget.EditText;
import android.widget.Toast;
import com.c.a.a.e;
import com.cbs.app.service.LiveFyreService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class EpisodeCommentsFragment$8
  extends e
{
  EpisodeCommentsFragment$8(EpisodeCommentsFragment paramEpisodeCommentsFragment, boolean paramBoolean) {}
  
  public final void a(Throwable paramThrowable)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure4:").append(paramThrowable.getLocalizedMessage());
    b.a(paramThrowable.getLocalizedMessage());
  }
  
  public final void a(Throwable paramThrowable, String paramString)
  {
    EpisodeCommentsFragment.e();
    b.a(paramString);
  }
  
  public final void a(Throwable paramThrowable, JSONArray paramJSONArray)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure2:").append(paramThrowable).append(" obj:").append(paramJSONArray);
    b.a("Unknown failure.");
  }
  
  public final void a(Throwable paramThrowable, JSONObject paramJSONObject)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onFailure1: ").append(paramThrowable.getLocalizedMessage()).append(" data: ").append(paramJSONObject);
    if (paramJSONObject != null) {}
    for (;;)
    {
      try
      {
        paramThrowable = paramJSONObject.getString("msg");
        paramJSONObject = paramThrowable;
        if (paramThrowable == null)
        {
          paramJSONObject = new StringBuilder("There was a problem ");
          if (!a) {
            break label105;
          }
          paramThrowable = "liking";
          paramJSONObject = paramThrowable + " this content. Please try again later.";
        }
        b.a(paramJSONObject);
        return;
      }
      catch (JSONException paramThrowable)
      {
        EpisodeCommentsFragment.e();
        paramThrowable.getMessage();
      }
      paramThrowable = null;
      continue;
      label105:
      paramThrowable = "unliking";
    }
  }
  
  public final void a(final JSONObject paramJSONObject)
  {
    EpisodeCommentsFragment.e();
    new StringBuilder("onSuccess: ").append(paramJSONObject);
    if (paramJSONObject != null)
    {
      JSONObject localJSONObject = null;
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
          b.b.a(localJSONObject);
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
              localJSONObject = paramJSONObject.getJSONObject(i);
              b.b.b(localJSONObject);
              i += 1;
              continue;
              paramJSONObject = paramJSONObject;
              paramJSONObject.printStackTrace();
              paramJSONObject = localJSONObject;
            }
            catch (JSONException paramJSONObject)
            {
              paramJSONObject.printStackTrace();
            }
            localJSONException = localJSONException;
            localJSONException.printStackTrace();
          }
        }
      }
    }
    paramJSONObject = b.getActivity();
    paramJSONObject.runOnUiThread(new Runnable()
    {
      public final void run()
      {
        Activity localActivity = paramJSONObject;
        StringBuilder localStringBuilder = new StringBuilder("You have ");
        if (a) {}
        for (Object localObject = "liked";; localObject = "unliked")
        {
          Toast.makeText(localActivity, (String)localObject + " this comment.", 1).show();
          localObject = (EditText)b.getActivity().findViewById(2131689490);
          if (localObject != null) {
            ((EditText)localObject).setText("");
          }
          b.b.a(b.d);
          b.b();
          return;
        }
      }
    });
    b.b.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */