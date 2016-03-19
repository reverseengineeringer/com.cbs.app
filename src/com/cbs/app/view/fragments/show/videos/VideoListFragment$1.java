package com.cbs.app.view.fragments.show.videos;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v7.app.AppCompatActivity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import java.util.ArrayList;
import java.util.Iterator;

final class VideoListFragment$1
  implements ResponseModelListener
{
  VideoListFragment$1(VideoListFragment paramVideoListFragment) {}
  
  public final void a()
  {
    a.d();
    a.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    VideoListFragment.e();
    if (VideoListFragment.a(a) == null) {
      VideoListFragment.a(a, (AppCompatActivity)a.getActivity());
    }
    if (((paramResponseModel instanceof VideoEndpointResponse)) && (VideoListFragment.b(a) != null))
    {
      Object localObject = VideoListFragment.c(a).getSupportFragmentManager().findFragmentByTag("fragment_show_home");
      if ((localObject != null) && ((VideosFragment)((Fragment)localObject).getChildFragmentManager().findFragmentByTag("fragment_show_videos") != null))
      {
        localObject = ((VideoEndpointResponse)paramResponseModel).getItemList();
        if ((localObject != null) && (((ArrayList)localObject).size() > 0))
        {
          VideoListFragment.e();
          new StringBuilder("videoList clip response size :").append(((ArrayList)localObject).size());
          paramResponseModel = new VideoData[((ArrayList)localObject).size()];
          localObject = ((ArrayList)localObject).iterator();
          int i = 0;
          while (((Iterator)localObject).hasNext())
          {
            paramResponseModel[i] = ((VideoData)((Iterator)localObject).next());
            i += 1;
          }
          if ((VideoListFragment.d(a) == null) || (VideoListFragment.d(a).length <= 0)) {
            break label222;
          }
          VideoListFragment.a(a, VideoListFragment.a(VideoListFragment.d(a), paramResponseModel));
        }
      }
    }
    for (;;)
    {
      a.d();
      a.a();
      return;
      label222:
      VideoListFragment.a(a, paramResponseModel);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideoListFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */