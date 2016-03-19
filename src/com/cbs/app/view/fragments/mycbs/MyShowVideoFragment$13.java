package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import java.util.ArrayList;

final class MyShowVideoFragment$13
  implements ResponseModelListener
{
  MyShowVideoFragment$13(MyShowVideoFragment paramMyShowVideoFragment) {}
  
  public final void a()
  {
    MyShowVideoFragment.i();
    a.d();
    a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    MyShowVideoFragment.i();
    if ((MyShowVideoFragment.e(a)) && ((paramResponseModel instanceof FavoriteShowsEndpointResponse)))
    {
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      MyShowVideoFragment.a(a, paramResponseModel.getFavshowlist());
      if (MyShowVideoFragment.b(a) != null)
      {
        MyShowVideoFragment.i();
        MyShowVideoFragment.a(a, MyShowVideoFragment.b(a).getId());
        paramResponseModel = MyShowVideoFragment.b(a).getShowList();
        MainApplication localMainApplication = a.getApplicationContext();
        if (localMainApplication != null) {
          ((MainApplication)localMainApplication).setMycbsShows(paramResponseModel);
        }
        if (paramResponseModel == null)
        {
          if (MyShowVideoFragment.k(a) != null) {
            Preferences.a(MyShowVideoFragment.l(a), "mycbs_show_count", -1);
          }
          paramResponseModel = new ArrayList();
          MyShowVideoFragment.b(a).setShowList(paramResponseModel);
        }
        for (;;)
        {
          a.e();
          return;
          if (MyShowVideoFragment.m(a) != null) {
            Preferences.a(MyShowVideoFragment.n(a), "mycbs_show_count", paramResponseModel.size());
          }
        }
      }
      MyShowVideoFragment.i();
      a.d();
      a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
      return;
    }
    MyShowVideoFragment.i();
    a.d();
    a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */