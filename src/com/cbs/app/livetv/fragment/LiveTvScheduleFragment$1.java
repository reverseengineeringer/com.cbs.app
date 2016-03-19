package com.cbs.app.livetv.fragment;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.cbs.app.visualon.player.CBSPlayer;
import com.cbs.app.visualon.player.FullScreenButtonListener;
import com.cbs.app.visualon.player.PlayerRect;

final class LiveTvScheduleFragment$1
  implements ViewTreeObserver.OnPreDrawListener
{
  LiveTvScheduleFragment$1(LiveTvScheduleFragment paramLiveTvScheduleFragment, View paramView1, View paramView2, View paramView3) {}
  
  public final boolean onPreDraw()
  {
    final int i = a.getWidth();
    final int j = a.getHeight();
    if ((i > 0) && (j > 0))
    {
      d.getView().getViewTreeObserver().removeOnPreDrawListener(this);
      LiveTvScheduleFragment.a(d, new FullScreenButtonListener()
      {
        public final PlayerRect a(int paramAnonymousInt)
        {
          if (LiveTvScheduleFragment.a(d) == null) {
            return LiveTvScheduleFragment.a(i, j);
          }
          return LiveTvScheduleFragment.a(d);
        }
        
        public final void a()
        {
          b.setVisibility(8);
          c.setVisibility(8);
          LiveTvScheduleFragment.a(d, false);
          LiveTvScheduleFragment.a(d, a);
        }
        
        public final void b()
        {
          LiveTvScheduleFragment.a(d, true);
          LiveTvScheduleFragment.a(d, d.getResources().getConfiguration().orientation);
          LiveTvScheduleFragment.a(d, a);
        }
      });
      CBSPlayer.a(LiveTvScheduleFragment.b(d));
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvScheduleFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */