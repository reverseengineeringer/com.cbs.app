package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.fragments.show.ShowServiceManager;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.utils.VideoUtil;

final class VideoDetailsFragment$3
  implements View.OnClickListener
{
  VideoDetailsFragment$3(VideoDetailsFragment paramVideoDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    VideoDetailsFragment.a();
    paramView = ShowServiceManager.a(VideoDetailsFragment.a(a).getCbsShowId());
    VideoUtil.a(VideoDetailsFragment.b(a), VideoDetailsFragment.a(a), paramView);
    VideoDetailsFragment.a(a, VideoDetailsFragment.a(a));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */