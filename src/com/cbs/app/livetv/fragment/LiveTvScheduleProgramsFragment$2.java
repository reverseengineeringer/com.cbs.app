package com.cbs.app.livetv.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.livetv.controllers.SyncbakController;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.widget.ContentFlipper;

final class LiveTvScheduleProgramsFragment$2
  implements View.OnClickListener
{
  LiveTvScheduleProgramsFragment$2(LiveTvScheduleProgramsFragment paramLiveTvScheduleProgramsFragment) {}
  
  public final void onClick(View paramView)
  {
    LiveTvScheduleProgramsFragment.c(a).a(LiveTvScheduleProgramsFragment.b(a).getChannel());
    LiveTvScheduleProgramsFragment.a(a).setDisplayedChild(0);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleProgramsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */