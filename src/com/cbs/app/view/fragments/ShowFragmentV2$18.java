package com.cbs.app.view.fragments;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.ShowSeasonAvailabilityResponse;

final class ShowFragmentV2$18
  implements ResponseModelListener
{
  ShowFragmentV2$18(ShowFragmentV2 paramShowFragmentV2) {}
  
  private void b()
  {
    synchronized (ShowFragmentV2.i(a))
    {
      ShowFragmentV2.a(a, true);
      if ((ShowFragmentV2.j(a)) && (ShowFragmentV2.k(a)) && (ShowFragmentV2.l(a)) && (ShowFragmentV2.m(a))) {
        ShowFragmentV2.n(a);
      }
      return;
    }
  }
  
  public final void a()
  {
    String str = ShowFragmentV2.h;
    b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    String str = ShowFragmentV2.h;
    paramResponseModel = (ShowSeasonAvailabilityResponse)paramResponseModel;
    a.a(paramResponseModel);
    b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */