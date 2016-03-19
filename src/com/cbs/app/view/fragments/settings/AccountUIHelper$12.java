package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

final class AccountUIHelper$12
  implements DialogInterface.OnCancelListener
{
  AccountUIHelper$12(InputMethodManager paramInputMethodManager, Context paramContext) {}
  
  public final void onCancel(DialogInterface paramDialogInterface)
  {
    a.toggleSoftInput(1, 0);
    if ((AccountUIHelper.e() != null) && (AccountUIHelper.e().findViewById(2131689817) != null)) {
      AccountUIHelper.e().findViewById(2131689817).clearFocus();
    }
    AccountUIHelper.h(b);
    AccountUIHelper.b();
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */