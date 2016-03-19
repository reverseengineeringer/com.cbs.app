package com.cbs.app.view.fragments;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import java.util.List;

final class ShowFragmentV2$1
  implements ResponseModelListener
{
  ShowFragmentV2$1(ShowFragmentV2 paramShowFragmentV2) {}
  
  public final void a()
  {
    String str = ShowFragmentV2.h;
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    Object localObject = ShowFragmentV2.h;
    if ((paramResponseModel instanceof UpsellEndpointResponse))
    {
      paramResponseModel = ((UpsellEndpointResponse)paramResponseModel).getUpsellInfo();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        localObject = (UpsellInfo)paramResponseModel.get(0);
        paramResponseModel = ((UpsellInfo)localObject).getCallToAction();
        localObject = ((UpsellInfo)localObject).getProductID();
        if ((paramResponseModel != null) && (localObject != null))
        {
          String str = ShowFragmentV2.h;
          new StringBuilder(" callToAction: ").append(paramResponseModel).append(" aa productId: ").append((String)localObject);
        }
        ShowFragmentV2.a(a);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.ShowFragmentV2.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */