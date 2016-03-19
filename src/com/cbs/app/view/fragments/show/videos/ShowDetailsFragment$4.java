package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.SVODPopupHelper;
import com.cbs.app.view.model.Show;
import java.util.HashMap;

final class ShowDetailsFragment$4
  implements View.OnClickListener
{
  ShowDetailsFragment$4(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    SVODPopupHelper.setWeWantToSeeVideo(null);
    SVODPopupHelper.setWeWantToSeeShow(null);
    SVODPopupHelper.setWeWantToSeelUpsellAfterAuth(true);
    SVODPopupHelper.c(ShowDetailsFragment.a(a));
    paramView = new HashMap();
    String str = "Classics;" + ShowDetailsFragment.c(a).getTitle() + ";;;show button";
    paramView.put("evar_18", str);
    paramView.put("prop_18", str);
    paramView.put("events", "event19");
    AnalyticsManager.a(a.getActivity(), Action.bO, paramView);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */