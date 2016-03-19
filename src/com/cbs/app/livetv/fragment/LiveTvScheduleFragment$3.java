package com.cbs.app.livetv.fragment;

import android.view.View;
import android.view.View.OnLayoutChangeListener;
import com.cbs.app.visualon.player.CBSPlayer;

final class LiveTvScheduleFragment$3
  implements View.OnLayoutChangeListener
{
  LiveTvScheduleFragment$3(LiveTvScheduleFragment paramLiveTvScheduleFragment, View paramView) {}
  
  public final void onLayoutChange(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8)
  {
    if ((paramInt3 != paramInt7) || (paramInt4 != paramInt8))
    {
      b.getView().removeOnLayoutChangeListener(this);
      LiveTvScheduleFragment.a(b, LiveTvScheduleFragment.a(a.getWidth(), a.getHeight()));
      CBSPlayer.a(LiveTvScheduleFragment.a(b));
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */