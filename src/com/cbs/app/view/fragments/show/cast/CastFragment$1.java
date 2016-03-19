package com.cbs.app.view.fragments.show.cast;

import android.util.Log;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.DeviceCastEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastResponse;

final class CastFragment$1
  implements ResponseModelListener
{
  CastFragment$1(CastFragment paramCastFragment) {}
  
  public final void a()
  {
    Log.e(CastFragment.g(), "fail");
    a.f();
    a.h = true;
    Log.e(CastFragment.g(), "after");
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    Log.e(CastFragment.g(), "castListener success");
    if ((paramResponseModel instanceof DeviceCastEndpointResponse))
    {
      paramResponseModel = (DeviceCastEndpointResponse)paramResponseModel;
      DeviceCastResponse localDeviceCastResponse = paramResponseModel.getCastResponse();
      if (localDeviceCastResponse != null) {
        CastFragment.a(a, localDeviceCastResponse.getCastList());
      }
      paramResponseModel = paramResponseModel.getHostResponse();
      if (paramResponseModel != null) {
        CastFragment.b(a, paramResponseModel.getCastList());
      }
    }
    a.h = true;
    CastFragment.a(a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.cast.CastFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */