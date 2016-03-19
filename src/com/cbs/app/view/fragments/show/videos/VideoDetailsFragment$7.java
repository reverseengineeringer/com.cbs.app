package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

final class VideoDetailsFragment$7
  implements View.OnClickListener
{
  VideoDetailsFragment$7(VideoDetailsFragment paramVideoDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    VideoDetailsFragment.a();
    Object localObject = (VideoData)paramView.getTag();
    HashMap localHashMap;
    String str;
    if (VideoDetailsFragment.f(a) != null)
    {
      VideoDetailsFragment.a();
      new StringBuilder("video id:").append(((VideoData)localObject).getPid());
      new FacebookServiceImplV2(VideoDetailsFragment.h(a)).a(VideoDetailsFragment.a(a));
      localHashMap = new HashMap();
      localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
      if (!((VideoData)localObject).getFullEpisode()) {
        break label373;
      }
      paramView = Action.aQ;
      localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
      str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
      localHashMap.put("evar_64", str);
      localHashMap.put("prop_64", str);
    }
    for (;;)
    {
      localHashMap.put("events", "event19,event10");
      VideoDetailsFragment.a();
      localHashMap.put("ShowTitle", VideoDetailsFragment.f(a).getTitle());
      localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(a).getId()));
      localHashMap.put("EpisodeTitle", VideoUtil.b((VideoData)localObject));
      localHashMap.put("VideoID", ((VideoData)localObject).getPid());
      localHashMap.put("ContentID", ((VideoData)localObject).getCid());
      str = "cbscom:" + VideoDetailsFragment.f(a).getId() + "|" + VideoDetailsFragment.f(a).getTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      localObject = "cbscom:" + ((VideoData)localObject).getPid();
      localHashMap.put("evar_31", localObject);
      localHashMap.put("prop_31", localObject);
      AnalyticsManager.a(VideoDetailsFragment.i(a), paramView, localHashMap);
      return;
      label373:
      paramView = Action.aN;
      localHashMap.put("ClipTitle", VideoUtil.b((VideoData)localObject));
      str = "cbscom:" + ((VideoData)localObject).getCid() + "|" + VideoUtil.b((VideoData)localObject);
      localHashMap.put("evar_62", str);
      localHashMap.put("prop_62", str);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */