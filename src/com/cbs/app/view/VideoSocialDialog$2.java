package com.cbs.app.view;

import android.content.Context;
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

final class VideoSocialDialog$2
  implements View.OnClickListener
{
  VideoSocialDialog$2(Context paramContext, VideoData paramVideoData, Show paramShow) {}
  
  public final void onClick(View paramView)
  {
    new FacebookServiceImplV2(a).a(b);
    HashMap localHashMap = new HashMap();
    String str;
    if (b.getFullEpisode())
    {
      paramView = Action.aQ;
      localHashMap.put("EpisodeTitle", VideoUtil.b(b));
      str = "cbscom:" + b.getCid() + "|" + VideoUtil.b(b);
      localHashMap.put("evar_64", str);
      localHashMap.put("prop_64", str);
    }
    for (;;)
    {
      localHashMap.put("appState", "cbscom:Comments Page");
      localHashMap.put("ShowTitle", c.getTitle());
      localHashMap.put("showId", Long.valueOf(c.getId()));
      localHashMap.put("EpisodeTitle", VideoUtil.b(b));
      if (b.getPid() != null) {
        localHashMap.put("VideoID", b.getPid());
      }
      localHashMap.put("ContentID", b.getCid());
      str = "cbscom:" + c.getId() + "|" + c.getTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      if (b.getPid() != null)
      {
        str = "cbscom:" + b.getPid();
        localHashMap.put("evar_31", str);
        localHashMap.put("prop_31", str);
      }
      localHashMap.put("events", "event19, event10");
      AnalyticsManager.a(a, paramView, localHashMap);
      return;
      paramView = Action.aN;
      localHashMap.put("ClipTitle", VideoUtil.b(b));
      str = "cbscom:" + b.getCid() + "|" + VideoUtil.b(b);
      localHashMap.put("evar_62", str);
      localHashMap.put("prop_62", str);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */