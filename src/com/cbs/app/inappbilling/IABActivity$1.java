package com.cbs.app.inappbilling;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class IABActivity$1
  implements DialogInterface.OnClickListener
{
  IABActivity$1(IABActivity paramIABActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!a.isFinishing())
    {
      a.setResult(0);
      a.finish();
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.inappbilling.IABActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */