package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.service.MyCBSService;
import com.cbs.app.view.model.FavoriteShowList;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import java.util.List;

final class MyShowVideoFragment$2
  implements ResponseModelListener
{
  MyShowVideoFragment$2(MyShowVideoFragment paramMyShowVideoFragment) {}
  
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
      MyShowVideoFragment.i();
      paramResponseModel = (FavoriteShowsEndpointResponse)paramResponseModel;
      if (paramResponseModel.isSuccess())
      {
        MyShowVideoFragment.a(a, paramResponseModel.getFavshowlist());
        if (MyShowVideoFragment.b(a) != null)
        {
          paramResponseModel = MyShowVideoFragment.b(a).getShowList();
          if (MyShowVideoFragment.D(a) != null)
          {
            if (paramResponseModel != null) {
              Preferences.a(MyShowVideoFragment.E(a), "mycbs_show_count", paramResponseModel.size());
            }
          }
          else
          {
            MyShowVideoFragment.a(a, MyShowVideoFragment.b(a).getId());
            a.a();
          }
        }
        do
        {
          return;
          Preferences.a(MyShowVideoFragment.F(a), "mycbs_show_count", -1);
          break;
          paramResponseModel = MyShowVideoFragment.G(a);
        } while (paramResponseModel == null);
        Preferences.a(paramResponseModel, "mycbs_show_count", -1);
        new MyCBSService().a(paramResponseModel, "favorite-shows", a.n);
        return;
      }
      a.d();
      a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
      return;
    }
    a.d();
    a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */