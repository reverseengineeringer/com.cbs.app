package com.cbs.app.inappbilling.IABUtils;

import android.os.Handler;
import java.util.List;

final class IabHelper$2
  implements Runnable
{
  IabHelper$2(IabHelper paramIabHelper, boolean paramBoolean, List paramList, IabHelper.QueryInventoryFinishedListener paramQueryInventoryFinishedListener, Handler paramHandler) {}
  
  public final void run()
  {
    final IabResult localIabResult1 = new IabResult(0, "Inventory refresh successful.");
    final Object localObject = null;
    try
    {
      Inventory localInventory = e.a(a, b);
      localObject = localInventory;
    }
    catch (IabException localIabException)
    {
      for (;;)
      {
        IabResult localIabResult2 = localIabException.getResult();
      }
    }
    e.b();
    if ((!e.d) && (c != null)) {
      d.post(new Runnable()
      {
        public final void run()
        {
          c.a(localIabResult1, localObject);
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABUtils.IabHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */