package com.cbs.app.view.fragments.show.videos;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.service.social.FacebookService;
import com.cbs.app.service.social.FacebookServiceImplV2;
import com.cbs.app.view.model.Show;
import com.cbs.app.view.model.ShowConfig;
import com.cbs.app.view.utils.Util;
import java.util.HashMap;

final class ShowDetailsFragment$14
  implements View.OnClickListener
{
  ShowDetailsFragment$14(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    paramView = (Show)paramView.getTag();
    if (paramView != null)
    {
      ShowDetailsFragment.b();
      new StringBuilder("show id:").append(paramView.getShowId());
      Object localObject = ShowDetailsFragment.b(a).getFacebookLink();
      if (localObject == null)
      {
        Util.a(paramView, ShowDetailsFragment.b(a));
        new FacebookServiceImplV2(ShowDetailsFragment.a(a)).a(paramView);
      }
      if (localObject != null)
      {
        localObject = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
        if (Util.a(a.getActivity(), (Intent)localObject)) {
          ShowDetailsFragment.a(a).startActivity((Intent)localObject);
        }
      }
      localObject = Action.aD;
      ShowDetailsFragment.b();
      HashMap localHashMap = new HashMap();
      localHashMap.put("ShowTitle", paramView.getTitle());
      localHashMap.put("showId", Long.valueOf(paramView.getId()));
      paramView = "cbscom:" + paramView.getId() + "|" + paramView.getTitle();
      localHashMap.put("evar_63", paramView);
      localHashMap.put("prop_63", paramView);
      localHashMap.put("events", "event19, event10");
      AnalyticsManager.a(ShowDetailsFragment.a(a), (Action)localObject, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */