package com.cbs.app.view.fragments.show.videos;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.Util;
import java.util.ArrayList;
import java.util.List;

final class VideosFragment$4
  implements ResponseModelListener
{
  VideosFragment$4(VideosFragment paramVideosFragment) {}
  
  public final void a()
  {
    VideosFragment.j();
    a.d();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    int i = 0;
    VideosFragment.j();
    int j;
    if ((paramResponseModel instanceof VideoEndpointResponse))
    {
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
      if ((paramResponseModel == null) || (paramResponseModel.size() <= 0)) {
        break label151;
      }
      new StringBuilder("videodata sizeM: ").append(paramResponseModel.size());
      paramResponseModel = (VideoData)paramResponseModel.get(0);
      j = paramResponseModel.getSeasonNum();
      if (!paramResponseModel.getFullEpisode()) {
        break label125;
      }
      j = VideosFragment.H(a).indexOf(Integer.valueOf(j));
      VideosFragment.j();
      VideosFragment localVideosFragment = a;
      if (j >= 0) {
        break label120;
      }
      localVideosFragment.setSelection(i);
    }
    for (;;)
    {
      a.a(paramResponseModel);
      return;
      label120:
      i = j;
      break;
      label125:
      a.setSelection(VideosFragment.H(a).indexOf(Integer.valueOf(1111)));
    }
    label151:
    Util.a(VideosFragment.I(a), a.getApplicationContext());
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.VideosFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */