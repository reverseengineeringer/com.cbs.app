package com.cbs.app.view.fragments.settings;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.view.Window;

final class AccountUIHelper$2
  implements DialogInterface.OnDismissListener
{
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    ((Dialog)paramDialogInterface).getWindow().setSoftInputMode(48);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */