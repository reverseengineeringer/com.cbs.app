package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

final class AccountUIHelper$23
  implements DialogInterface.OnDismissListener
{
  AccountUIHelper$23(InputMethodManager paramInputMethodManager, Context paramContext) {}
  
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    if ((AccountUIHelper.e() != null) && (AccountUIHelper.e().findViewById(2131689817) != null))
    {
      a.hideSoftInputFromWindow(AccountUIHelper.e().findViewById(2131689817).getWindowToken(), 0);
      AccountUIHelper.e().findViewById(2131689817).clearFocus();
    }
    AccountUIHelper.h(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.23
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */