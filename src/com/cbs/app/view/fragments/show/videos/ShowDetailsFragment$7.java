package com.cbs.app.view.fragments.show.videos;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import java.util.List;

final class ShowDetailsFragment$7
  implements ResponseModelListener
{
  ShowDetailsFragment$7(ShowDetailsFragment paramShowDetailsFragment) {}
  
  public final void a()
  {
    ShowDetailsFragment.b();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    ShowDetailsFragment.b();
    if ((paramResponseModel instanceof UpsellEndpointResponse))
    {
      paramResponseModel = ((UpsellEndpointResponse)paramResponseModel).getUpsellInfo();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        paramResponseModel = (UpsellInfo)paramResponseModel.get(0);
        a.a(paramResponseModel);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.show.videos.ShowDetailsFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */