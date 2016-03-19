package com.cbs.app.view.fragments.show.videos;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

final class VideoDetailsFragment$10
  implements View.OnClickListener
{
  VideoDetailsFragment$10(VideoDetailsFragment paramVideoDetailsFragment, String paramString) {}
  
  public final void onClick(View paramView)
  {
    VideoDetailsFragment.a();
    new StringBuilder("onClick buyEpisodeButton:").append(a);
    if (!a.equals(""))
    {
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(a));
      if (Util.a(VideoDetailsFragment.n(b), paramView)) {
        b.startActivity(paramView);
      }
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("appState", "cbscom:" + Action.j.getAppState());
    String str;
    if (VideoDetailsFragment.a(b).getFullEpisode())
    {
      paramView = Action.aS;
      localHashMap.put("EpisodeTitle", VideoUtil.b(VideoDetailsFragment.a(b)));
      str = "cbscom:" + VideoDetailsFragment.a(b).getCid() + "|" + VideoUtil.b(VideoDetailsFragment.a(b));
      localHashMap.put("evar_64", str);
      localHashMap.put("prop_64", str);
    }
    for (;;)
    {
      VideoDetailsFragment.a();
      localHashMap.put("ShowTitle", VideoDetailsFragment.f(b).getTitle());
      localHashMap.put("showId", Long.valueOf(VideoDetailsFragment.f(b).getId()));
      localHashMap.put("VideoID", VideoDetailsFragment.a(b).getPid());
      localHashMap.put("ContentID", VideoDetailsFragment.a(b).getCid());
      str = "cbscom:" + VideoDetailsFragment.f(b).getId() + "|" + VideoDetailsFragment.f(b).getTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      str = "cbscom:" + VideoDetailsFragment.a(b).getPid();
      localHashMap.put("evar_31", str);
      localHashMap.put("prop_31", str);
      localHashMap.put("events", "event19");
      AnalyticsManager.a(VideoDetailsFragment.o(b), paramView, localHashMap);
      return;
      paramView = Action.aS;
      localHashMap.put("ClipTitle", VideoUtil.b(VideoDetailsFragment.a(b)));
      str = "cbscom:" + VideoDetailsFragment.a(b).getCid() + "|" + VideoUtil.b(VideoDetailsFragment.a(b));
      localHashMap.put("evar_62", str);
      localHashMap.put("prop_62", str);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */