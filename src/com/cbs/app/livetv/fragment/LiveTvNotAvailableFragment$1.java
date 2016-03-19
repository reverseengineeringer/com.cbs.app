package com.cbs.app.livetv.fragment;

import android.app.Activity;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.livetv.widget.ContentFlipper;
import com.cbs.app.view.model.rest.VideoEndpointResponse;
import java.util.ArrayList;

final class LiveTvNotAvailableFragment$1
  implements ResponseModelListener
{
  LiveTvNotAvailableFragment$1(LiveTvNotAvailableFragment paramLiveTvNotAvailableFragment) {}
  
  public final void a()
  {
    LiveTvNotAvailableFragment.b();
    LiveTvNotAvailableFragment.a(a).setDisplayedChild(2);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    if (!a.isAdded()) {}
    do
    {
      do
      {
        return;
        LiveTvNotAvailableFragment.a(a).setDisplayedChild(1);
        LiveTvNotAvailableFragment.b();
      } while ((LiveTvNotAvailableFragment.b(a) == null) || (LiveTvNotAvailableFragment.b(a).getItemCount() == LiveTvNotAvailableFragment.c()) || (LiveTvNotAvailableFragment.c(a) == null) || (((Activity)LiveTvNotAvailableFragment.c(a)).isFinishing()) || (!(paramResponseModel instanceof VideoEndpointResponse)));
      paramResponseModel = ((VideoEndpointResponse)paramResponseModel).getItemList();
    } while ((paramResponseModel == null) || (paramResponseModel.size() <= 0));
    LiveTvNotAvailableFragment.b();
    new StringBuilder("video size2: ").append(paramResponseModel.size());
    LiveTvNotAvailableFragment.a(a, paramResponseModel);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.livetv.fragment.LiveTvNotAvailableFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */