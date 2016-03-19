package com.cbs.app.view.fragments.show.videos;

import android.view.View;
import android.view.View.OnClickListener;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.view.model.Show;
import java.util.HashMap;

final class ShowDetailsFragment$13
  implements View.OnClickListener
{
  ShowDetailsFragment$13(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void onClick(View paramView)
  {
    ShowDetailsFragment.b();
    Object localObject = (Show)paramView.getTag();
    if (localObject != null)
    {
      ShowDetailsFragment.b();
      new StringBuilder("show id:").append(((Show)localObject).getShowId());
      a.a();
      paramView = Action.az;
      ShowDetailsFragment.b();
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event19");
      localHashMap.put("ShowTitle", ((Show)localObject).getTitle());
      localHashMap.put("showId", Long.valueOf(((Show)localObject).getId()));
      localObject = "cbscom:" + ((Show)localObject).getId() + "|" + ((Show)localObject).getTitle();
      localHashMap.put("evar_63", localObject);
      localHashMap.put("prop_63", localObject);
      AnalyticsManager.a(ShowDetailsFragment.a(a), paramView, localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */