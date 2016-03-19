package com.cbs.app.view.fragments;

import android.os.Bundle;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.DeviceCastEndpointResponse;
import com.cbs.app.view.model.rest.DeviceCastResponse;
import java.util.List;

final class ShowFragmentV2$3
  implements ResponseModelListener
{
  ShowFragmentV2$3(ShowFragmentV2 paramShowFragmentV2) {}
  
  private void b()
  {
    synchronized (ShowFragmentV2.i(a))
    {
      ShowFragmentV2.d(a, true);
      if ((ShowFragmentV2.o(a)) && (ShowFragmentV2.j(a)) && (ShowFragmentV2.k(a)) && (ShowFragmentV2.m(a))) {
        ShowFragmentV2.n(a);
      }
      return;
    }
  }
  
  public final void a()
  {
    String str = ShowFragmentV2.h;
    ShowFragmentV2.b(a).putBoolean("hasCast", false);
    b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    List localList = null;
    Object localObject = ShowFragmentV2.h;
    localObject = (DeviceCastEndpointResponse)paramResponseModel;
    paramResponseModel = ((DeviceCastEndpointResponse)localObject).getCastResponse();
    if (paramResponseModel != null) {}
    for (paramResponseModel = paramResponseModel.getCastList();; paramResponseModel = null)
    {
      localObject = ((DeviceCastEndpointResponse)localObject).getHostResponse();
      if (localObject != null) {
        localList = ((DeviceCastResponse)localObject).getCastList();
      }
      if (((paramResponseModel != null) && (paramResponseModel.size() > 0)) || ((localList != null) && (localList.size() > 0))) {
        ShowFragmentV2.b(a).putBoolean("hasCast", true);
      }
      for (;;)
      {
        b();
        return;
        ShowFragmentV2.b(a).putBoolean("hasCast", false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */