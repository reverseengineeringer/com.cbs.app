package com.cbs.app.view;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;

final class VideoSocialDialog$4
  implements View.OnClickListener
{
  VideoSocialDialog$4(Context paramContext, Show paramShow, ShowConfig paramShowConfig, String paramString, VideoData paramVideoData) {}
  
  public final void onClick(View paramView)
  {
    paramView = new EmailServiceImpl();
    paramView.setContext(a);
    Object localObject = Util.a(b, c);
    paramView.a(d, (String)localObject);
    localObject = new HashMap();
    String str;
    if (e.getFullEpisode())
    {
      paramView = Action.aR;
      ((HashMap)localObject).put("EpisodeTitle", VideoUtil.b(e));
      str = "cbscom:" + e.getCid() + "|" + VideoUtil.b(e);
      ((HashMap)localObject).put("evar_64", str);
      ((HashMap)localObject).put("prop_64", str);
    }
    for (;;)
    {
      ((HashMap)localObject).put("appState", "cbscom:Comments Page");
      ((HashMap)localObject).put("ShowTitle", b.getTitle());
      ((HashMap)localObject).put("showId", Long.valueOf(b.getId()));
      if (e.getPid() != null) {
        ((HashMap)localObject).put("VideoID", e.getPid());
      }
      ((HashMap)localObject).put("ContentID", e.getCid());
      str = "cbscom:" + b.getId() + "|" + b.getTitle();
      ((HashMap)localObject).put("evar_63", str);
      ((HashMap)localObject).put("prop_63", str);
      if (e.getPid() != null)
      {
        str = "cbscom:" + e.getPid();
        ((HashMap)localObject).put("evar_31", str);
        ((HashMap)localObject).put("prop_31", str);
      }
      ((HashMap)localObject).put("events", "event19, event10");
      AnalyticsManager.a(a, paramView, (HashMap)localObject);
      return;
      paramView = Action.aO;
      ((HashMap)localObject).put("ClipTitle", VideoUtil.b(e));
      str = "cbscom:" + e.getCid() + "|" + VideoUtil.b(e);
      ((HashMap)localObject).put("evar_62", str);
      ((HashMap)localObject).put("prop_62", str);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */