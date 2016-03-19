package com.cbs.app.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

final class VideoSocialDialog$3
  implements View.OnClickListener
{
  VideoSocialDialog$3(Context paramContext, Show paramShow, VideoData paramVideoData) {}
  
  public final void onClick(View paramView)
  {
    new Twitter(a).a(new TweetOperation("Check out " + b.getTitle() + " \"" + VideoUtil.b(c) + "\" at " + c.getUrl()));
    HashMap localHashMap = new HashMap();
    String str;
    if (c.getFullEpisode())
    {
      paramView = Action.aP;
      localHashMap.put("EpisodeTitle", VideoUtil.b(c));
      str = "cbscom:" + c.getCid() + "|" + VideoUtil.b(c);
      localHashMap.put("evar_64", str);
      localHashMap.put("prop_64", str);
    }
    for (;;)
    {
      localHashMap.put("appState", "cbscom:Comments Page");
      localHashMap.put("ShowTitle", b.getTitle());
      localHashMap.put("showId", Long.valueOf(b.getId()));
      localHashMap.put("EpisodeTitle", VideoUtil.b(c));
      if (c.getPid() != null) {
        localHashMap.put("VideoID", c.getPid());
      }
      localHashMap.put("ContentID", c.getCid());
      str = "cbscom:" + b.getId() + "|" + b.getTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      if (c.getPid() != null)
      {
        str = "cbscom:" + c.getPid();
        localHashMap.put("evar_31", str);
        localHashMap.put("prop_31", str);
      }
      localHashMap.put("events", "event19, event10");
      AnalyticsManager.a(a, paramView, localHashMap);
      return;
      paramView = Action.aM;
      localHashMap.put("ClipTitle", VideoUtil.b(c));
      str = "cbscom:" + c.getCid() + "|" + VideoUtil.b(c);
      localHashMap.put("evar_62", str);
      localHashMap.put("prop_62", str);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */