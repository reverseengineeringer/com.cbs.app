package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class AccountUIHelper$9
  implements DialogInterface.OnCancelListener
{
  AccountUIHelper$9(boolean paramBoolean, Context paramContext) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    AccountUIHelper.d();
    if (a) {
      AccountUIHelper.h(b);
    }
    AccountUIHelper.b = false;
    AccountUIHelper.k();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */