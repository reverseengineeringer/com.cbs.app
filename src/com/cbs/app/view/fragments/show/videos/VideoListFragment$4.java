package com.cbs.app.view.fragments.show.videos;

import android.os.Handler;
import android.widget.PopupWindow.OnDismissListener;

final class VideoListFragment$4
  implements PopupWindow.OnDismissListener
{
  VideoListFragment$4(VideoListFragment paramVideoListFragment) {}
  
  public final void onDismiss()
  {
    new Handler().postDelayed(new Runnable()
    {
      public final void run()
      {
        VideoListFragment.a(a, false);
      }
    }, 120L);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */