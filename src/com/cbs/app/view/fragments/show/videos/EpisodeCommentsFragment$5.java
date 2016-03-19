package com.cbs.app.view.fragments.show.videos;

import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper.RefreshAccountListener;
import com.cbs.app.view.utils.Util;

final class EpisodeCommentsFragment$5
  implements AccountUIHelper.RefreshAccountListener
{
  EpisodeCommentsFragment$5(EpisodeCommentsFragment paramEpisodeCommentsFragment) {}
  
  public final void a()
  {
    AccountUIHelper.setReconcileDialogShowing(false);
    EpisodeCommentsFragment.e();
    if (Util.y(a.getActivity()) != null)
    {
      EpisodeCommentsFragment.e();
      a.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.EpisodeCommentsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */