package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;

final class ShowDetailsFragment$5
  implements View.OnClickListener
{
  ShowDetailsFragment$5(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    SVODPopupHelper.setWeWantToSeeVideo(null);
    SVODPopupHelper.setWeWantToSeeShow(null);
    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
    AccountUIHelper.setFrom("");
    AccountUIHelper.b(ShowDetailsFragment.a(a), "CBS ALL ACCESS Sign In");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */