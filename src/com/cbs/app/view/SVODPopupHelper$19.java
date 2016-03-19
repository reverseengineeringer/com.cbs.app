package com.cbs.app.view;

import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.view.model.UpsellInfo;
import com.cbs.app.view.model.rest.UpsellEndpointResponse;
import com.cbs.app.view.utils.Preferences;
import com.cbs.app.view.utils.Util;
import java.util.List;

final class SVODPopupHelper$19
  implements ResponseModelListener
{
  public final void a()
  {
    SVODPopupHelper.d();
    int i = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_counter", 0);
    Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_counter", i + 1);
    if (SVODPopupHelper.h()) {
      SVODPopupHelper.b();
    }
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    SVODPopupHelper.d();
    String str2 = "";
    String str1 = str2;
    int i;
    if ((paramResponseModel instanceof UpsellEndpointResponse))
    {
      paramResponseModel = ((UpsellEndpointResponse)paramResponseModel).getUpsellInfo();
      str1 = str2;
      if (paramResponseModel != null)
      {
        str1 = str2;
        if (paramResponseModel.size() > 0)
        {
          paramResponseModel = (UpsellInfo)paramResponseModel.get(0);
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text1", paramResponseModel.getUpsellMessage());
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text2", paramResponseModel.getUpsellMessage2());
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_text3", paramResponseModel.getUpsellMessage3());
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_call_to_action", paramResponseModel.getCallToAction());
          if (paramResponseModel.getProductID() != null) {
            Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_product_id", paramResponseModel.getProductID());
          }
          str1 = Util.k(SVODPopupHelper.e(), paramResponseModel.getCallToActionURL());
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_call_to_action_url", str1);
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_content_id", paramResponseModel.getContentId());
          str1 = paramResponseModel.getContentId();
          if (str1 != null) {
            SVODPopupHelper.d();
          }
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_background_image", paramResponseModel.getUpsellImagePath());
          j = (int)paramResponseModel.getDisplayFrequency();
          i = j;
          if (j == 0) {
            i = 5;
          }
          Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_frequency", i);
        }
      }
    }
    int j = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_frequency", 0);
    if (SVODPopupHelper.f())
    {
      i = 0;
      SVODPopupHelper.d();
      new StringBuilder("checkToShowLaunchUpsell counter2: ").append(i).append(" frequency: ").append(j);
      if ((!SVODPopupHelper.f()) && ((j == 0) || (i % j != 0))) {
        break label316;
      }
      SVODPopupHelper.a = true;
      SVODPopupHelper.a(SVODPopupHelper.e(), SVODPopupHelper.g(), str1);
    }
    for (;;)
    {
      SVODPopupHelper.a(false);
      Preferences.a(SVODPopupHelper.e(), "svod_launch_upsell_counter", i + 1);
      return;
      i = Preferences.b(SVODPopupHelper.e(), "svod_launch_upsell_counter", 0);
      break;
      label316:
      if (SVODPopupHelper.h()) {
        SVODPopupHelper.b();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.SVODPopupHelper.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */