package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import com.cbs.app.visualon.player.FullScreenButtonListener;
import com.cbs.app.visualon.player.PlayerRect;

final class LiveTvScheduleFragment$1$1
  implements FullScreenButtonListener
{
  LiveTvScheduleFragment$1$1(LiveTvScheduleFragment.1 param1, int paramInt1, int paramInt2) {}
  
  public final PlayerRect a(int paramInt)
  {
    if (LiveTvScheduleFragment.a(c.d) == null) {
      return LiveTvScheduleFragment.a(a, b);
    }
    return LiveTvScheduleFragment.a(c.d);
  }
  
  public final void a()
  {
    c.b.setVisibility(8);
    c.c.setVisibility(8);
    LiveTvScheduleFragment.a(c.d, false);
    LiveTvScheduleFragment.a(c.d, c.a);
  }
  
  public final void b()
  {
    LiveTvScheduleFragment.a(c.d, true);
    LiveTvScheduleFragment.a(c.d, c.d.getResources().getConfiguration().orientation);
    LiveTvScheduleFragment.a(c.d, c.a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleFragment.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */