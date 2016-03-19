package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

final class AccountUIHelper$1
  implements DialogInterface.OnClickListener
{
  AccountUIHelper$1(InputMethodManager paramInputMethodManager, Context paramContext) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AccountUIHelper.d();
    a.hideSoftInputFromWindow(AccountUIHelper.e().findViewById(2131689817).getWindowToken(), 0);
    AccountUIHelper.e().findViewById(2131689817).clearFocus();
    paramDialogInterface.dismiss();
    AccountUIHelper.h(b);
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */