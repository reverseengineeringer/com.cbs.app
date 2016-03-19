package com.cbs.app.view.fragments.mycbs;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.db.MyRecentVideo;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class MyRecentlyWatchedFragment$a
  implements ResponseModelListener
{
  private List<MyRecentVideo> b;
  
  public MyRecentlyWatchedFragment$a(List<MyRecentVideo> paramList)
  {
    List localList;
    b = localList;
  }
  
  public final void a()
  {
    String str = MyRecentlyWatchedFragment.h;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    Object localObject1 = MyRecentlyWatchedFragment.h;
    if ((paramResponseModel instanceof VideoEndpointResponse))
    {
      localObject1 = MyRecentlyWatchedFragment.h;
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
      localObject1 = new ArrayList();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        Object localObject2 = MyRecentlyWatchedFragment.h;
        new StringBuilder("videoList.size:").append(paramResponseModel.size());
        localObject2 = b.iterator();
        for (;;)
        {
          if (!((Iterator)localObject2).hasNext()) {
            break label199;
          }
          MyRecentVideo localMyRecentVideo = (MyRecentVideo)((Iterator)localObject2).next();
          Object localObject3 = paramResponseModel.iterator();
          if (((Iterator)localObject3).hasNext())
          {
            VideoData localVideoData = (VideoData)((Iterator)localObject3).next();
            if (!localVideoData.getCid().equals(localMyRecentVideo.getCid())) {
              break;
            }
            localObject3 = MyRecentlyWatchedFragment.h;
            new StringBuilder("adding: ").append(localVideoData.getCid());
            localObject3 = MyRecentlyWatchedFragment.h;
            new StringBuilder("date viewed: ").append(localMyRecentVideo.getDateViewed());
            ((ArrayList)localObject1).add(localVideoData);
          }
        }
        label199:
        a.i = ((VideoData[])((ArrayList)localObject1).toArray(new VideoData[((ArrayList)localObject1).size()]));
        a.i = VideoUtil.a(a.i);
      }
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.mycbs.MyRecentlyWatchedFragment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */