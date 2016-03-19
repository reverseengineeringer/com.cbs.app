package com.cbs.app.widget;

import android.app.Dialog;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;

final class ScheduleGridLayout$7
  implements View.OnClickListener
{
  ScheduleGridLayout$7(ScheduleGridLayout paramScheduleGridLayout, VideoData paramVideoData, Dialog paramDialog) {}
  
  public final void onClick(View paramView)
  {
    ScheduleGridLayout.a();
    new StringBuilder("video link : ").append(a.getUrl());
    if (ScheduleGridLayout.b(c) != null)
    {
      paramView = ShowServiceManager.a(ScheduleGridLayout.b(c).getId());
      if (paramView != null)
      {
        ScheduleGridLayout.a();
        new StringBuilder("currentNavShow: ").append(showId);
        VideoUtil.a(ScheduleGridLayout.c(c), a, paramView);
        c.a(a);
        b.dismiss();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */