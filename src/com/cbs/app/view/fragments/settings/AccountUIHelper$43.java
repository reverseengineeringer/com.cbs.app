package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnShowListener;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;

final class AccountUIHelper$43
  implements DialogInterface.OnShowListener
{
  AccountUIHelper$43(InputMethodManager paramInputMethodManager, View.OnClickListener paramOnClickListener) {}
  
  public final void onShow(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = (EditText)AccountUIHelper.e().findViewById(2131689817);
    a.showSoftInput(paramDialogInterface, 1);
    paramDialogInterface.requestFocus();
    paramDialogInterface = AccountUIHelper.e().getButton(-1);
    if (paramDialogInterface != null) {
      paramDialogInterface.setOnClickListener(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.43
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */