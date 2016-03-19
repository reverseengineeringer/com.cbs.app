package com.cbs.app.view.fragments.show.videos;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

final class VideoListFragment$2
  implements ResponseModelListener
{
  VideoListFragment$2(VideoListFragment paramVideoListFragment) {}
  
  public final void a()
  {
    a.d();
    a.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    VideoListFragment.e();
    if (a.getActivity() == null) {
      return;
    }
    if ((paramResponseModel instanceof VideoEndpointResponse))
    {
      Object localObject = VideoListFragment.e(a).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject != null) && ((VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos") != null))
      {
        localObject = ((VideoEndpointResponse)paramResponseModel).getItemList();
        if (localObject != null)
        {
          Collections.sort((List)localObject);
          Collections.reverse((List)localObject);
        }
        if ((VideoListFragment.f()) && (localObject != null) && (((ArrayList)localObject).size() >= 2))
        {
          VideoListFragment.e();
          Collections.reverse((List)localObject);
        }
        if ((localObject != null) && (!VideoListFragment.f()) && (VideoListFragment.f(a) > 0) && (VideoListFragment.f(a) < VideoListFragment.g(a).size() - 1)) {
          Collections.reverse((List)localObject);
        }
        if ((localObject != null) && (((ArrayList)localObject).size() > 0))
        {
          paramResponseModel = new VideoData[((ArrayList)localObject).size()];
          localObject = ((ArrayList)localObject).iterator();
          int i = 0;
          while (((Iterator)localObject).hasNext())
          {
            paramResponseModel[i] = ((VideoData)((Iterator)localObject).next());
            i += 1;
          }
          if ((VideoListFragment.d(a) == null) || (VideoListFragment.d(a).length <= 0) || (VideoListFragment.h(a) <= 1)) {
            break label359;
          }
          VideoListFragment.a(a, VideoListFragment.a(VideoListFragment.d(a), paramResponseModel));
        }
      }
    }
    for (;;)
    {
      if (((VideoListFragment.d(a) == null) || (VideoListFragment.d(a).length == 0)) && (VideoListFragment.g(a).size() > 1) && (((Integer)VideoListFragment.g(a).get(VideoListFragment.f(a))).intValue() == 2222))
      {
        VideoListFragment.g(a).remove(VideoListFragment.f(a));
        a.setSeasonSelection(0);
      }
      a.d();
      a.a();
      return;
      label359:
      VideoListFragment.a(a, paramResponseModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */