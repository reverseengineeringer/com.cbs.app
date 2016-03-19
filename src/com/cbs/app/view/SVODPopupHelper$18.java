package com.cbs.app.view;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.util.List;

final class SVODPopupHelper$18
  implements ResponseModelListener
{
  public final void a()
  {
    SVODPopupHelper.d();
    SVODPopupHelper.d = true;
    SVODPopupHelper.a();
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    SVODPopupHelper.d();
    if ((paramResponseModel instanceof UpsellEndpointResponse))
    {
      paramResponseModel = ((UpsellEndpointResponse)paramResponseModel).getUpsellInfo();
      if ((paramResponseModel != null) && (paramResponseModel.size() > 0))
      {
        SVODPopupHelper.d();
        paramResponseModel = (UpsellInfo)paramResponseModel.get(0);
        Preferences.a(SVODPopupHelper.e(), "title", paramResponseModel.getTitle());
        SVODPopupHelper.d();
        new StringBuilder("title:").append(paramResponseModel.getTitle());
        Preferences.a(SVODPopupHelper.e(), "aa_upsell_text1", paramResponseModel.getUpsellMessage());
        SVODPopupHelper.d();
        new StringBuilder("msg1:").append(paramResponseModel.getUpsellMessage());
        Preferences.a(SVODPopupHelper.e(), "aa_upsell_text2", paramResponseModel.getUpsellMessage2());
        SVODPopupHelper.d();
        new StringBuilder("msg2:").append(paramResponseModel.getUpsellMessage2());
        Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action", paramResponseModel.getCallToAction());
        SVODPopupHelper.d();
        new StringBuilder("action text:").append(paramResponseModel.getCallToAction());
        if (paramResponseModel.getProductID() != null) {
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramResponseModel.getProductID());
        }
        paramResponseModel = Util.k(SVODPopupHelper.e(), paramResponseModel.getCallToActionURL());
        Preferences.a(SVODPopupHelper.e(), "sign_up_call_to_action_url", paramResponseModel);
      }
      SVODPopupHelper.d = true;
      SVODPopupHelper.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.18
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */