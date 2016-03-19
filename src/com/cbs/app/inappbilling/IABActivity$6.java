package com.cbs.app.inappbilling;

import android.util.Log;
import com.cbs.app.inappbilling.IABUtils.IabHelper.QueryInventoryFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabResult;
import com.cbs.app.inappbilling.IABUtils.Inventory;
import com.cbs.app.inappbilling.IABUtils.Purchase;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TreeMap;

final class IABActivity$6
  implements IabHelper.QueryInventoryFinishedListener
{
  IABActivity$6(IABActivity paramIABActivity) {}
  
  public final void a(IabResult paramIabResult, Inventory paramInventory)
  {
    if (paramIabResult.a())
    {
      Log.e(IABActivity.c(), "failed inventory check response:  " + paramIabResult.getMessage());
      IABActivity.a(a, false);
      if (!a.isFinishing())
      {
        a.setResult(0);
        a.finish();
      }
      return;
    }
    paramInventory = paramInventory.b("subs");
    IABActivity.c();
    new StringBuilder("purchases size: ").append(paramInventory.size());
    paramIabResult = new TreeMap();
    paramInventory = paramInventory.iterator();
    while (paramInventory.hasNext())
    {
      Purchase localPurchase = (Purchase)paramInventory.next();
      if (a) {
        paramIabResult.put(Long.valueOf(g), localPurchase);
      }
    }
    IABActivity.c();
    new StringBuilder("total valid subscriptions found: ").append(paramIabResult.size());
    IABActivity.a(a, paramIabResult);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */