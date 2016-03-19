package com.cbs.app.view.fragments.settings;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;

final class AccountUIHelper$3
  implements View.OnClickListener
{
  AccountUIHelper$3(EditText paramEditText1, EditText paramEditText2, Context paramContext, String paramString) {}
  
  public final void onClick(View paramView)
  {
    AccountUIHelper.h().setEnabled(false);
    AccountUIHelper.h().setClickable(false);
    if (a != null) {}
    for (paramView = a.getText().toString();; paramView = null)
    {
      b.setContentDescription("password field");
      String str = b.getText().toString();
      if ((paramView != null) && (!paramView.equals("")) && (!str.equals("")))
      {
        ((InputMethodManager)c.getSystemService("input_method")).hideSoftInputFromWindow(b.getWindowToken(), 0);
        AccountUIHelper.c(c, paramView, str, d);
        return;
      }
      AccountUIHelper.b(c, AccountUIHelper.i(), "You must provide an email address and a password.");
      AccountUIHelper.a(AccountUIHelper.g(), "You must provide an email address and a password.");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */