package com.cbs.app.view;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.List;

final class SVODPopupHelper$1
  implements ResponseModelListener
{
  public final void a()
  {
    SVODPopupHelper.d();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    SVODPopupHelper.d();
    if ((paramResponseModel != null) && ((paramResponseModel instanceof VideoEndpointResponse)))
    {
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        paramResponseModel = (VideoData)paramResponseModel.get(0);
        VideoUtil.a(SVODPopupHelper.e(), paramResponseModel);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */