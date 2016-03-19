package com.cbs.app.inappbilling;

import android.util.Log;
import android.widget.Toast;
import com.cbs.app.inappbilling.IABUtils.IabHelper.OnIabPurchaseFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabResult;
import com.cbs.app.inappbilling.IABUtils.Purchase;

final class IABActivity$3
  implements IabHelper.OnIabPurchaseFinishedListener
{
  IABActivity$3(IABActivity paramIABActivity) {}
  
  public final void a(IabResult paramIabResult, Purchase paramPurchase)
  {
    if (paramPurchase != null)
    {
      new StringBuilder("Purchase token: ").append(paramPurchase.getToken()).append("\nSubscriptionId (SKU): ").append(paramPurchase.getSku()).append("\nPackage name: ").append(paramPurchase.getPackageName()).append("\nPayload is: ").append(paramPurchase.getDeveloperPayload()).append("\nOrderId is: ").append(paramPurchase.getOrderId());
      IABActivity.c();
      IABActivity.a(a, true);
      IABActivity.a(a, paramPurchase);
    }
    do
    {
      return;
      paramPurchase = paramIabResult.getMessage();
      if ((paramIabResult.getResponse() != 64531) || (a.isFinishing())) {
        break;
      }
      Toast.makeText(a, "Cancelled", 1).show();
    } while (a.isFinishing());
    a.setResult(0);
    a.finish();
    return;
    IABActivity.a(a, paramPurchase, a.getString(2131231050));
    IABActivity.a(a, false);
    Log.e(IABActivity.c(), "purchase failed, with result code: " + paramPurchase);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */