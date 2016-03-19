package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.FavoriteShowsEndpointResponse;

final class MyShowVideoFragment$17
  implements ResponseModelListener
{
  MyShowVideoFragment$17(MyShowVideoFragment paramMyShowVideoFragment) {}
  
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
          a.a();
          return;
        }
        a.d();
        a.b("CBS", "Unable to retrieve favorite list from CBS Server. Please try again later.");
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
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyShowVideoFragment.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */