package com.cbs.app.livetv.fragment;

import com.cbs.app.livetv.callbacks.SyncbakCallback;
import com.cbs.app.livetv.model.LiveTvChannel;
import com.cbs.app.livetv.widget.ContentFlipper;

final class LiveTvScheduleFragment$2
  extends SyncbakCallback
{
  LiveTvScheduleFragment$2(LiveTvScheduleFragment paramLiveTvScheduleFragment, boolean paramBoolean) {}
  
  public final void a(int paramInt, String paramString)
  {
    if ((!b.isAdded()) || (a)) {
      return;
    }
    LiveTvScheduleFragment.d(b).setDisplayedChild(2);
  }
  
  public final void a(LiveTvChannel paramLiveTvChannel)
  {
    if (!b.isAdded()) {
      return;
    }
    LiveTvScheduleFragment.a(b, paramLiveTvChannel);
    LiveTvScheduleFragment.b(b, LiveTvScheduleFragment.c(b));
    LiveTvScheduleFragment.d(b).setDisplayedChild(1);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */