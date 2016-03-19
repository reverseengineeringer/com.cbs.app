package com.cbs.app.view.fragments.show.videos;

import com.cbs.app.view.MainApplication;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import com.cbs.app.view.utils.VideoUtil.PlayVideoListener;
import com.google.android.libraries.cast.companionlibrary.cast.c;

final class VideoListFragment$7
  implements VideoUtil.PlayVideoListener
{
  VideoListFragment$7(VideoListFragment paramVideoListFragment) {}
  
  public final void a(VideoData paramVideoData, ShowItem paramShowItem, int paramInt, long paramLong)
  {
    if (Util.H(VideoListFragment.o(a))) {}
    for (boolean bool = MainApplication.getVideoCastManager().j();; bool = false)
    {
      if (bool)
      {
        VideoListFragment.e();
        VideoUtil.a(VideoListFragment.p(a), paramVideoData, paramLong, false);
        return;
      }
      VideoListFragment.e();
      VideoListFragment.a(a, paramVideoData, paramInt, paramLong);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */