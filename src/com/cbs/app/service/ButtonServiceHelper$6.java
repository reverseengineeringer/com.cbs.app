package com.cbs.app.service;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.CalendarService;
import com.cbs.app.service.social.CalendarServiceImpl;
import com.cbs.app.view.model.Episode;
import java.util.HashMap;
import java.util.TimeZone;

final class ButtonServiceHelper$6
  implements View.OnClickListener
{
  ButtonServiceHelper$6(Episode paramEpisode, Context paramContext) {}
  
  public final void onClick(View paramView)
  {
    if (a != null)
    {
      paramView = new CalendarServiceImpl();
      paramView.setContext(b);
    }
    for (;;)
    {
      try
      {
        l2 = a.getAirDate_sec() * 1000L;
        long l3 = Long.parseLong(a.getDuration());
        i = TimeZone.getDefault().getRawOffset();
        if (i <= -28800000L) {
          continue;
        }
        l1 = l2 + 3600000L;
        paramView.a(a.getShowTitle(), l1, l3 * 60000L + l1, a.getUrllink());
      }
      catch (NumberFormatException paramView)
      {
        long l2;
        int i;
        long l1;
        HashMap localHashMap;
        String str;
        continue;
      }
      paramView = Action.ay;
      localHashMap = new HashMap();
      localHashMap.put("events", "event19");
      localHashMap.put("appState", "cbscom:" + ButtonServiceHelper.e());
      localHashMap.put("ShowTitle", a.getShowTitle());
      localHashMap.put("showId", a.getShow_id());
      str = "cbscom:" + a.getShow_id() + "|" + a.getShowTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      AnalyticsManager.a(b, paramView, localHashMap);
      return;
      l1 = l2;
      if (i > -32400000L) {
        l1 = l2 + 10800000L;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.service.ButtonServiceHelper.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */