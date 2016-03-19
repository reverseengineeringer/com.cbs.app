package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import org.json.JSONException;
import org.json.JSONObject;

final class EpisodeCommentsAdapter2$2
  implements View.OnClickListener
{
  EpisodeCommentsAdapter2$2(EpisodeCommentsAdapter2 paramEpisodeCommentsAdapter2) {}
  
  public final void onClick(View paramView)
  {
    paramView = (JSONObject)paramView.getTag();
    try
    {
      EpisodeCommentsAdapter2.a();
      new StringBuilder("reply: ").append(paramView.getString("id"));
      if (EpisodeCommentsAdapter2.a(a) != null) {
        EpisodeCommentsAdapter2.a(a).a(paramView);
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsAdapter2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */