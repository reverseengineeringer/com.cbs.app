package com.cbs.app.view;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.CalendarService;
import com.cbs.app.service.social.CalendarServiceImpl;
import com.cbs.app.view.model.Episode;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;
import java.util.HashMap;
import java.util.List;

final class VideoSocialDialog$5
  implements View.OnClickListener
{
  VideoSocialDialog$5(Context paramContext, Show paramShow, String paramString, VideoData paramVideoData) {}
  
  public final void onClick(View paramView)
  {
    Object localObject2 = (Activity)a;
    Object localObject1 = null;
    paramView = (View)localObject1;
    if (localObject2 != null)
    {
      paramView = (View)localObject1;
      if ((localObject2 instanceof NavigationActivity)) {
        paramView = ((NavigationActivity)localObject2).a(b.getId());
      }
    }
    if ((paramView != null) && (paramView.size() > 0))
    {
      paramView = (Episode)paramView.get(0);
      if (paramView != null)
      {
        localObject1 = new CalendarServiceImpl();
        ((CalendarService)localObject1).setContext((Context)localObject2);
      }
    }
    try
    {
      localObject2 = c;
      long l1 = paramView.getAirDate_sec();
      long l2 = paramView.getAirDate_sec();
      ((CalendarService)localObject1).a((String)localObject2, l1 * 1000L, Long.parseLong(paramView.getDuration()) * 60000L + l2 * 1000L);
      paramView = Action.ay;
      localObject1 = new HashMap();
      if (d.getFullEpisode())
      {
        localObject2 = "cbscom:" + d.getCid() + "|" + VideoUtil.b(d);
        ((HashMap)localObject1).put("evar_64", localObject2);
        ((HashMap)localObject1).put("prop_64", localObject2);
        ((HashMap)localObject1).put("ShowTitle", b.getTitle());
        ((HashMap)localObject1).put("showId", Long.valueOf(b.getId()));
        ((HashMap)localObject1).put("EpisodeTitle", VideoUtil.b(d));
        if (d.getPid() != null) {
          ((HashMap)localObject1).put("VideoID", d.getPid());
        }
        ((HashMap)localObject1).put("ContentID", d.getCid());
        localObject2 = "cbscom:" + b.getId() + "|" + b.getTitle();
        ((HashMap)localObject1).put("evar_63", localObject2);
        ((HashMap)localObject1).put("prop_63", localObject2);
        ((HashMap)localObject1).put("events", "event19");
        ((HashMap)localObject1).put("appState", "cbscom:Comments Page");
        AnalyticsManager.a(a, paramView, (HashMap)localObject1);
        return;
      }
    }
    catch (NumberFormatException paramView)
    {
      for (;;)
      {
        Log.e(VideoSocialDialog.a(), "nfe:" + paramView.getLocalizedMessage());
        continue;
        localObject2 = "cbscom:" + d.getCid() + "|" + VideoUtil.b(d);
        ((HashMap)localObject1).put("evar_62", localObject2);
        ((HashMap)localObject1).put("prop_62", localObject2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.VideoSocialDialog.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */