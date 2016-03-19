package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.support.v4.app.FragmentActivity;
import com.cbs.app.service.LiveFyreService.ServiceChangListener;

final class EpisodeCommentsFragment$4
  implements LiveFyreService.ServiceChangListener
{
  EpisodeCommentsFragment$4(EpisodeCommentsFragment paramEpisodeCommentsFragment) {}
  
  public final void a()
  {
    EpisodeCommentsFragment.e();
    FragmentActivity localFragmentActivity = a.getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          a.c();
        }
      });
    }
  }
  
  public final void b()
  {
    FragmentActivity localFragmentActivity = a.getActivity();
    if (localFragmentActivity != null) {
      localFragmentActivity.runOnUiThread(new Runnable()
      {
        public final void run()
        {
          a.d();
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */