package com.cbs.app.widget;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.model.Episode;
import com.cbs.app.visualon.player.CBSPlayer;

final class ScheduleGridLayout$4
  implements View.OnClickListener
{
  ScheduleGridLayout$4(ScheduleGridLayout paramScheduleGridLayout, Episode paramEpisode) {}
  
  public final void onClick(View paramView)
  {
    if ((!CBSPlayer.a()) && (!ScheduleGridLayout.f(b)))
    {
      ScheduleGridLayout.a(b, true);
      ScheduleGridLayout.a(b, a);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.widget.ScheduleGridLayout.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */