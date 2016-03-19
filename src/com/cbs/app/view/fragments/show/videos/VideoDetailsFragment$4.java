package com.cbs.app.view.fragments.show.videos;

import android.os.Build.VERSION;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import com.cbs.app.visualon.player.CBSPlayer;

final class VideoDetailsFragment$4
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  VideoDetailsFragment$4(VideoDetailsFragment paramVideoDetailsFragment) {}
  
  public final void onGlobalLayout()
  {
    ViewTreeObserver localViewTreeObserver = VideoDetailsFragment.c(a).getViewTreeObserver();
    if (Build.VERSION.SDK_INT < 16) {
      localViewTreeObserver.removeGlobalOnLayoutListener(this);
    }
    for (;;)
    {
      CBSPlayer.a(true);
      return;
      localViewTreeObserver.removeOnGlobalLayoutListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoDetailsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */