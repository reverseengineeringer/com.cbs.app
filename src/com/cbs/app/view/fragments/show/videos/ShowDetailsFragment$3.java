package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.EmailService;
import com.cbs.app.service.social.EmailServiceImpl;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class ShowDetailsFragment$3
  implements View.OnClickListener
{
  ShowDetailsFragment$3(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    paramView = (Show)paramView.getTag();
    if (paramView != null)
    {
      ShowDetailsFragment.b();
      new StringBuilder("show id:").append(paramView.getShowId());
      Object localObject1 = Util.a(paramView, ShowDetailsFragment.b(a));
      Object localObject2 = new EmailServiceImpl();
      ((EmailService)localObject2).setContext(a.getActivity());
      ((EmailService)localObject2).a(paramView.getTitle(), (String)localObject1);
      localObject1 = Action.aE;
      ShowDetailsFragment.b();
      localObject2 = new HashMap();
      ((HashMap)localObject2).put("ShowTitle", paramView.getTitle());
      ((HashMap)localObject2).put("showId", Long.valueOf(paramView.getId()));
      paramView = "cbscom:" + paramView.getId() + "|" + paramView.getTitle();
      ((HashMap)localObject2).put("evar_63", paramView);
      ((HashMap)localObject2).put("prop_63", paramView);
      ((HashMap)localObject2).put("sendEvent10", "anything");
      ((HashMap)localObject2).put("events", "event19, event10");
      AnalyticsManager.a(ShowDetailsFragment.a(a), (Action)localObject1, (HashMap)localObject2);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */