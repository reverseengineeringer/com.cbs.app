package com.cbs.app.view.fragments.settings;

import android.app.AlertDialog;
import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

final class AccountUIHelper$34
  implements View.OnClickListener
{
  AccountUIHelper$34(Context paramContext, InputMethodManager paramInputMethodManager) {}
  
  public final void onClick(View paramView)
  {
    paramView = null;
    EditText localEditText = (EditText)AccountUIHelper.e().findViewById(2131689817);
    if (localEditText.getText() != null) {
      paramView = localEditText.getText().toString();
    }
    if ((AccountUIHelper.a(paramView)) || ((paramView != null) && (!AccountUIHelper.b(paramView)))) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        AccountUIHelper.a(AccountUIHelper.e(), "You must provide a valid email.");
        return;
      }
      AccountUIHelper.a(a, paramView);
      b.hideSoftInputFromWindow(localEditText.getWindowToken(), 0);
      AccountUIHelper.e().findViewById(2131689817).clearFocus();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.34
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */