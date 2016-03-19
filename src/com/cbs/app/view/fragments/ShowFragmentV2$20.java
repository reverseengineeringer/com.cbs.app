package com.cbs.app.view.fragments;

import android.os.Bundle;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import java.util.ArrayList;

final class ShowFragmentV2$20
  implements ResponseModelListener
{
  ShowFragmentV2$20(ShowFragmentV2 paramShowFragmentV2) {}
  
  private void b()
  {
    synchronized (ShowFragmentV2.i(a))
    {
      ShowFragmentV2.p(a);
      if ((ShowFragmentV2.o(a)) && (ShowFragmentV2.k(a)) && (ShowFragmentV2.j(a)) && (ShowFragmentV2.l(a))) {
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
    paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
    if ((paramResponseModel != null) && (paramResponseModel.size() > 0)) {
      ShowFragmentV2.b(a).putBoolean("hasVideos", true);
    }
    b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.20
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */