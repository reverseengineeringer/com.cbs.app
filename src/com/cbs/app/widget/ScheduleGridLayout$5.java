package com.cbs.app.widget;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.model.Episode;
import java.util.HashMap;

final class ScheduleGridLayout$5
  implements View.OnClickListener
{
  ScheduleGridLayout$5(ScheduleGridLayout paramScheduleGridLayout, Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    b.f = "Close";
    if (a != null) {
      a.dismiss();
    }
    if ((ScheduleGridLayout.a(b) != null) && (ScheduleGridLayout.c(b) != null))
    {
      paramView = Action.be;
      HashMap localHashMap = new HashMap();
      localHashMap.put("ShowTitle", ScheduleGridLayout.a(b).getShowTitle());
      localHashMap.put("showId", ScheduleGridLayout.a(b).getShow_id());
      localHashMap.put("optionSelected", b.f);
      String str = "cbscom:" + ScheduleGridLayout.a(b).getShow_id() + "|" + ScheduleGridLayout.a(b).getShowTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      localHashMap.put("events", "event19");
      AnalyticsManager.a(ScheduleGridLayout.c(b), paramView, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */