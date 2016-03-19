package com.cbs.app.livetv.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.cbs.app.view.model.Affiliate;
import com.cbs.app.view.model.syncbak.SyncbakChannel;
import com.cbs.app.view.model.syncbak.SyncbakStream;
import com.cbs.app.view.utils.VideoUtil;

final class LiveTvScheduleVideoFragment$2
  implements View.OnClickListener
{
  LiveTvScheduleVideoFragment$2(LiveTvScheduleVideoFragment paramLiveTvScheduleVideoFragment, SyncbakChannel paramSyncbakChannel, SyncbakStream paramSyncbakStream, Affiliate paramAffiliate, Button paramButton) {}
  
  public final void onClick(View paramView)
  {
    VideoUtil.a(e.getActivity(), a, c);
    d.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleVideoFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */