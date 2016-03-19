package com.cbs.app.view.fragments;

import android.support.v4.app.FragmentActivity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.MainApplication;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import com.cbs.app.view.utils.VideoUtil;
import java.util.List;

final class HomeFragment$1
  implements ResponseModelListener
{
  HomeFragment$1(HomeFragment paramHomeFragment) {}
  
  public final void a()
  {
    a.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    HomeFragment.f();
    int i;
    if ((paramResponseModel instanceof VideoEndpointResponse))
    {
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        HomeFragment.f();
        new StringBuilder("video list size: ").append(paramResponseModel.size());
        HomeFragment.a(a, (VideoData[])paramResponseModel.toArray(new VideoData[paramResponseModel.size()]));
        HomeFragment.a(a, VideoUtil.a(HomeFragment.a(a)));
      }
      HomeFragment.f();
      paramResponseModel = new StringBuilder("video list size2: ");
      if (HomeFragment.a(a) == null)
      {
        i = 0;
        paramResponseModel.append(i);
        HomeFragment.g();
        paramResponseModel = a.getApplicationContext();
        if (paramResponseModel == null) {
          break label224;
        }
      }
    }
    label224:
    for (paramResponseModel = ((MainApplication)paramResponseModel).getMycbsShows();; paramResponseModel = null)
    {
      FragmentActivity localFragmentActivity = a.getActivity();
      if ((localFragmentActivity != null) && (Util.y(localFragmentActivity) != null) && (paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        a.a(paramResponseModel);
        return;
        i = HomeFragment.a(a).length;
        break;
      }
      a.a();
      return;
      a.a();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */