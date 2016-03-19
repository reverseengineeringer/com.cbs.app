package com.cbs.app.view.fragments;

import android.os.Bundle;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.rest.ShowPhotosEndpointResponse;
import java.util.List;

final class ShowFragmentV2$2
  implements ResponseModelListener
{
  ShowFragmentV2$2(ShowFragmentV2 paramShowFragmentV2) {}
  
  private void b()
  {
    synchronized (ShowFragmentV2.i(a))
    {
      ShowFragmentV2.c(a, true);
      if ((ShowFragmentV2.o(a)) && (ShowFragmentV2.j(a)) && (ShowFragmentV2.l(a)) && (ShowFragmentV2.m(a))) {
        ShowFragmentV2.n(a);
      }
      return;
    }
  }
  
  public final void a()
  {
    String str = ShowFragmentV2.h;
    ShowFragmentV2.b(a).putBoolean("hasPhotos", false);
    b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    String str = ShowFragmentV2.h;
    paramResponseModel = ((ShowPhotosEndpointResponse)paramResponseModel).getShowAlbums();
    if ((paramResponseModel != null) && (paramResponseModel.size() > 0)) {
      ShowFragmentV2.b(a).putBoolean("hasPhotos", true);
    }
    for (;;)
    {
      b();
      return;
      ShowFragmentV2.b(a).putBoolean("hasPhotos", false);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */