package com.cbs.app.widget;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.model.Episode;
import java.util.HashMap;

final class ScheduleGridLayout$1$1
  implements View.OnClickListener
{
  ScheduleGridLayout$1$1(ScheduleGridLayout.1 param1, Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    ScheduleGridLayout.a();
    if ((ScheduleGridLayout.b(b.b) != null) && (ScheduleGridLayout.c(b.b) != null)) {
      ScheduleGridLayout.1.a(b, ScheduleGridLayout.b(b.b), a);
    }
    if ((ScheduleGridLayout.c(b.b) != null) && (ScheduleGridLayout.a(b.b) != null) && (ScheduleGridLayout.a(b.b).getShowTitle() != null) && (ScheduleGridLayout.a(b.b).getShow_id() != null))
    {
      paramView = Action.be;
      HashMap localHashMap = new HashMap();
      localHashMap.put("ShowTitle", ScheduleGridLayout.a(b.b).getShowTitle());
      localHashMap.put("showId", ScheduleGridLayout.a(b.b).getShow_id());
      localHashMap.put("optionSelected", "Show home");
      String str = "cbscom:" + ScheduleGridLayout.a(b.b).getShow_id() + "|" + ScheduleGridLayout.a(b.b).getShowTitle();
      localHashMap.put("evar_63", str);
      localHashMap.put("prop_63", str);
      localHashMap.put("events", "event19");
      AnalyticsManager.a(ScheduleGridLayout.c(b.b), paramView, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */