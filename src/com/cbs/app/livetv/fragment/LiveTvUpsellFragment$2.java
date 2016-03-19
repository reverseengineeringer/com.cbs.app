package com.cbs.app.livetv.fragment;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.List;

final class LiveTvUpsellFragment$2
  implements ResponseModelListener
{
  LiveTvUpsellFragment$2(LiveTvUpsellFragment paramLiveTvUpsellFragment) {}
  
  public final void a() {}
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!a.isAdded()) {}
    do
    {
      do
      {
        return;
      } while (!(paramResponseModel instanceof VideoEndpointResponse));
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
    } while ((paramResponseModel == null) || (paramResponseModel.size() <= 0));
    VideoUtil.a(a.getActivity(), (VideoData)paramResponseModel.get(0));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvUpsellFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */