package com.cbs.app.view.fragments.mycbs;

import android.view.View;
import android.widget.ImageView;
import com.cbs.app.adapter.mycbs.MyShowAdapter.MyShowViewHolder;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.fragments.show.model.ShowItem;
import com.cbs.app.view.model.FavoriteShow;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.ShowAddedEndpointResponse;
import java.util.ArrayList;
import java.util.HashMap;

final class MyShowVideoFragment$11
  implements ResponseModelListener
{
  MyShowVideoFragment$11(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    MyShowVideoFragment.i();
    a.d();
    a.a("CBS", "Unable to remove this show at this time, please try again later.");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    MyShowVideoFragment.i();
    if ((MyShowVideoFragment.e(a)) && ((paramResponseModel instanceof ShowAddedEndpointResponse)))
    {
      if ((MyShowVideoFragment.f(a) != null) && (MyShowVideoFragment.g(a) != null))
      {
        MyShowVideoFragment.i();
        paramResponseModel = (MyShowAdapter.MyShowViewHolder)MyShowVideoFragment.f(a).getTag();
        Object localObject1 = MyShowVideoFragment.b(a).getShowList();
        Object localObject2 = new FavoriteShow();
        ((FavoriteShow)localObject2).setCbsShowId(ga).showId);
        if (localObject1 != null)
        {
          MyShowVideoFragment.i();
          new StringBuilder("before size: ").append(((ArrayList)localObject1).size());
          ((ArrayList)localObject1).remove(localObject2);
          MyShowVideoFragment.i();
          new StringBuilder("after size: ").append(((ArrayList)localObject1).size());
        }
        MyShowVideoFragment.h(a);
        a.f();
        c.setVisibility(0);
        c.setImageResource(2130837993);
        paramResponseModel = Action.a;
        paramResponseModel.setName("MyCBSRemove");
        MyShowVideoFragment.i();
        localObject1 = new HashMap();
        ((HashMap)localObject1).put("appState", "cbscom:My CBS");
        ((HashMap)localObject1).put("events", "event84");
        ((HashMap)localObject1).put("from", "My CBS");
        ((HashMap)localObject1).put("ShowTitle", ga).title);
        ((HashMap)localObject1).put("showId", Long.valueOf(ga).showId));
        localObject2 = "cbscom:" + ga).showId + "|" + ga).title;
        ((HashMap)localObject1).put("evar_63", localObject2);
        ((HashMap)localObject1).put("prop_63", localObject2);
        AnalyticsManager.a(MyShowVideoFragment.i(a), paramResponseModel, (HashMap)localObject1);
      }
      a.d();
      return;
    }
    MyShowVideoFragment.i();
    a.d();
    a.a("CBS", "Unable to remove this show at this time, please try again later.");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */