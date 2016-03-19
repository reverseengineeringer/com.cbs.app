package com.cbs.app.inappbilling;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.cbs.app.analytics.Action;
import com.cbs.app.analytics.AnalyticsManager;
import com.cbs.app.androiddata.ResponseModel;
import com.cbs.app.androiddata.ResponseModelListener;
import com.cbs.app.inappbilling.IABUtils.Purchase;
import com.cbs.app.view.UnableToConnectDialogHelper;
import com.cbs.app.view.fragments.settings.AccountUIHelper;
import com.cbs.app.view.fragments.settings.DoneListener;
import com.cbs.app.view.model.rest.PlayBillingResponse;
import java.util.HashMap;

final class IABActivity$7
  implements ResponseModelListener
{
  IABActivity$7(IABActivity paramIABActivity, Purchase paramPurchase) {}
  
  public final void a()
  {
    IABActivity.c();
    UnableToConnectDialogHelper.a(b, "Retry", b.b, "Cancel", b.a);
    IABActivity.a(b, false);
  }
  
  public final void a(ResponseModel paramResponseModel)
  {
    paramResponseModel = (PlayBillingResponse)paramResponseModel;
    if (paramResponseModel.isSuccess())
    {
      IABActivity.c();
      IABActivity.a(b, true);
      AccountUIHelper.a(b, true, new DoneListener()
      {
        public final void a(String paramAnonymousString)
        {
          IABActivity.c();
          Intent localIntent = new Intent();
          Bundle localBundle = new Bundle();
          localBundle.putString("sku", paramAnonymousString);
          localIntent.putExtras(localBundle);
          b.setResult(-1, localIntent);
          b.finish();
        }
      }, null, null);
      paramResponseModel = Action.ck;
      HashMap localHashMap = new HashMap();
      localHashMap.put("events", "event19");
      localHashMap.put("evar_56", a.getOrderId());
      localHashMap.put("orderId", a.getOrderId());
      AnalyticsManager.a(b, paramResponseModel, localHashMap);
      return;
    }
    IABActivity.a(b, false);
    paramResponseModel = paramResponseModel.getMessage();
    Log.e(IABActivity.c(), "play billing endpoint fail: " + paramResponseModel);
    UnableToConnectDialogHelper.a(b, "Retry", b.b, "Cancel", b.a);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */