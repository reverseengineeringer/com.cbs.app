package com.cbs.app.view;

import android.content.Context;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.VideoData;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import com.cbs.app.view.utils.VideoUtil;
import java.util.List;

final class SVODPopupHelper$16
  implements ResponseModelListener
{
  SVODPopupHelper$16(Context paramContext) {}
  
  public final void a() {}
  
  public final void a(ResponseModel paramResponseModel)
  {
    paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
    if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
    {
      paramResponseModel = (VideoData)paramResponseModel.get(0);
      VideoUtil.a(a, paramResponseModel, SVODPopupHelper.n());
      SVODPopupHelper.o();
      SVODPopupHelper.p();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */