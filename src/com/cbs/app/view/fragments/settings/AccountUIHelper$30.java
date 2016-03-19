package com.cbs.app.view.fragments.settings;

import android.support.design.widget.TextInputLayout;
import android.text.Editable;
import android.text.TextWatcher;

final class AccountUIHelper$30
  implements TextWatcher
{
  public final void afterTextChanged(Editable paramEditable) {}
  
  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    AccountUIHelper.n().setErrorEnabled(false);
  }
  
  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
}

/* Location:
 * Qualified Name:     com.cbs.app.view.fragments.settings.AccountUIHelper.30
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */