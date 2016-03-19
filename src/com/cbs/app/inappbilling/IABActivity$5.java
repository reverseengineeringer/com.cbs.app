package com.cbs.app.inappbilling;

import android.widget.Toast;
import com.cbs.app.inappbilling.IABUtils.IabHelper;
import com.cbs.app.inappbilling.IABUtils.IabHelper.OnIabSetupFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabResult;

final class IABActivity$5
  implements IabHelper.OnIabSetupFinishedListener
{
  IABActivity$5(IABActivity paramIABActivity) {}
  
  public final void a(IabResult paramIabResult)
  {
    if (paramIabResult.a())
    {
      Toast.makeText(a, "Cancelled", 1).show();
      if (!a.isFinishing())
      {
        a.setResult(0);
        a.finish();
      }
      return;
    }
    IABActivity.c();
    IABActivity.d(a).a(a, IABActivity.a(a), IABActivity.b(a), IABActivity.c(a));
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */