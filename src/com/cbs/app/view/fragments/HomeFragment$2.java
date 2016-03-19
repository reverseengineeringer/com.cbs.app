package com.cbs.app.view.fragments;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.MyCbsEndpointResponse;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

final class HomeFragment$2
  implements ResponseModelListener
{
  HomeFragment$2(HomeFragment paramHomeFragment) {}
  
  public final void a()
  {
    a.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    HomeFragment.f();
    if ((paramResponseModel instanceof MyCbsEndpointResponse))
    {
      paramResponseModel = ((MyCbsEndpointResponse)paramResponseModel).getShowVideoArray();
      if (paramResponseModel != null)
      {
        paramResponseModel = HomeFragment.a(a, paramResponseModel);
        Collections.sort(paramResponseModel, new Comparator() {});
        int i;
        if (paramResponseModel.size() > 24)
        {
          i = paramResponseModel.size() - 1;
          while (i > 23)
          {
            paramResponseModel.remove(i);
            i -= 1;
          }
        }
        if ((HomeFragment.a(a) != null) && (paramResponseModel.size() < 24))
        {
          VideoData[] arrayOfVideoData = HomeFragment.a(a);
          int j = arrayOfVideoData.length;
          i = 0;
          while (i < j)
          {
            VideoData localVideoData = arrayOfVideoData[i];
            if (paramResponseModel.size() >= 24) {
              break;
            }
            if (!paramResponseModel.contains(localVideoData)) {
              paramResponseModel.add(localVideoData);
            }
            i += 1;
          }
        }
        HomeFragment.a(a, (VideoData[])paramResponseModel.toArray(new VideoData[paramResponseModel.size()]));
      }
    }
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.HomeFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */