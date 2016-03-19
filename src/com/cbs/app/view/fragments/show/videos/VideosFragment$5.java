package com.cbs.app.view.fragments.show.videos;

import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.VideoUtil.PlayVideoListener;
import com.cbs.app.visualon.player.CBSPlayer;
import com.google.android.libraries.cast.companionlibrary.cast.c;
import java.util.HashMap;

final class VideosFragment$5
  implements VideoUtil.PlayVideoListener
{
  VideosFragment$5(VideosFragment paramVideosFragment) {}
  
  public final void a(VideoData paramVideoData, ShowItem paramShowItem, int paramInt, long paramLong)
  {
    boolean bool = false;
    if (Util.H(VideosFragment.J(a))) {
      bool = c.B().j();
    }
    if (bool)
    {
      VideoUtil.a(VideosFragment.K(a), paramVideoData, CBSPlayer.getPosition(), true);
      paramShowItem = Action.bY;
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event91");
      localHashMap.put("appState", paramShowItem.getAppState());
      localHashMap.put("ChromecastVideoTitle", VideoUtil.b(paramVideoData));
      AnalyticsManager.a(a.getActivity(), paramShowItem, localHashMap);
      VideosFragment.j();
      return;
    }
    if (Util.e(VideosFragment.L(a)))
    {
      a.g();
      a.b(paramVideoData, paramInt, paramLong);
      return;
    }
    VideosFragment.a(a, paramVideoData);
    VideosFragment.a(a, paramInt);
    VideosFragment.a(a, paramLong);
    a.i();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideosFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */