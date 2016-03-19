package com.cbs.app.view.fragments;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.TonightEndpointResponse;
import com.cbs.app.view.model.rest.TonightResponse;

final class ScheduleFragment$2
  implements ResponseModelListener
{
  ScheduleFragment$2(ScheduleFragment paramScheduleFragment) {}
  
  public final void a()
  {
    String str = ScheduleFragment.h;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    String str = ScheduleFragment.h;
    if ((paramResponseModel != null) && ((paramResponseModel instanceof TonightEndpointResponse)))
    {
      paramResponseModel = ((TonightEndpointResponse)paramResponseModel).getTonightResponse();
      if (paramResponseModel != null) {
        ScheduleFragment.a(paramResponseModel.getTonightEpisodes());
      }
      a.j = true;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ScheduleFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */