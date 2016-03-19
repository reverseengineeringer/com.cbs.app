package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.utils.Util;

final class ShowDetailsFragment$10
  implements View.OnClickListener
{
  ShowDetailsFragment$10(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    if (Util.G(a.getActivity()))
    {
      SVODPopupHelper.a(a.getActivity());
      return;
    }
    SVODPopupHelper.setWeWantToSeeVideo(null);
    SVODPopupHelper.setWeWantToSeeShow(null);
    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
    SVODPopupHelper.c(a.getActivity());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */