package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.Twitter;
import com.cbs.app.service.social.model.TweetOperation;
import com.cbs.app.view.ShowSocialDialog;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class ShowDetailsFragment$2
  implements View.OnClickListener
{
  ShowDetailsFragment$2(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    paramView = (Show)paramView.getTag();
    Object localObject;
    if (paramView != null)
    {
      ShowDetailsFragment.b();
      new StringBuilder("show id:").append(paramView.getShowId());
      localObject = ShowDetailsFragment.b(a).getTwitterLink();
      if (localObject != null) {
        break label213;
      }
      localObject = Util.a(paramView, ShowDetailsFragment.b(a));
      ShowDetailsFragment.b();
      new Twitter(ShowDetailsFragment.a(a)).a(new TweetOperation((String)localObject));
    }
    for (;;)
    {
      localObject = Action.aC;
      ShowDetailsFragment.b();
      HashMap localHashMap = new HashMap();
      localHashMap.put("ShowTitle", paramView.getTitle());
      localHashMap.put("showId", Long.valueOf(paramView.getId()));
      paramView = "cbscom:" + paramView.getId() + "|" + paramView.getTitle();
      localHashMap.put("evar_63", paramView);
      localHashMap.put("prop_63", paramView);
      localHashMap.put("sendEvent10", "anything");
      localHashMap.put("events", "event19, event10");
      AnalyticsManager.a(ShowDetailsFragment.a(a), (Action)localObject, localHashMap);
      return;
      label213:
      localObject = ShowSocialDialog.a((String)localObject);
      new Twitter(ShowDetailsFragment.a(a)).b((String)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */