package com.cbs.app.inappbilling;

import android.content.Intent;
import android.util.Log;
import android.widget.Toast;
import com.cbs.app.inappbilling.IABUtils.IabHelper.OnIabSetupFinishedListener;
import com.cbs.app.inappbilling.IABUtils.IabResult;

final class IABActivity$4
  implements IabHelper.OnIabSetupFinishedListener
{
  IABActivity$4(IABActivity paramIABActivity) {}
  
  public final void a(IabResult paramIabResult)
  {
    if (paramIabResult.a())
    {
      Log.e(IABActivity.c(), "IAB startSetup failed code: " + paramIabResult.getResponse());
      if (paramIabResult.getResponse() == 3)
      {
        IABActivity.a(a, true);
        paramIabResult = new Intent("android.settings.ADD_ACCOUNT_SETTINGS");
        paramIabResult.putExtra("account_types", new String[] { "com.google" });
        a.startActivityForResult(paramIabResult, 5);
      }
      do
      {
        return;
        Toast.makeText(a, "Connection to in App purchasing failed\n" + paramIabResult.getMessage(), 1).show();
      } while (a.isFinishing());
      a.setResult(0);
      a.finish();
      return;
    }
    IABActivity.c();
    IABActivity.a(a, true);
    a.a();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */